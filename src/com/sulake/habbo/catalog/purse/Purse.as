package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_219:int = 0;
       
      
      private var var_1653:int = 0;
      
      private var var_1549:Dictionary;
      
      private var var_1994:int = 0;
      
      private var var_1993:int = 0;
      
      private var var_2746:Boolean = false;
      
      private var var_2748:int = 0;
      
      private var var_2747:int = 0;
      
      public function Purse()
      {
         this.var_1549 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1653;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1653 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1994;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1994 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1993;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1993 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1994 > 0 || this.var_1993 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2746;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2746 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2748;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2748 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2747;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2747 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1549;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1549 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1549[param1];
      }
   }
}
