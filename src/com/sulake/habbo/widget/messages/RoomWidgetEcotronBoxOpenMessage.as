package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenMessage extends RoomWidgetMessage
   {
      
      public static const const_915:String = "RWEBOM_OPEN_ECOTRONBOX";
       
      
      private var var_195:int;
      
      public function RoomWidgetEcotronBoxOpenMessage(param1:String, param2:int)
      {
         super(param1);
         this.var_195 = param2;
      }
      
      public function get objectId() : int
      {
         return this.var_195;
      }
   }
}
