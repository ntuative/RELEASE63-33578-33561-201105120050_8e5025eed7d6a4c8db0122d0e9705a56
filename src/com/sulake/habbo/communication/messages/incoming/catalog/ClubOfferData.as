package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1730:String;
      
      private var var_1739:int;
      
      private var var_2630:Boolean;
      
      private var var_2626:Boolean;
      
      private var var_2631:int;
      
      private var var_2627:int;
      
      private var var_2625:int;
      
      private var var_2629:int;
      
      private var var_2628:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1730 = param1.readString();
         this.var_1739 = param1.readInteger();
         this.var_2630 = param1.readBoolean();
         this.var_2626 = param1.readBoolean();
         this.var_2631 = param1.readInteger();
         this.var_2627 = param1.readInteger();
         this.var_2625 = param1.readInteger();
         this.var_2629 = param1.readInteger();
         this.var_2628 = param1.readInteger();
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
   }
}
