package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_787:String = "";
      
      public static const const_398:int = 0;
      
      public static const const_617:int = 255;
      
      public static const const_860:Boolean = false;
      
      public static const const_482:int = 0;
      
      public static const const_544:int = 0;
      
      public static const const_375:int = 0;
      
      public static const const_1119:int = 1;
      
      public static const const_1200:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2307:String = "";
      
      private var var_1903:int = 0;
      
      private var var_2308:int = 255;
      
      private var var_2306:Boolean = false;
      
      private var var_2309:int = 0;
      
      private var var_2310:int = 0;
      
      private var var_2311:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2307 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2307;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1903 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1903;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2308 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2308;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2306 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2306;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2309 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2309;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2310 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2310;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2311 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2311;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
