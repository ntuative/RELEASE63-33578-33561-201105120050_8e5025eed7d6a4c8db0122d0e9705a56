package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1713:String;
      
      private var var_2370:int;
      
      private var _password:String;
      
      private var var_1432:int;
      
      private var var_2379:int;
      
      private var var_871:Array;
      
      private var var_2383:Array;
      
      private var var_2377:Boolean;
      
      private var var_2376:Boolean;
      
      private var var_2378:Boolean;
      
      private var var_2381:Boolean;
      
      private var var_2380:int;
      
      private var var_2382:int;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2377;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2377 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2376;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2376 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2378;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2378 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2381;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2381 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2380;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2380 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2382;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2382 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1713;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1713 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2370;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2370 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1432;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1432 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2379;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2379 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_871;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_871 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2383;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2383 = param1;
      }
   }
}
