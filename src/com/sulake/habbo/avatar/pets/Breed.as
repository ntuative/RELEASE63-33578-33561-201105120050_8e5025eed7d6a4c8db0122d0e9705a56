package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_2392:String = "";
      
      private var var_936:String;
      
      private var var_1581:Boolean;
      
      private var var_2465:Boolean = true;
      
      private var var_2536:int;
      
      private var var_2537:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_2536 = parseInt(param1.@pattern);
         this.var_936 = String(param1.@gender);
         this.var_1581 = Boolean(parseInt(param1.@colorable));
         this.var_2392 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_2465 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_936;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1581;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2465;
      }
      
      public function get patternId() : int
      {
         return this.var_2536;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_2537;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_2537 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2392;
      }
   }
}
