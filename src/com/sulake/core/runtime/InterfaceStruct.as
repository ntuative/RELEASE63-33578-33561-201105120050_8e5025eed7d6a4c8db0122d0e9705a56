package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1410:IID;
      
      private var var_1769:String;
      
      private var var_106:IUnknown;
      
      private var var_737:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1410 = param1;
         this.var_1769 = getQualifiedClassName(this.var_1410);
         this.var_106 = param2;
         this.var_737 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1410;
      }
      
      public function get iis() : String
      {
         return this.var_1769;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_106;
      }
      
      public function get references() : uint
      {
         return this.var_737;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_106 == null;
      }
      
      public function dispose() : void
      {
         this.var_1410 = null;
         this.var_1769 = null;
         this.var_106 = null;
         this.var_737 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_737;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_737) : uint(0);
      }
   }
}
