package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_355:int = 1;
      
      public static const const_204:int = 2;
      
      public static const const_254:int = 3;
      
      public static const const_358:int = 4;
      
      public static const const_202:int = 5;
      
      public static const const_413:int = 1;
      
      public static const const_785:int = 2;
      
      public static const const_847:int = 3;
      
      public static const const_687:int = 4;
      
      public static const const_287:int = 5;
      
      public static const const_804:int = 6;
      
      public static const const_680:int = 7;
      
      public static const const_290:int = 8;
      
      public static const const_370:int = 9;
      
      public static const const_1970:int = 10;
      
      public static const const_730:int = 11;
      
      public static const const_558:int = 12;
       
      
      private var var_461:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_461 = new Array();
         this.var_461.push(new Tab(this._navigator,const_355,const_558,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_500));
         this.var_461.push(new Tab(this._navigator,const_204,const_413,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_500));
         this.var_461.push(new Tab(this._navigator,const_358,const_730,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1185));
         this.var_461.push(new Tab(this._navigator,const_254,const_287,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_500));
         this.var_461.push(new Tab(this._navigator,const_202,const_290,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_728));
         this.setSelectedTab(const_355);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_358;
      }
      
      public function get tabs() : Array
      {
         return this.var_461;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_461)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_461)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_461)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
