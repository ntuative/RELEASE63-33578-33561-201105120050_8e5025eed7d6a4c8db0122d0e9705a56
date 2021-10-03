package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1976:IID;
      
      private var var_1077:Boolean;
      
      private var var_1247:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1976 = param1;
         this.var_1247 = new Array();
         this.var_1077 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1976;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1077;
      }
      
      public function get receivers() : Array
      {
         return this.var_1247;
      }
      
      public function dispose() : void
      {
         if(!this.var_1077)
         {
            this.var_1077 = true;
            this.var_1976 = null;
            while(this.var_1247.length > 0)
            {
               this.var_1247.pop();
            }
            this.var_1247 = null;
         }
      }
   }
}
