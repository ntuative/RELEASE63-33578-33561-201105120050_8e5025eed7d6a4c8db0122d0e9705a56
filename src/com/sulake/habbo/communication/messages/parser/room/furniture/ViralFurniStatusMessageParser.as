package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_186:String;
      
      private var var_195:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1516:int = 0;
      
      private var var_405:int;
      
      private var _shareId:String;
      
      private var var_2213:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_186;
      }
      
      public function get objectId() : int
      {
         return this.var_195;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1516;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get status() : int
      {
         return this.var_405;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2213;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_186 = param1.readString();
         this.var_195 = param1.readInteger();
         this.var_405 = param1.readInteger();
         this._shareId = param1.readString();
         this.var_2213 = param1.readString();
         this.var_1516 = param1.readInteger();
         return true;
      }
   }
}
