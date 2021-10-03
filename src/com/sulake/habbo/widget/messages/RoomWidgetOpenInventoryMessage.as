package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_900:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1237:String = "inventory_effects";
      
      public static const const_1268:String = "inventory_badges";
      
      public static const const_1671:String = "inventory_clothes";
      
      public static const const_1712:String = "inventory_furniture";
       
      
      private var var_2352:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_900);
         this.var_2352 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2352;
      }
   }
}
