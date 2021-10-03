package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1222:Boolean;
      
      private var var_1221:Boolean;
      
      private var var_1512:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1222;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1221;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1512;
      }
      
      public function flush() : Boolean
      {
         this.var_1222 = false;
         this.var_1221 = false;
         this.var_1512 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1222 = param1.readBoolean();
         this.var_1221 = param1.readBoolean();
         this.var_1512 = param1.readBoolean();
         return true;
      }
   }
}
