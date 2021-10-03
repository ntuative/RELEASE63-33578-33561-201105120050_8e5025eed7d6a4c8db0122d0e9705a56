package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureCounterClockVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1494:String = "seconds_sprite";
      
      private static const const_1493:String = "ten_seconds_sprite";
      
      private static const const_1495:String = "minutes_sprite";
      
      private static const const_1492:String = "ten_minutes_sprite";
       
      
      public function FurnitureCounterClockVisualization()
      {
         super();
      }
      
      override public function get animationId() : int
      {
         return 0;
      }
      
      override protected function getFrameNumber(param1:int, param2:int) : int
      {
         var _loc3_:String = getSpriteTag(param1,direction,param2);
         var _loc4_:int = super.animationId;
         switch(_loc3_)
         {
            case const_1494:
               return _loc4_ % 60 % 10;
            case const_1493:
               return _loc4_ % 60 / 10;
            case const_1495:
               return _loc4_ / 60 % 10;
            case const_1492:
               return _loc4_ / 60 / 10 % 10;
            default:
               return super.getFrameNumber(param1,param2);
         }
      }
   }
}
