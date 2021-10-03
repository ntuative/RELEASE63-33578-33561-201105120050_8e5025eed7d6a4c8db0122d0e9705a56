package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2683:Boolean;
      
      private var var_2682:int;
      
      private var var_1821:Array;
      
      private var var_764:Array;
      
      private var var_765:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2683;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2682;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1821;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_764;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_765;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1821 = [];
         this.var_764 = [];
         this.var_765 = [];
         this.var_2683 = param1.readBoolean();
         this.var_2682 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1821.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_764.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_765.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
