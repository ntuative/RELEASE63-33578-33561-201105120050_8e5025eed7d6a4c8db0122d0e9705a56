package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_928:int = 1;
      
      public static const const_678:int = 2;
      
      public static const const_716:int = 3;
      
      public static const const_1104:int = 4;
      
      public static const const_959:int = 5;
      
      public static const const_1226:int = 6;
       
      
      private var _type:int;
      
      private var var_1228:int;
      
      private var var_2235:String;
      
      private var var_2236:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1228 = param2;
         this.var_2235 = param3;
         this.var_2236 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2235;
      }
      
      public function get time() : String
      {
         return this.var_2236;
      }
      
      public function get senderId() : int
      {
         return this.var_1228;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
