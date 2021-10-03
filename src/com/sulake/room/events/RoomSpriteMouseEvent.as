package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1812:String = "";
      
      private var var_1987:String = "";
      
      private var var_2350:String = "";
      
      private var var_2347:Number = 0;
      
      private var var_2344:Number = 0;
      
      private var var_2348:Number = 0;
      
      private var var_2351:Number = 0;
      
      private var var_2346:Boolean = false;
      
      private var var_2345:Boolean = false;
      
      private var var_2349:Boolean = false;
      
      private var var_2343:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1812 = param2;
         this.var_1987 = param3;
         this.var_2350 = param4;
         this.var_2347 = param5;
         this.var_2344 = param6;
         this.var_2348 = param7;
         this.var_2351 = param8;
         this.var_2346 = param9;
         this.var_2345 = param10;
         this.var_2349 = param11;
         this.var_2343 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1812;
      }
      
      public function get canvasId() : String
      {
         return this.var_1987;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2350;
      }
      
      public function get screenX() : Number
      {
         return this.var_2347;
      }
      
      public function get screenY() : Number
      {
         return this.var_2344;
      }
      
      public function get localX() : Number
      {
         return this.var_2348;
      }
      
      public function get localY() : Number
      {
         return this.var_2351;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2346;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2345;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2349;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2343;
      }
   }
}
