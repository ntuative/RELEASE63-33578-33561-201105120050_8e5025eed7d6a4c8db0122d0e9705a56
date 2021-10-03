package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1730:String;
      
      private var var_1739:int;
      
      private var var_2630:Boolean;
      
      private var var_2626:Boolean;
      
      private var var_2631:int;
      
      private var var_2627:int;
      
      private var var_372:ICatalogPage;
      
      private var var_2625:int;
      
      private var var_2629:int;
      
      private var var_2628:int;
      
      private var var_1453:String;
      
      private var var_2867:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1730 = param2;
         this.var_1739 = param3;
         this.var_2630 = param4;
         this.var_2626 = param5;
         this.var_2631 = param6;
         this.var_2627 = param7;
         this.var_2625 = param8;
         this.var_2629 = param9;
         this.var_2628 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1453;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1453 = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1730;
      }
      
      public function get price() : int
      {
         return this.var_1739;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2630;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2626;
      }
      
      public function get periods() : int
      {
         return this.var_2631;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2627;
      }
      
      public function get year() : int
      {
         return this.var_2625;
      }
      
      public function get month() : int
      {
         return this.var_2629;
      }
      
      public function get day() : int
      {
         return this.var_2628;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_219;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1739;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_372;
      }
      
      public function get priceType() : String
      {
         return Offer.const_816;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1730;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_372 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2867;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2867 = param1;
      }
   }
}
