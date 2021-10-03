package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2088:String;
      
      private var var_2895:int;
      
      private var var_2896:int;
      
      private var var_1946:int;
      
      private var _id:int;
      
      private var var_2086:Boolean;
      
      private var _type:String;
      
      private var var_2085:String;
      
      private var _rewardCurrencyAmount:int;
      
      private var var_2087:String;
      
      private var var_2897:int;
      
      private var var_2894:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2088 = param1.readString();
         this.var_2895 = param1.readInteger();
         this.var_2896 = param1.readInteger();
         this.var_1946 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2086 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2085 = param1.readString();
         this._rewardCurrencyAmount = param1.readInteger();
         this.var_2087 = param1.readString();
         this.var_2897 = param1.readInteger();
         this.var_2894 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_2085 = "";
         this._rewardCurrencyAmount = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_2088;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2087;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2895;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2896;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1946;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2086;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2085;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this._rewardCurrencyAmount;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2897;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2894;
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_2088;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_2087;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_2086 = param1;
      }
   }
}
