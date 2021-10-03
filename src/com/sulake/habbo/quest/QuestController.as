package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_673:QuestsList;
      
      private var var_543:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_387:QuestTracker;
      
      private var var_1018:CampaignCompleted;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_387 = new QuestTracker(this._questEngine);
         this.var_673 = new QuestsList(this._questEngine);
         this.var_543 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_1018 = new CampaignCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_673.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_673.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_387.onQuest(param1);
         this.var_543.onQuest(param1);
         this._questCompleted.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_387.onQuestCompleted(param1);
         this.var_543.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_387.onQuestCancelled();
         this.var_543.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_387.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_673.onRoomExit();
         this.var_387.onRoomExit();
         this.var_543.onRoomExit();
         this.var_1018.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_387.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_673)
         {
            this.var_673.dispose();
            this.var_673 = null;
         }
         if(this.var_387)
         {
            this.var_387.dispose();
            this.var_387 = null;
         }
         if(this.var_543)
         {
            this.var_543.dispose();
            this.var_543 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_1018)
         {
            this.var_1018.dispose();
            this.var_1018 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_673;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_543;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_387;
      }
      
      public function get campaignCompleted() : CampaignCompleted
      {
         return this.var_1018;
      }
   }
}
