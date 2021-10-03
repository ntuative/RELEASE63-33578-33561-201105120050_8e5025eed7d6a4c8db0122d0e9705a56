package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2283:int;
      
      private var var_1372:String;
      
      private var var_2873:int;
      
      private var var_2868:int;
      
      private var _category:int;
      
      private var var_2132:String;
      
      private var var_1504:int;
      
      private var var_2870:int;
      
      private var var_2872:int;
      
      private var var_2871:int;
      
      private var var_2874:int;
      
      private var var_2869:Boolean;
      
      private var var_2996:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2283 = param1;
         this.var_1372 = param2;
         this.var_2873 = param3;
         this.var_2868 = param4;
         this._category = param5;
         this.var_2132 = param6;
         this.var_1504 = param7;
         this.var_2870 = param8;
         this.var_2872 = param9;
         this.var_2871 = param10;
         this.var_2874 = param11;
         this.var_2869 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2283;
      }
      
      public function get itemType() : String
      {
         return this.var_1372;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2873;
      }
      
      public function get method_3() : int
      {
         return this.var_2868;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2132;
      }
      
      public function get extra() : int
      {
         return this.var_1504;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2870;
      }
      
      public function get creationDay() : int
      {
         return this.var_2872;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2871;
      }
      
      public function get creationYear() : int
      {
         return this.var_2874;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2869;
      }
      
      public function get songID() : int
      {
         return this.var_1504;
      }
   }
}
