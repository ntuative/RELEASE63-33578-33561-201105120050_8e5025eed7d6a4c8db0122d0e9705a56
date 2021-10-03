package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1704:int;
      
      private var var_2447:String;
      
      private var var_1542:int;
      
      private var var_1116:int;
      
      private var var_1693:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1704 = param1.readInteger();
         this.var_2447 = param1.readString();
         this.var_1542 = param1.readInteger();
         this.var_1116 = param1.readInteger();
         this.var_1693 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1704;
      }
      
      public function get petName() : String
      {
         return this.var_2447;
      }
      
      public function get level() : int
      {
         return this.var_1542;
      }
      
      public function get petType() : int
      {
         return this.var_1116;
      }
      
      public function get breed() : int
      {
         return this.var_1693;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
