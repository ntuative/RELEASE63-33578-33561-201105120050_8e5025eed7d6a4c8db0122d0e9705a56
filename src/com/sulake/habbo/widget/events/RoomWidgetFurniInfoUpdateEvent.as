package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_327:String = "RWFIUE_FURNI";
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var _name:String = "";
      
      private var var_1713:String = "";
      
      private var var_46:BitmapData = null;
      
      private var var_2301:Boolean = false;
      
      private var var_2299:Boolean = false;
      
      private var var_1887:Boolean = false;
      
      private var var_1888:Boolean = false;
      
      private var var_2232:Boolean = false;
      
      private var var_1991:int = -1;
      
      private var var_2300:int = -1;
      
      private var _offerId:int = -1;
      
      private var var_1257:String = "";
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set category(param1:int) : void
      {
         this._category = param1;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1713 = param1;
      }
      
      public function get description() : String
      {
         return this.var_1713;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_46 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         this.var_2301 = param1;
      }
      
      public function get isWallItem() : Boolean
      {
         return this.var_2301;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         this.var_2299 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return this.var_2299;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1887 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1887;
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         this.var_1888 = param1;
      }
      
      public function get isRoomController() : Boolean
      {
         return this.var_1888;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         this.var_2232 = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return this.var_2232;
      }
      
      public function set expiration(param1:int) : void
      {
         this.var_1991 = param1;
      }
      
      public function get expiration() : int
      {
         return this.var_1991;
      }
      
      public function set catalogPageId(param1:int) : void
      {
         this.var_2300 = param1;
      }
      
      public function get catalogPageId() : int
      {
         return this.var_2300;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function set extraParam(param1:String) : void
      {
         this.var_1257 = param1;
      }
      
      public function get extraParam() : String
      {
         return this.var_1257;
      }
   }
}
