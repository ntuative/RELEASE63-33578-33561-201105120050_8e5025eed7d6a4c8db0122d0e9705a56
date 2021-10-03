package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_141:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_144:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1225:String;
      
      private var var_1507:Array;
      
      private var var_1127:Array;
      
      private var var_1995:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1225 = param2;
         this.var_1507 = param3;
         this.var_1127 = param4;
         if(this.var_1127 == null)
         {
            this.var_1127 = [];
         }
         this.var_1995 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1225;
      }
      
      public function get choices() : Array
      {
         return this.var_1507.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1127.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1995;
      }
   }
}
