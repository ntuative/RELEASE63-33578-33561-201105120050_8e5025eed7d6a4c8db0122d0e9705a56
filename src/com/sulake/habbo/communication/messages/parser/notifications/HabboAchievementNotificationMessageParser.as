package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1542:int;
      
      private var var_2057:int;
      
      private var var_2365:int;
      
      private var var_1979:int;
      
      private var var_1543:int;
      
      private var var_2282:String = "";
      
      private var var_2364:String = "";
      
      private var var_2366:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1542 = param1.readInteger();
         this.var_2282 = param1.readString();
         this.var_2057 = param1.readInteger();
         this.var_2365 = param1.readInteger();
         this.var_1979 = param1.readInteger();
         this.var_1543 = param1.readInteger();
         this.var_2366 = param1.readInteger();
         this.var_2364 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1542;
      }
      
      public function get points() : int
      {
         return this.var_2057;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2365;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1979;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1543;
      }
      
      public function get badgeID() : String
      {
         return this.var_2282;
      }
      
      public function get achievementID() : int
      {
         return this.var_2366;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2364;
      }
   }
}
