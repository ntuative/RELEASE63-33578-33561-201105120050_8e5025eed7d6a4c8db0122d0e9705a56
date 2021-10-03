package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1453:int = 3;
      
      private static const const_1514:int = 2;
      
      private static const const_1513:int = 1;
      
      private static const const_1515:int = 15;
       
      
      private var var_313:Array;
      
      private var var_1266:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_313 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1514)
         {
            this.var_313 = new Array();
            this.var_313.push(const_1513);
            this.var_1266 = const_1515;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1266 > 0)
         {
            --this.var_1266;
         }
         if(this.var_1266 == 0)
         {
            if(this.var_313.length > 0)
            {
               super.setAnimation(this.var_313.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
