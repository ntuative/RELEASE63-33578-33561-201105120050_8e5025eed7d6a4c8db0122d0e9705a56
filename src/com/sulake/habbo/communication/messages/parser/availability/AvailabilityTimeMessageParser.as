package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_1568:Boolean;
      
      private var var_1978:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1568;
      }
      
      public function get minutesUntilChange() : int
      {
         return this.var_1978;
      }
      
      public function flush() : Boolean
      {
         this.var_1568 = false;
         this.var_1978 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1568 = param1.readInteger() > 0;
         this.var_1978 = param1.readInteger();
         return true;
      }
   }
}
