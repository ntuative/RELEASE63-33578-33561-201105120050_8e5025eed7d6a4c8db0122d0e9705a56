package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_106:int = 1;
      
      public static const const_71:int = 2;
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2341:int;
      
      private var var_2132:String;
      
      private var var_1739:int;
      
      private var var_2340:int;
      
      private var var_2339:int;
      
      private var var_405:int;
      
      private var var_2338:int = -1;
      
      private var var_1740:int;
      
      private var var_46:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2341 = param3;
         this.var_2132 = param4;
         this.var_1739 = param5;
         this.var_405 = param6;
         this.var_2340 = param7;
         this.var_1740 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_46)
         {
            this.var_46.dispose();
            this.var_46 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2341;
      }
      
      public function get stuffData() : String
      {
         return this.var_2132;
      }
      
      public function get price() : int
      {
         return this.var_1739;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2340;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_46 != null)
         {
            this.var_46.dispose();
         }
         this.var_46 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2339 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2339;
      }
      
      public function get status() : int
      {
         return this.var_405;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2338;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2338 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1739 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1740;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1740 = param1;
      }
   }
}
