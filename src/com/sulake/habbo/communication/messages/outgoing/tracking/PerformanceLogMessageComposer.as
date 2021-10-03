package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2169:int = 0;
      
      private var var_1489:String = "";
      
      private var var_1898:String = "";
      
      private var var_2436:String = "";
      
      private var var_2437:String = "";
      
      private var var_1786:int = 0;
      
      private var var_2434:int = 0;
      
      private var var_2435:int = 0;
      
      private var var_1487:int = 0;
      
      private var var_2433:int = 0;
      
      private var var_1490:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2169 = param1;
         this.var_1489 = param2;
         this.var_1898 = param3;
         this.var_2436 = param4;
         this.var_2437 = param5;
         if(param6)
         {
            this.var_1786 = 1;
         }
         else
         {
            this.var_1786 = 0;
         }
         this.var_2434 = param7;
         this.var_2435 = param8;
         this.var_1487 = param9;
         this.var_2433 = param10;
         this.var_1490 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2169,this.var_1489,this.var_1898,this.var_2436,this.var_2437,this.var_1786,this.var_2434,this.var_2435,this.var_1487,this.var_2433,this.var_1490];
      }
   }
}
