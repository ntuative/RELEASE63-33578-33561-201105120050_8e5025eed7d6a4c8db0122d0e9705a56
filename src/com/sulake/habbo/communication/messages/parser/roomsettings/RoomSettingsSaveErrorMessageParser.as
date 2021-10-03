package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2065:int = 1;
      
      public static const const_2082:int = 2;
      
      public static const const_2138:int = 3;
      
      public static const const_2128:int = 4;
      
      public static const const_1714:int = 5;
      
      public static const const_1954:int = 6;
      
      public static const const_1778:int = 7;
      
      public static const const_1837:int = 8;
      
      public static const const_2051:int = 9;
      
      public static const const_1769:int = 10;
      
      public static const const_1734:int = 11;
      
      public static const const_1745:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1641:int;
      
      private var var_1565:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1641 = param1.readInteger();
         this.var_1565 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1641;
      }
      
      public function get info() : String
      {
         return this.var_1565;
      }
   }
}
