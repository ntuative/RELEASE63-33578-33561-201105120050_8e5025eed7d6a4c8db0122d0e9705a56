package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2824:String;
      
      private var var_2825:Class;
      
      private var var_2823:Class;
      
      private var var_2051:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2824 = param1;
         this.var_2825 = param2;
         this.var_2823 = param3;
         if(rest == null)
         {
            this.var_2051 = new Array();
         }
         else
         {
            this.var_2051 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2824;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2825;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2823;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_2051;
      }
   }
}
