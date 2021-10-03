package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_447:int = 0;
      
      private var var_516:int = 0;
      
      private var var_628:int = 0;
      
      private var _type:int = 0;
      
      private var var_2975:String = "";
      
      private var var_1504:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2266:int = 0;
      
      private var var_2267:Boolean;
      
      private var var_2265:String = null;
      
      private var var_193:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_193 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_193)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_447;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_193)
         {
            this.var_447 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_516;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_193)
         {
            this.var_516 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_628;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_193)
         {
            this.var_628 = param1;
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
      
      public function get staticClass() : String
      {
         return this.var_2265;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_193)
         {
            this.var_2265 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1504;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_193)
         {
            this.var_1504 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2266;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_193)
         {
            this.var_2266 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2267;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2267 = param1;
      }
   }
}
