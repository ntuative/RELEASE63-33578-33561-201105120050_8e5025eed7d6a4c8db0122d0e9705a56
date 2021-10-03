package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_143:String = "ROE_MOUSE_CLICK";
      
      public static const const_170:String = "ROE_MOUSE_ENTER";
      
      public static const const_582:String = "ROE_MOUSE_MOVE";
      
      public static const const_180:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2136:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_535:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1812:String = "";
      
      private var var_2345:Boolean;
      
      private var var_2346:Boolean;
      
      private var var_2349:Boolean;
      
      private var var_2343:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1812 = param2;
         this.var_2345 = param5;
         this.var_2346 = param6;
         this.var_2349 = param7;
         this.var_2343 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1812;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2345;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2346;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2349;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2343;
      }
   }
}
