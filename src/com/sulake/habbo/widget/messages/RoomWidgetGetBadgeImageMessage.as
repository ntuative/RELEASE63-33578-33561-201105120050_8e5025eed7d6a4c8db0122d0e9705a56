package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_686:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_317:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_686);
         this.var_317 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_317;
      }
   }
}
