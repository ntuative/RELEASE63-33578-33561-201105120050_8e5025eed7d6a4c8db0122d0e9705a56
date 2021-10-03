package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_289:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2784:int = 0;
      
      private var var_2783:int = 0;
      
      private var var_2786:int = 0;
      
      private var var_2785:Boolean = false;
      
      private var var_2227:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_289,param6,param7);
         this.var_2784 = param1;
         this.var_2783 = param2;
         this.var_2786 = param3;
         this.var_2785 = param4;
         this.var_2227 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2784;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2783;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2786;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2785;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2227;
      }
   }
}
