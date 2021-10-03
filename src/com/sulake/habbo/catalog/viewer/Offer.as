package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer, IDisposable
   {
      
      public static const const_1617:String = "pricing_model_unknown";
      
      public static const const_396:String = "pricing_model_single";
      
      public static const const_438:String = "pricing_model_multi";
      
      public static const const_531:String = "pricing_model_bundle";
      
      public static const const_1856:String = "price_type_none";
      
      public static const const_816:String = "price_type_credits";
      
      public static const const_1287:String = "price_type_activitypoints";
      
      public static const const_1211:String = "price_type_credits_and_activitypoints";
       
      
      private var var_807:String;
      
      private var var_1231:String;
      
      private var _offerId:int;
      
      private var var_1945:String;
      
      private var var_1232:int;
      
      private var var_1230:int;
      
      private var var_1946:int;
      
      private var var_372:ICatalogPage;
      
      private var var_660:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2662:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_1945 = param2;
         this.var_1232 = param3;
         this.var_1230 = param4;
         this.var_1946 = param5;
         this.var_372 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_372;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1945;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1232;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1230;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1946;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_660;
      }
      
      public function get pricingModel() : String
      {
         return this.var_807;
      }
      
      public function get priceType() : String
      {
         return this.var_1231;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2662;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2662 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this._offerId = 0;
         this.var_1945 = "";
         this.var_1232 = 0;
         this.var_1230 = 0;
         this.var_1946 = 0;
         this.var_372 = null;
         if(this.var_660 != null)
         {
            this.var_660.dispose();
            this.var_660 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_807)
         {
            case const_396:
               this.var_660 = new SingleProductContainer(this,param1);
               break;
            case const_438:
               this.var_660 = new MultiProductContainer(this,param1);
               break;
            case const_531:
               this.var_660 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_807);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_807 = const_396;
            }
            else
            {
               this.var_807 = const_438;
            }
         }
         else if(param1.length > 1)
         {
            this.var_807 = const_531;
         }
         else
         {
            this.var_807 = const_1617;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1232 > 0 && this.var_1230 > 0)
         {
            this.var_1231 = const_1211;
         }
         else if(this.var_1232 > 0)
         {
            this.var_1231 = const_816;
         }
         else if(this.var_1230 > 0)
         {
            this.var_1231 = const_1287;
         }
         else
         {
            this.var_1231 = const_1856;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_372.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_660.products)
         {
            _loc4_ = this.var_372.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
