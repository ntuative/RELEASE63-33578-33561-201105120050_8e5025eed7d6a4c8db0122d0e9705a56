package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2640:Number = 0.0;
      
      private var var_2641:Number = 0.0;
      
      private var var_2687:Number = 0.0;
      
      private var var_2688:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2640 = param1;
         this.var_2641 = param2;
         this.var_2687 = param3;
         this.var_2688 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2640;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2641;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2687;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2688;
      }
   }
}
