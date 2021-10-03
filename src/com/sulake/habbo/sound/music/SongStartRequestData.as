package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1784:int;
      
      private var var_1975:Number;
      
      private var var_2726:Number;
      
      private var var_2727:int;
      
      private var var_2728:Number;
      
      private var var_2729:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1784 = param1;
         this.var_1975 = param2;
         this.var_2726 = param3;
         this.var_2728 = param4;
         this.var_2729 = param5;
         this.var_2727 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1784;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1975 < 0)
         {
            return 0;
         }
         return this.var_1975 + (getTimer() - this.var_2727) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2726;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2728;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2729;
      }
   }
}
