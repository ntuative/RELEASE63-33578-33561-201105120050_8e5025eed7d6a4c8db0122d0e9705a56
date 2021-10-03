package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_623:String;
      
      private var var_2680:String;
      
      private var var_936:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_623 = param1;
         this.var_936 = param2;
         this.var_2680 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function get race() : String
      {
         return this.var_2680;
      }
      
      public function get gender() : String
      {
         return this.var_936;
      }
   }
}
