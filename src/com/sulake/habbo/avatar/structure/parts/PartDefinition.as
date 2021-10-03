package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2589:String;
      
      private var var_1893:String;
      
      private var var_2590:String;
      
      private var var_1892:Boolean;
      
      private var var_1894:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2589 = String(param1["set-type"]);
         this.var_1893 = String(param1["flipped-set-type"]);
         this.var_2590 = String(param1["remove-set-type"]);
         this.var_1892 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1894 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1894;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1894 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2589;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1893;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2590;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1892;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1892 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1893 = param1;
      }
   }
}
