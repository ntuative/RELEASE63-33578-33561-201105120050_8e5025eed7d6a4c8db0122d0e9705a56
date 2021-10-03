package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1615:int = 1;
      
      public static const const_2097:int = 2;
      
      public static const const_1668:int = 3;
      
      public static const const_1634:int = 4;
       
      
      private var var_1603:int = 0;
      
      private var var_1604:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1603 = 0;
         this.var_1604 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1603 = param1.readInteger();
         if(this.var_1603 == 3)
         {
            this.var_1604 = param1.readString();
         }
         else
         {
            this.var_1604 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1603;
      }
      
      public function get parameter() : String
      {
         return this.var_1604;
      }
   }
}
