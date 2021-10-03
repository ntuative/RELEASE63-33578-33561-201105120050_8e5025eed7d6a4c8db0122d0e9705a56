package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2001:int;
      
      private var var_2751:int;
      
      private var var_1522:int;
      
      private var var_2329:int;
      
      private var var_123:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2001 = param1.readInteger();
         this.var_2751 = param1.readInteger();
         this.var_1522 = param1.readInteger();
         this.var_2329 = param1.readInteger();
         this.var_123 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2001);
      }
      
      public function get callId() : int
      {
         return this.var_2001;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2751;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1522;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2329;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_123;
      }
   }
}
