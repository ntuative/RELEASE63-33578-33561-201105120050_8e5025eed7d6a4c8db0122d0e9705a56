package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1663:Boolean;
      
      private var var_2203:int;
      
      private var var_472:Boolean;
      
      private var var_1102:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get privateRoom() : Boolean
      {
         return this.var_1663;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2203;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1102;
      }
      
      public function get owner() : Boolean
      {
         return this.var_472;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1102 != null)
         {
            this.var_1102.dispose();
            this.var_1102 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1663 = param1.readBoolean();
         if(this.var_1663)
         {
            this.var_2203 = param1.readInteger();
            this.var_472 = param1.readBoolean();
         }
         else
         {
            this.var_1102 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
