package com.sulake.habbo.communication
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.connection.IConnectionStateListener;
   import com.sulake.core.communication.enum.ConnectionType;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.habbo.communication.enum.HabboConnectionType;
   import com.sulake.habbo.communication.enum.HabboProtocolType;
   import com.sulake.habbo.communication.messages.outgoing.handshake.DisconnectMessageComposer;
   import com.sulake.habbo.communication.protocol.WedgieProtocol;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.tracking.HabboErrorVariableEnum;
   import com.sulake.iid.IIDCoreCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HabboCommunicationManager extends Component implements IHabboCommunicationManager, IConnectionStateListener
   {
       
      
      private const const_2186:int = 2;
      
      private var var_262:ICoreCommunicationManager;
      
      private var var_145:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_333:int = 0;
      
      private var var_1394:IMessageConfiguration;
      
      private var var_38:String = "";
      
      private var var_375:Array;
      
      private var var_449:int = -1;
      
      private var var_1500:Timer;
      
      private var var_987:int = 1;
      
      private var var_136:String = "";
      
      private var var_2624:Boolean = false;
      
      private var var_2622:Boolean = false;
      
      private var var_2623:Boolean = false;
      
      private var _a4:Array;
      
      public function HabboCommunicationManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1394 = new HabboMessages();
         this.var_375 = [];
         this.var_1500 = new Timer(100,1);
         this._a4 = [65191,65178,65178,65177,65185];
         super(param1,param2,param3);
         lock();
         this.queueInterface(new IIDCoreCommunicationManager(),this.onCoreCommunicationManagerInit);
         this.queueInterface(new IIDHabboConfigurationManager(),this.onHabboConfigurationInit);
         param1.events.addEventListener(Event.UNLOAD,this.unloading);
      }
      
      public function get mode() : int
      {
         return this.var_333;
      }
      
      public function set mode(param1:int) : void
      {
         this.var_333 = param1;
      }
      
      public function get port() : int
      {
         if(this.var_375.length == 0 || this.var_449 < 0 || this.var_449 >= this.var_375.length)
         {
            return 0;
         }
         return this.var_375[this.var_449];
      }
      
      private function unloading(param1:Event) : void
      {
         if(this._connection)
         {
            this._connection.send(new DisconnectMessageComposer());
            this._connection.dispose();
            this._connection = null;
         }
      }
      
      override public function dispose() : void
      {
         if(this._connection)
         {
            this._connection.dispose();
            this._connection = null;
         }
         if(this.var_262)
         {
            this.var_262.release(new IIDCoreCommunicationManager());
            this.var_262 = null;
         }
         if(this.var_145)
         {
            this.var_145.release(new IIDHabboConfigurationManager());
            this.var_145 = null;
         }
         super.dispose();
      }
      
      private function onCoreCommunicationManagerInit(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         Logger.log("Habbo Communication Manager: Core Communication Manager found:: " + [param1,param2]);
         if(param2 != null)
         {
            this.var_262 = param2 as ICoreCommunicationManager;
            this.var_262.connectionStateListener = this;
            this.var_262.registerProtocolType(HabboProtocolType.const_1189,WedgieProtocol);
            this._connection = this.var_262.createConnection(HabboConnectionType.const_242,ConnectionType.const_1269);
            _loc3_ = this.var_262.getProtocolInstanceOfType(HabboProtocolType.const_1189);
            this._connection.registerMessageClasses(this.var_1394);
            this._connection.protocol = _loc3_;
            this._connection.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
            this._connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
            this._connection.addEventListener(Event.CONNECT,this.onConnect);
            this.tryUnlock();
         }
      }
      
      private function onHabboConfigurationInit(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:int = 0;
         if(param2 != null)
         {
            this.var_145 = param2 as IHabboConfigurationManager;
            _loc3_ = [65162,65162,65158,65155];
            _loc4_ = [65234,65174,65168,65175,65165,65229];
            _loc5_ = [65170,65162,65157,65155];
            _loc6_ = [65186,65168,65178,65171,65171];
            _loc8_ = this.var_145.getKey(this.getKey([this._a4,_loc6_,_loc4_,_loc5_],0),null);
            if(_loc8_ == null)
            {
               Core.crash(this.getKey([this._a4,_loc6_,_loc4_,_loc5_],0),Core.const_433);
               return;
            }
            _loc11_ = [];
            _loc12_ = 1;
            while(_loc12_ < 5)
            {
               _loc8_ = _loc8_.substring(0,_loc8_.length - _loc12_);
               switch(_loc12_)
               {
                  case 3:
                     _loc11_.push(_loc4_);
                     break;
                  case 2:
                     _loc11_.push(_loc6_);
                     break;
                  case 4:
                     _loc11_.push(_loc3_);
                     break;
                  case 1:
                     _loc11_.push(this._a4);
                     break;
               }
               _loc12_++;
            }
            _loc7_ = this.var_145.getKey(this.getKey(_loc11_,0),null);
            if(_loc7_ == null)
            {
               Core.crash(this.getKey([this._a4,_loc6_,_loc4_,_loc3_],0),Core.const_433);
               return;
            }
            this.var_375 = [];
            _loc9_ = _loc7_.split(",");
            for each(_loc10_ in _loc9_)
            {
               this.var_375.push(parseInt(_loc10_.replace(" ","")));
            }
            _loc7_ = _loc8_;
            this.var_38 = _loc7_;
            this.var_2622 = true;
            if(this.var_2623)
            {
               this.nextPort();
            }
            this.tryUnlock();
         }
      }
      
      private function getKey(param1:Array, param2:int) : String
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc3_:String = "";
         for each(_loc4_ in param1)
         {
            for each(_loc5_ in _loc4_)
            {
               _loc3_ += String.fromCharCode(65290 - _loc5_ + param2--);
            }
         }
         return _loc3_;
      }
      
      private function tryUnlock() : void
      {
         if(this.var_145 && this.var_262)
         {
            unlock();
         }
      }
      
      public function initConnection(param1:String) : void
      {
         switch(param1)
         {
            case HabboConnectionType.const_242:
               if(this.var_145 == null)
               {
                  Core.crash("Tried to connect to proxy but configuration was null",Core.const_433);
                  return;
               }
               if(this._connection == null)
               {
                  Core.crash("Tried to connect to proxy but connection was null",Core.const_433);
                  return;
               }
               this.var_2623 = true;
               if(this.var_2622)
               {
                  this.nextPort();
               }
               break;
            default:
               Logger.log("Unknown Habbo Connection Type: " + param1);
         }
      }
      
      private function nextPort() : void
      {
         var _loc1_:int = 0;
         if(this._connection.connected)
         {
            Logger.log("Warning: Already connected so will not try to connect again!");
            return;
         }
         ++this.var_449;
         if(this.var_449 >= this.var_375.length)
         {
            ErrorReportStorage.addDebugData("ConnectionRetry","Connection attempt " + this.var_987);
            ++this.var_987;
            _loc1_ = this.const_2186;
            if(this.var_375.length == 1)
            {
               _loc1_++;
            }
            if(this.var_987 > _loc1_)
            {
               if(this.var_2624)
               {
                  return;
               }
               this.var_2624 = true;
               Core.error("Connection failed to host and ports",true,Core.const_433);
               return;
            }
            this.var_449 = 0;
         }
         this._connection.timeout = this.var_987 * 10000;
         this._connection.init(this.var_38 + this.getKey([[65244,65185,65191,65189,65188],[65174,65238,65184],[65171,65172]],0),this.var_375[this.var_449]);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] IO Error: " + param1.text);
         switch(param1.type)
         {
            case IOErrorEvent.IO_ERROR:
               break;
            case IOErrorEvent.DISK_ERROR:
               break;
            case IOErrorEvent.NETWORK_ERROR:
               break;
            case IOErrorEvent.VERIFY_ERROR:
         }
         ErrorReportStorage.addDebugData("Communication IO Error","IOError " + param1.type + " on connect: " + param1.text + ". Port was " + this.var_375[this.var_449]);
         this.tryNextPort();
      }
      
      private function onConnect(param1:Event) : void
      {
         ErrorReportStorage.addDebugData("Connection","Connected with " + this.var_987 + " attempts");
      }
      
      private function tryNextPort() : void
      {
         this.var_1500.addEventListener(TimerEvent.TIMER,this.onTryNextPort);
         this.var_1500.start();
      }
      
      private function onTryNextPort(param1:TimerEvent) : void
      {
         this.var_1500.stop();
         this.nextPort();
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] Security Error: " + param1.text);
         ErrorReportStorage.addDebugData("Communication Security Error","SecurityError on connect: " + param1.text + ". Port was " + this.var_375[this.var_449]);
         this.tryNextPort();
      }
      
      public function getHabboMainConnection(param1:Function) : IConnection
      {
         return !!this.var_262 ? this.var_262.queueConnection(HabboConnectionType.const_242,param1) : null;
      }
      
      public function addHabboConnectionMessageEvent(param1:IMessageEvent) : void
      {
         if(this.var_262)
         {
            this.var_262.addConnectionMessageEvent(HabboConnectionType.const_242,param1);
         }
      }
      
      public function habboWebLogin(param1:String, param2:String) : IHabboWebLogin
      {
         var _loc3_:String = "";
         _loc3_ = this.var_145.getKey("url.prefix",_loc3_);
         _loc3_ = _loc3_.replace("http://","");
         _loc3_ = _loc3_.replace("https://","");
         return new HabboWebLogin(param1,param2,_loc3_);
      }
      
      public function connectionInit(param1:String, param2:int) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1683,param1);
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1790,String(param2));
      }
      
      public function messageReceived(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1651,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1810,param1 + " " + param2);
         if(this.var_136.length > 0)
         {
            this.var_136 += ",R:" + param1;
         }
         else
         {
            this.var_136 = "R:" + param1;
         }
         if(this.var_136.length > 150)
         {
            this.var_136 = this.var_136.substring(this.var_136.length - 150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",this.var_136);
      }
      
      public function messageSent(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1665,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1814,param1 + " " + param2);
         if(this.var_136.length > 0)
         {
            this.var_136 += ",S:" + param1;
         }
         else
         {
            this.var_136 = "S:" + param1;
         }
         if(this.var_136.length > 150)
         {
            this.var_136 = this.var_136.substring(this.var_136.length - 150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",this.var_136);
      }
   }
}
