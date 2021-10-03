package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1957:Boolean;
      
      private var var_2694:int;
      
      private var var_2691:String;
      
      private var var_397:int;
      
      private var var_2693:int;
      
      private var var_1829:String;
      
      private var var_2690:String;
      
      private var var_2692:String;
      
      private var var_871:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_871 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1957 = false;
            return;
         }
         this.var_1957 = true;
         this.var_2694 = int(_loc2_);
         this.var_2691 = param1.readString();
         this.var_397 = int(param1.readString());
         this.var_2693 = param1.readInteger();
         this.var_1829 = param1.readString();
         this.var_2690 = param1.readString();
         this.var_2692 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_871.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_871 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2694;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2691;
      }
      
      public function get flatId() : int
      {
         return this.var_397;
      }
      
      public function get eventType() : int
      {
         return this.var_2693;
      }
      
      public function get eventName() : String
      {
         return this.var_1829;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2690;
      }
      
      public function get creationTime() : String
      {
         return this.var_2692;
      }
      
      public function get tags() : Array
      {
         return this.var_871;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1957;
      }
   }
}
