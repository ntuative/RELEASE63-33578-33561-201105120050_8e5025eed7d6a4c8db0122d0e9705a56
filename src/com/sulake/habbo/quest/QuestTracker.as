package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.StartCampaignMessageComposer;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class QuestTracker implements IDisposable
   {
      
      private static const const_1042:Array = [-2,-3,-2,0,2,3,2,0,2,1,0,1];
      
      private static const const_1043:Array = [1,1,2,2,3,3,4,4,5,5,6,6,4];
      
      private static const const_1041:int = 6;
      
      private static const const_1456:int = 4;
      
      private static const const_657:int = 2;
      
      private static const const_1044:int = 200;
      
      private static const const_296:Array = ["a","b","c","d"];
      
      private static const const_1045:int = 10000;
      
      private static const const_1457:int = 0;
      
      private static const const_658:int = -1;
      
      private static const const_1448:int = 162;
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_210:QuestMessageData;
      
      private var _window:IWindowContainer;
      
      private var var_539:Timer;
      
      private var var_800:ProgressBar;
      
      private var var_310:int = 0;
      
      private var var_1001:int = 0;
      
      private var var_1525:int = 0;
      
      private var var_1235:int = -1;
      
      private var var_808:int = -1;
      
      private var var_1002:int = -1;
      
      private var var_1234:int;
      
      private var var_1526:int;
      
      private var var_2670:Boolean;
      
      private const const_449:int = 0;
      
      private const const_1915:int = 1;
      
      private const const_1917:int = 2;
      
      private const const_1914:int = 3;
      
      private const const_1916:int = 4;
      
      private const const_1918:int = 5;
      
      private const const_1919:int = 6;
      
      public function QuestTracker(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         this.var_210 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_539)
         {
            this.var_539.stop();
            this.var_539 = null;
         }
         if(this.var_800)
         {
            this.var_800.dispose();
            this.var_800 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         if(this._window)
         {
            this.clearPrompt();
            this.var_210 = param1;
            this.var_1001 = 0;
            this.refreshTrackerDetails();
            this.var_1235 = 0;
            this.var_310 = this.const_1914;
         }
      }
      
      public function onQuestCancelled() : void
      {
         this.var_210 = null;
         if(this._window)
         {
            this.clearPrompt();
            this.var_310 = this.const_1917;
         }
      }
      
      public function onRoomEnter() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Boolean = Boolean(parseInt(this._questEngine.configuration.getKey("new.identity","0")));
         var _loc2_:String = this.getDefaultCampaign();
         if(this.var_539 == null && _loc1_ && _loc2_ != "" && this._questEngine.isQuestingEnabled())
         {
            _loc3_ = int(this._questEngine.configuration.getKey("questing.startQuestDelayInSeconds","30"));
            this.var_539 = new Timer(_loc3_ * 1000,1);
            this.var_539.addEventListener(TimerEvent.TIMER,this.onStartQuestTimer);
            this.var_539.start();
            Logger.log("Initialized start quest timer with period: " + _loc3_);
         }
      }
      
      public function onRoomExit() : void
      {
         if(this._window != null && this._window.visible)
         {
            this._window.findChildByName("more_info_txt").visible = false;
            this._window.findChildByName("more_info_region").visible = false;
         }
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         var _loc2_:Boolean = this._window && this._window.visible;
         this.var_210 = param1;
         this.prepareTrackerWindow();
         this.refreshTrackerDetails();
         this.refreshPromptFrames();
         this.hideSuccessFrames();
         if(_loc2_)
         {
            this.setupPrompt(this.var_808,const_1456,false);
         }
         else
         {
            this._window.x = this._window.desktop.width;
            this.var_310 = this.const_1915;
            this.setupPrompt(const_1457,const_657,false);
         }
         this._window.visible = true;
         this._questEngine.notifications.setQuestTrackerVisible(true);
      }
      
      private function refreshPromptFrames() : void
      {
         if(!this._questEngine.isQuestWithPrompts(this.var_210))
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < const_296.length)
         {
            this._questEngine.setupPromptFrameImage(this._window,this.var_210,const_296[_loc1_]);
            _loc1_++;
         }
      }
      
      private function prepareTrackerWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._questEngine.getXmlWindow("QuestTracker"));
         this._window.y = 72;
         this._window.findChildByName("more_info_region").procedure = this.onMoreInfo;
         new PendingImage(this._questEngine,this._window.findChildByName("quest_tracker_bg"),"quest_tracker_with_bar");
         var _loc1_:int = 1;
         while(_loc1_ <= const_1041)
         {
            new PendingImage(this._questEngine,this.getSuccessFrame(_loc1_),"checkanim" + _loc1_);
            _loc1_++;
         }
         this.hideSuccessFrames();
         this.var_800 = new ProgressBar(this._questEngine,this._window,const_1448,"quests.tracker.progress",false);
      }
      
      private function hideSuccessFrames() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= const_1041)
         {
            this.getSuccessFrame(_loc1_).visible = false;
            _loc1_++;
         }
      }
      
      private function hidePromptFrames() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < const_296.length)
         {
            this.getPromptFrame(const_296[_loc1_]).visible = false;
            _loc1_++;
         }
      }
      
      private function getSuccessFrame(param1:int) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("success_pic_" + param1));
      }
      
      private function getPromptFrame(param1:String) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("prompt_pic_" + param1));
      }
      
      private function refreshTrackerDetails() : void
      {
         this._questEngine.localization.registerParameter("quests.tracker.caption","quest_name",this._questEngine.getQuestName(this.var_210));
         this._window.findChildByName("desc_txt").caption = this._questEngine.getQuestDesc(this.var_210);
         this._window.findChildByName("more_info_txt").visible = true;
         this._window.findChildByName("more_info_region").visible = true;
         var _loc1_:int = Math.round(100 * this.var_210.completedSteps / this.var_210.totalSteps);
         this.var_800.refresh(_loc1_,100,this.var_210.id);
         this._questEngine.setupQuestImage(this._window,this.var_210);
      }
      
      private function onMoreInfo(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this._questEngine.questController.questDetails.showDetails(this.var_210);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._window == null)
         {
            return;
         }
         this.var_800.updateView();
         switch(this.var_310)
         {
            case this.const_1915:
               _loc2_ = this.getDefaultLocationX();
               _loc3_ = this._window.x - _loc2_;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(_loc3_ * param1 * 0.01));
                  this._window.x -= _loc4_;
               }
               else
               {
                  this.var_310 = this.const_449;
                  this._window.x = _loc2_;
               }
               break;
            case this.const_1917:
               _loc2_ = this._window.desktop.width;
               _loc3_ = _loc2_ - this._window.x;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(param1 * 100 / _loc3_));
                  this._window.x += _loc4_;
               }
               else
               {
                  this.var_310 = this.const_449;
                  this._window.x = _loc2_;
                  this._window.visible = false;
                  this._questEngine.notifications.setQuestTrackerVisible(false);
               }
               break;
            case this.const_1914:
               this.hideSuccessFrames();
               this.getSuccessFrame(const_1043[this.var_1235]).visible = true;
               ++this.var_1235;
               if(this.var_1235 >= const_1043.length)
               {
                  this.var_310 = this.const_1918;
                  this.var_1525 = 1000;
               }
               break;
            case this.const_1919:
               this.setQuestImageVisible(false);
               this.hidePromptFrames();
               this.var_1234 -= param1;
               this.getPromptFrame(const_296[this.var_1002]).visible = true;
               if(this.var_1234 < 0)
               {
                  this.var_1234 = const_1044;
                  ++this.var_1002;
                  if(this.var_1002 >= const_296.length)
                  {
                     this.var_1002 = 0;
                     --this.var_1526;
                     if(this.var_1526 < 1)
                     {
                        this.setupPrompt(const_1045,const_657,true);
                        this.var_310 = this.const_449;
                     }
                  }
               }
               break;
            case this.const_1916:
               if(this.var_1001 >= -1)
               {
                  this._window.x = this.getDefaultLocationX();
                  this.var_310 = this.const_449;
                  this.setupPrompt(const_1045,const_657,false);
               }
               else
               {
                  this._window.x = this.getDefaultLocationX() + const_1042[this.var_1001];
                  ++this.var_1001;
               }
               break;
            case this.const_1918:
               this.var_1525 -= param1;
               if(this.var_1525 < 0)
               {
                  this.var_310 = this.const_449;
                  this._window.visible = false;
               }
               break;
            case this.const_449:
               if(this.var_808 != const_658)
               {
                  this.var_808 -= param1;
                  if(this.var_808 < 0)
                  {
                     this.var_808 = const_658;
                     if(this.var_210 != null && this._questEngine.isQuestWithPrompts(this.var_210))
                     {
                        if(this.var_2670)
                        {
                           this.startNudge();
                        }
                        else
                        {
                           this.var_310 = this.const_1919;
                           this.var_1002 = 0;
                           this.var_1234 = const_1044;
                        }
                     }
                  }
               }
         }
      }
      
      private function getDefaultLocationX() : int
      {
         return this._window.desktop.width - this._window.width - 4;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      private function onStartQuestTimer(param1:TimerEvent) : void
      {
         if(this.hasBlockingWindow())
         {
            Logger.log("Quest start blocked. Waiting some more");
            this.var_539.reset();
            this.var_539.start();
         }
         else
         {
            this._questEngine.questController.questDetails.openForNextQuest = this._questEngine.configuration.getKey("questing.showDetailsForNextQuest") == "RoomWidgetInfostandExtraParamEnum";
            this._questEngine.send(new StartCampaignMessageComposer(this.getDefaultCampaign()));
         }
      }
      
      private function getDefaultCampaign() : String
      {
         var _loc1_:String = this._questEngine.configuration.getKey("questing.defaultCampaign");
         return _loc1_ == null ? "" : _loc1_;
      }
      
      private function hasBlockingWindow() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ <= 2)
         {
            _loc2_ = this._questEngine.windowManager.getDesktop(_loc1_);
            if(_loc2_ != null && this.hasBlockingWindowInLayer(_loc2_))
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      private function hasBlockingWindowInLayer(param1:IWindowContainer) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ != null && _loc3_.visible)
            {
               if(_loc3_ as IFrameWindow != null)
               {
                  if(_loc3_.name != "mod_start_panel")
                  {
                     return true;
                  }
               }
               else if(_loc3_.name == "welcome_screen")
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      private function setQuestImageVisible(param1:Boolean) : void
      {
         this._window.findChildByName("quest_pic_bitmap").visible = param1;
      }
      
      private function clearPrompt() : void
      {
         this.setupPrompt(const_658,0,false);
      }
      
      private function setupPrompt(param1:int, param2:int, param3:Boolean) : void
      {
         this.setQuestImageVisible(true);
         this.hidePromptFrames();
         this.var_808 = param1;
         this.var_1526 = param2;
         this.var_2670 = param3;
      }
      
      private function startNudge() : void
      {
         this.var_1001 = 0;
         this.var_310 = this.const_1916;
      }
   }
}
