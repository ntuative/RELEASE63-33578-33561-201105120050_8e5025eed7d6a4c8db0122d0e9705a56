package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1994:int = 0;
      
      private var var_1993:int = 0;
      
      private var var_2865:int = 0;
      
      private var var_2866:Boolean = false;
      
      private var var_2746:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1994 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1993 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2865 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2866 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2746 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1994;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1993;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2865;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2866;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2746;
      }
   }
}
