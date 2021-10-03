package com.sulake.habbo.navigator.mainview.tabpagedecorators
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateRoomMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.domain.Tabs;
   
   public class MyRoomsTabPageDecorator implements ITabPageDecorator
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_2972:IWindowContainer;
      
      private var var_289:IDropMenuWindow;
      
      public function MyRoomsTabPageDecorator(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
      }
      
      public function refreshCustomContent(param1:IWindowContainer) : void
      {
         var _loc3_:IWindowContainer = param1.getChildByName("me_header") as IWindowContainer;
         if(this.var_289 == null)
         {
            this.var_289 = IDropMenuWindow(_loc3_.findChildByName("meSubNavi"));
            this.var_289.procedure = this.onChangeSubNavi;
            this.prepareSubNavi();
         }
         _loc3_.visible = true;
      }
      
      public function tabSelected() : void
      {
         if(this.var_289 != null)
         {
            this.var_289.selection = 0;
         }
      }
      
      public function refreshFooter(param1:IWindowContainer) : void
      {
         var _loc3_:IWindowContainer = param1.getChildByName("me_footer") as IWindowContainer;
         Util.setProc(_loc3_,"create_room_but",this.onCreateRoomClick);
         this._navigator.refreshButton(_loc3_,"create_room",true,null,0);
         _loc3_.visible = true;
      }
      
      public function navigatorOpenedWhileInTab() : void
      {
         this.startSearch();
      }
      
      private function onCreateRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new CanCreateRoomMessageComposer());
      }
      
      private function prepareSubNavi() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(this._navigator.getText("navigator.navisel.myrooms"));
         _loc1_.push(this._navigator.getText("navigator.navisel.wherearemyfriends"));
         _loc1_.push(this._navigator.getText("navigator.navisel.myfriendsrooms"));
         _loc1_.push(this._navigator.getText("navigator.navisel.myfavourites"));
         _loc1_.push(this._navigator.getText("navigator.navisel.visitedrooms"));
         this.var_289.populate(_loc1_);
         this.var_289.selection = 0;
      }
      
      private function onChangeSubNavi(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_59)
         {
            return;
         }
         this.startSearch();
         if(param2 is IDropMenuWindow)
         {
            this._navigator.trackNavigationDataPoint(IDropMenuWindow(param2).enumerateSelection()[IDropMenuWindow(param2).selection],"me.category.view");
         }
      }
      
      private function startSearch() : void
      {
         var _loc1_:int = this.var_289 == null ? 0 : int(this.var_289.selection);
         Logger.log("Me subNavi selection changed: " + _loc1_);
         this._navigator.mainViewCtrl.startSearch(Tabs.const_254,this.getSearchTypeForIndex(_loc1_));
      }
      
      private function getSearchTypeForIndex(param1:int) : int
      {
         if(param1 == 1)
         {
            return Tabs.const_687;
         }
         if(param1 == 2)
         {
            return Tabs.const_847;
         }
         if(param1 == 3)
         {
            return Tabs.const_804;
         }
         if(param1 == 4)
         {
            return Tabs.const_680;
         }
         return Tabs.const_287;
      }
      
      public function get filterCategory() : String
      {
         return !!this.var_289 ? this.var_289.enumerateSelection()[this.var_289.selection] : null;
      }
   }
}
