package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1704:int;
      
      private var var_1542:int;
      
      private var var_2677:int;
      
      private var var_2183:int;
      
      private var var_2679:int;
      
      private var _energy:int;
      
      private var var_2681:int;
      
      private var _nutrition:int;
      
      private var var_2676:int;
      
      private var var_2294:int;
      
      private var _ownerName:String;
      
      private var var_2280:int;
      
      private var var_488:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1704;
      }
      
      public function get level() : int
      {
         return this.var_1542;
      }
      
      public function get levelMax() : int
      {
         return this.var_2677;
      }
      
      public function get experience() : int
      {
         return this.var_2183;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2679;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2681;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2676;
      }
      
      public function get ownerId() : int
      {
         return this.var_2294;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2280;
      }
      
      public function get age() : int
      {
         return this.var_488;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1704 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1542 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2677 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2183 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2679 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2681 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2676 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2294 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2280 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_488 = param1;
      }
   }
}
