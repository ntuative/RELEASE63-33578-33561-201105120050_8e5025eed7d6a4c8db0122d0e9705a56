package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1433:Boolean;
      
      private var var_2237:int;
      
      private var var_1809:int;
      
      private var var_1810:int;
      
      private var var_2239:int;
      
      private var var_2238:int;
      
      private var var_2240:int;
      
      private var var_2241:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1433;
      }
      
      public function get commission() : int
      {
         return this.var_2237;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1809;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1810;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2238;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2239;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2240;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2241;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1433 = param1.readBoolean();
         this.var_2237 = param1.readInteger();
         this.var_1809 = param1.readInteger();
         this.var_1810 = param1.readInteger();
         this.var_2238 = param1.readInteger();
         this.var_2239 = param1.readInteger();
         this.var_2240 = param1.readInteger();
         this.var_2241 = param1.readInteger();
         return true;
      }
   }
}
