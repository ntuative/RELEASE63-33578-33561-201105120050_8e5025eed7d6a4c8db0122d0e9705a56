package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1665:int = 0;
      
      private var var_1664:int = 0;
      
      private var var_1946:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1665;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1664;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1946;
      }
      
      public function flush() : Boolean
      {
         this.var_1665 = 0;
         this.var_1664 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1665 = param1.readInteger();
         this.var_1664 = param1.readInteger();
         this.var_1946 = param1.readInteger();
         return true;
      }
   }
}
