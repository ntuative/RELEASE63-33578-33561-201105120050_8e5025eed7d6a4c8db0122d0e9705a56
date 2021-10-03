package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1568:Boolean;
      
      private var var_1763:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1568;
      }
      
      public function get onShutDown() : Boolean
      {
         return this.var_1763;
      }
      
      public function flush() : Boolean
      {
         this.var_1568 = false;
         this.var_1763 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1568 = param1.readInteger() > 0;
         this.var_1763 = param1.readInteger() > 0;
         return true;
      }
   }
}
