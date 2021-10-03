package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1542:int;
      
      private var var_317:String;
      
      private var var_2658:int;
      
      private var var_2365:int;
      
      private var var_1979:int;
      
      private var var_2657:int;
      
      private var var_1944:Boolean;
      
      private var _category:String;
      
      private var var_2656:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1542 = param1.readInteger();
         this.var_317 = param1.readString();
         this.var_2658 = param1.readInteger();
         this.var_2365 = param1.readInteger();
         this.var_1979 = param1.readInteger();
         this.var_2657 = param1.readInteger();
         this.var_1944 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2656 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_317;
      }
      
      public function get level() : int
      {
         return this.var_1542;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2658;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2365;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1979;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2657;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1944;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2656;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1542 > 1 || this.var_1944;
      }
   }
}
