package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1704:int;
      
      private var _name:String;
      
      private var var_1542:int;
      
      private var var_2296:int;
      
      private var var_2183:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_623:String;
      
      private var var_2292:int;
      
      private var var_2295:int;
      
      private var var_2293:int;
      
      private var var_2280:int;
      
      private var var_2294:int;
      
      private var _ownerName:String;
      
      private var var_488:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1704;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1542;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2296;
      }
      
      public function get experience() : int
      {
         return this.var_2183;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2292;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2295;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2293;
      }
      
      public function get respect() : int
      {
         return this.var_2280;
      }
      
      public function get ownerId() : int
      {
         return this.var_2294;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_488;
      }
      
      public function flush() : Boolean
      {
         this.var_1704 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1704 = param1.readInteger();
         this._name = param1.readString();
         this.var_1542 = param1.readInteger();
         this.var_2296 = param1.readInteger();
         this.var_2183 = param1.readInteger();
         this.var_2292 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2295 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2293 = param1.readInteger();
         this.var_623 = param1.readString();
         this.var_2280 = param1.readInteger();
         this.var_2294 = param1.readInteger();
         this.var_488 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
