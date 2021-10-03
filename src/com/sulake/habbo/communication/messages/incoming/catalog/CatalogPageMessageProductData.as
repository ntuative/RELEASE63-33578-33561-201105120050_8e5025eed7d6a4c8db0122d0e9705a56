package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_66:String = "i";
      
      public static const const_77:String = "s";
      
      public static const const_206:String = "e";
       
      
      private var var_1547:String;
      
      private var var_2636:int;
      
      private var var_1257:String;
      
      private var var_1546:int;
      
      private var var_1991:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1547 = param1.readString();
         this.var_2636 = param1.readInteger();
         this.var_1257 = param1.readString();
         this.var_1546 = param1.readInteger();
         this.var_1991 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1547;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2636;
      }
      
      public function get extraParam() : String
      {
         return this.var_1257;
      }
      
      public function get productCount() : int
      {
         return this.var_1546;
      }
      
      public function get expiration() : int
      {
         return this.var_1991;
      }
   }
}
