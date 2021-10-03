package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1641:int;
      
      private var var_2070:int;
      
      private var var_2071:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2070 = param1.readInteger();
         this.var_1641 = param1.readInteger();
         this.var_2071 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1641 = 0;
         this.var_2070 = 0;
         this.var_2071 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1641;
      }
      
      public function get messageId() : int
      {
         return this.var_2070;
      }
      
      public function get timestamp() : String
      {
         return this.var_2071;
      }
   }
}
