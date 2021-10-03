package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2464:int;
      
      private var var_1372:String;
      
      private var _objId:int;
      
      private var var_1729:int;
      
      private var _category:int;
      
      private var var_2132:String;
      
      private var var_2462:Boolean;
      
      private var var_2463:Boolean;
      
      private var var_2466:Boolean;
      
      private var var_2465:Boolean;
      
      private var var_2266:int;
      
      private var var_1504:int;
      
      private var var_1787:String = "";
      
      private var var_1784:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2464 = param1;
         this.var_1372 = param2;
         this._objId = param3;
         this.var_1729 = param4;
         this._category = param5;
         this.var_2132 = param6;
         this.var_2462 = param7;
         this.var_2463 = param8;
         this.var_2466 = param9;
         this.var_2465 = param10;
         this.var_2266 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1787 = param1;
         this.var_1504 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2464;
      }
      
      public function get itemType() : String
      {
         return this.var_1372;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1729;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2132;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2462;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2463;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2466;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2465;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2266;
      }
      
      public function get slotId() : String
      {
         return this.var_1787;
      }
      
      public function get songId() : int
      {
         return this.var_1784;
      }
      
      public function get extra() : int
      {
         return this.var_1504;
      }
   }
}
