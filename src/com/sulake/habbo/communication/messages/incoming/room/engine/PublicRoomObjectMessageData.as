package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_447:int = 0;
      
      private var var_516:int = 0;
      
      private var var_628:int = 0;
      
      private var var_193:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_193 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_193)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_193)
         {
            this._name = param1;
         }
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
   }
}
