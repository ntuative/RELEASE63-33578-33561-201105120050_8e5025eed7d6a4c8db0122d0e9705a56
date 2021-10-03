package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2451:String;
      
      private var var_2324:int;
      
      private var var_2318:int;
      
      private var var_2342:String;
      
      private var var_2806:int;
      
      private var var_1719:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2451 = param1.readString();
         this.var_2324 = param1.readInteger();
         this.var_2318 = param1.readInteger();
         this.var_2342 = param1.readString();
         this.var_2806 = param1.readInteger();
         this.var_1719 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2451;
      }
      
      public function get unitPort() : int
      {
         return this.var_2324;
      }
      
      public function get worldId() : int
      {
         return this.var_2318;
      }
      
      public function get castLibs() : String
      {
         return this.var_2342;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2806;
      }
      
      public function get nodeId() : int
      {
         return this.var_1719;
      }
   }
}
