package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_778:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_646:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_778);
         this.var_646 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_646;
      }
   }
}
