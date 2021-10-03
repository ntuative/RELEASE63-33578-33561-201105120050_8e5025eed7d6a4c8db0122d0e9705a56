package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_120:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1804:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_120);
         this.var_1804 = param1;
      }
      
      public function get vote() : int
      {
         return this.var_1804;
      }
   }
}
