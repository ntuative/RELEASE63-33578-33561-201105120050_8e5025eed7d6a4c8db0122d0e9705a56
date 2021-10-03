package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_178:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_623:String = "";
      
      private var var_936:String = "";
      
      private var var_1891:String = "";
      
      private var var_2244:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_178,param1,param7,param8);
         this._userId = param2;
         this.var_623 = param3;
         this.var_936 = param4;
         this.var_1891 = param5;
         this.var_2244 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function get gender() : String
      {
         return this.var_936;
      }
      
      public function get customInfo() : String
      {
         return this.var_1891;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2244;
      }
   }
}
