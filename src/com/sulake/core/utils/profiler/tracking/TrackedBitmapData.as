package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_1984:int = 16777215;
      
      public static const const_1278:int = 8191;
      
      public static const const_1213:int = 8191;
      
      public static const const_1998:int = 1;
      
      public static const const_1207:int = 1;
      
      public static const const_1147:int = 1;
      
      private static var var_549:uint = 0;
      
      private static var var_550:uint = 0;
       
      
      private var var_472:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1278)
         {
            param2 = const_1278;
         }
         else if(param2 < const_1207)
         {
            param2 = const_1207;
         }
         if(param3 > const_1213)
         {
            param3 = const_1213;
         }
         else if(param3 < const_1147)
         {
            param3 = const_1147;
         }
         super(param2,param3,param4,param5);
         ++var_549;
         var_550 += param2 * param3 * 4;
         this.var_472 = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_549;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_550;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_550 -= width * height * 4;
            --var_549;
            this._disposed = true;
            this.var_472 = null;
            super.dispose();
         }
      }
   }
}
