package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2839:int;
      
      private var var_2837:int;
      
      private var var_2838:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2839 = param1;
         this.var_2837 = param2;
         this.var_2838 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2839,this.var_2837,this.var_2838];
      }
      
      public function dispose() : void
      {
      }
   }
}
