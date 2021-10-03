package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_572:uint = 0;
      
      public static const const_1570:uint = 1;
      
      public static const const_2066:int = 0;
      
      public static const const_2070:int = 1;
      
      public static const const_2004:int = 2;
      
      public static const const_1986:int = 3;
      
      public static const const_1682:int = 4;
      
      public static const const_392:int = 5;
      
      public static var var_403:IEventQueue;
      
      private static var var_590:IEventProcessor;
      
      private static var var_1698:uint = const_572;
      
      private static var stage:Stage;
      
      private static var var_162:IWindowRenderer;
       
      
      private var var_2276:EventProcessorState;
      
      private var var_2277:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_128:DisplayObjectContainer;
      
      protected var var_2970:Boolean = true;
      
      protected var var_1333:Error;
      
      protected var var_2137:int = -1;
      
      protected var var_1334:IInternalWindowServices;
      
      protected var var_1611:IWindowParser;
      
      protected var var_2909:IWindowFactory;
      
      protected var var_82:IDesktopWindow;
      
      protected var var_1610:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_565:Boolean = false;
      
      private var var_2278:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_162 = param2;
         this._localization = param4;
         this.var_128 = param5;
         this.var_1334 = new ServiceManager(this,param5);
         this.var_2909 = param3;
         this.var_1611 = new WindowParser(this);
         this.var_2277 = param7;
         if(!stage)
         {
            if(this.var_128 is Stage)
            {
               stage = this.var_128 as Stage;
            }
            else if(this.var_128.stage)
            {
               stage = this.var_128.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_82 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_82.limits.maxWidth = param6.width;
         this.var_82.limits.maxHeight = param6.height;
         this.var_128.addChild(this.var_82.getDisplayObject());
         this.var_128.doubleClickEnabled = true;
         this.var_128.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2276 = new EventProcessorState(var_162,this.var_82,this.var_82,null,this.var_2277);
         inputMode = const_572;
         this.var_1610 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1698;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_403)
         {
            if(var_403 is IDisposable)
            {
               IDisposable(var_403).dispose();
            }
         }
         if(var_590)
         {
            if(var_590 is IDisposable)
            {
               IDisposable(var_590).dispose();
            }
         }
         switch(value)
         {
            case const_572:
               var_403 = new MouseEventQueue(stage);
               var_590 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1570:
               var_403 = new TabletEventQueue(stage);
               var_590 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_572;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_128.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_128.removeChild(IGraphicContextHost(this.var_82).getGraphicContext(true) as DisplayObject);
            this.var_82.destroy();
            this.var_82 = null;
            this.var_1610.destroy();
            this.var_1610 = null;
            if(this.var_1334 is IDisposable)
            {
               IDisposable(this.var_1334).dispose();
            }
            this.var_1334 = null;
            this.var_1611.dispose();
            this.var_1611 = null;
            var_162 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1333;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2137;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1333 = param2;
         this.var_2137 = param1;
         if(this.var_2970)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1333 = null;
         this.var_2137 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1334;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1611;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2909;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_82;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_82.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1682,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1610;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_82,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_82)
         {
            this.var_82 = null;
         }
         if(param1.state != WindowState.const_581)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_162.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_565 = true;
         if(this.var_1333)
         {
            throw this.var_1333;
         }
         var_590.process(this.var_2276,var_403);
         this.var_565 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2278 = true;
         var_162.update(param1);
         this.var_2278 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_82 != null && !this.var_82.disposed)
         {
            if(this.var_128 is Stage)
            {
               this.var_82.limits.maxWidth = Stage(this.var_128).stageWidth;
               this.var_82.limits.maxHeight = Stage(this.var_128).stageHeight;
               this.var_82.width = Stage(this.var_128).stageWidth;
               this.var_82.height = Stage(this.var_128).stageHeight;
            }
            else
            {
               this.var_82.limits.maxWidth = this.var_128.width;
               this.var_82.limits.maxHeight = this.var_128.height;
               this.var_82.width = this.var_128.width;
               this.var_82.height = this.var_128.height;
            }
         }
      }
   }
}
