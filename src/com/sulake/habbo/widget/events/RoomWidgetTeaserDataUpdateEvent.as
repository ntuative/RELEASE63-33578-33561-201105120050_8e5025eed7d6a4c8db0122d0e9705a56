package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_598:String = "RWTDUE_TEASER_DATA";
      
      public static const const_788:String = "RWTDUE_GIFT_DATA";
      
      public static const const_814:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_195:int;
      
      private var _data:String;
      
      private var var_405:int;
      
      private var var_186:String;
      
      private var var_2213:String;
      
      private var var_2211:Boolean;
      
      private var var_1516:int = 0;
      
      private var var_2212:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_195;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_405;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2213;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2211;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2212;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1516;
      }
      
      public function set status(param1:int) : void
      {
         this.var_405 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2213 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2211 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2212 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_195 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_186;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_186 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1516 = param1;
      }
   }
}
