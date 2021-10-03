package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_37:String = "HTE_TOOLBAR_CLICK";
      
      public static const const_303:String = "HTE_TOOLBAR_STATE_HOTEL_VIEW";
      
      public static const TOOLBAR_STATE_ROOM_VIEW:String = "HTE_TOOLBAR_STATE_ROOM_VIEW";
       
      
      private var var_1767:String;
      
      private var var_2461:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_1767 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_1767;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_2461 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_2461;
      }
   }
}
