package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1140:String = "M";
      
      public static const const_1693:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_447:int = 0;
      
      private var _name:String = "";
      
      private var var_1612:int = 0;
      
      private var var_981:String = "";
      
      private var var_623:String = "";
      
      private var var_2247:String = "";
      
      private var var_2244:int;
      
      private var var_2243:int = 0;
      
      private var var_2245:String = "";
      
      private var var_2246:int = 0;
      
      private var var_2242:int = 0;
      
      private var var_2802:String = "";
      
      private var var_193:Boolean = false;
      
      public function UserMessageData(param1:int)
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
      
      public function get userType() : int
      {
         return this.var_1612;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_193)
         {
            this.var_1612 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_981;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_193)
         {
            this.var_981 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_193)
         {
            this.var_623 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2247;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_193)
         {
            this.var_2247 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2244;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_193)
         {
            this.var_2244 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2243;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_193)
         {
            this.var_2243 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2245;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_193)
         {
            this.var_2245 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2246;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_193)
         {
            this.var_2246 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2242;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_193)
         {
            this.var_2242 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2802;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_193)
         {
            this.var_2802 = param1;
         }
      }
   }
}
