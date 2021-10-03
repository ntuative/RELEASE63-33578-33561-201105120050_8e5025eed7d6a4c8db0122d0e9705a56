package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2863:Boolean = false;
      
      private var var_2862:int = 0;
      
      private var var_2864:int = 0;
      
      private var var_2348:int = 0;
      
      private var var_2351:int = 0;
      
      private var var_159:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_447:String = "";
      
      private var _type:int = 0;
      
      private var var_2975:String = "";
      
      private var var_1504:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_193:Boolean = false;
      
      private var var_2267:Boolean;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2863 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_193 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2863;
      }
      
      public function get wallX() : Number
      {
         return this.var_2862;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_193)
         {
            this.var_2862 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2864;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_193)
         {
            this.var_2864 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2348;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_193)
         {
            this.var_2348 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2351;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_193)
         {
            this.var_2351 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_159;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_193)
         {
            this.var_159 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_158;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_193)
         {
            this.var_158 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_447;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_193)
         {
            this.var_447 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_193)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_193)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_193)
         {
            this._data = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2267;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         if(!this.var_193)
         {
            this.var_2267 = param1;
         }
      }
   }
}
