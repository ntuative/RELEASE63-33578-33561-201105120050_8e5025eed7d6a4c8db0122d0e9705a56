package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1433:Boolean = false;
      
      private var var_1739:int;
      
      private var var_1821:Array;
      
      private var var_764:Array;
      
      private var var_765:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1433 = _loc2_.isWrappingEnabled;
         this.var_1739 = _loc2_.wrappingPrice;
         this.var_1821 = _loc2_.stuffTypes;
         this.var_764 = _loc2_.boxTypes;
         this.var_765 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1433;
      }
      
      public function get price() : int
      {
         return this.var_1739;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1821;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_764;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_765;
      }
   }
}
