package com.sulake.habbo.friendbar.view.tabs
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendbar.data.IHabboFriendBarData;
   import com.sulake.habbo.friendbar.view.IHabboFriendBarView;
   import com.sulake.habbo.friendbar.view.utils.TextCropper;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.geom.Point;
   
   public class Tab implements ITab
   {
      
      public static var name_5:int = 127;
      
      public static var name_1:int = 36;
      
      public static var var_1073:IHabboFriendBarData;
      
      public static var var_1606:IHabboFriendBarView;
      
      public static var var_862:IAssetLibrary;
      
      public static var var_1331:IHabboWindowManager;
      
      public static var var_2103:TextCropper;
       
      
      protected var _window:IWindowContainer;
      
      protected var var_481:Boolean;
      
      private var var_1886:Boolean;
      
      private var _selected:Boolean;
      
      private var _disposed:Boolean;
      
      public function Tab()
      {
         super();
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      public function get selected() : Boolean
      {
         return this._selected;
      }
      
      public function get recycled() : Boolean
      {
         return this.var_481;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      protected function get exposed() : Boolean
      {
         return this.var_1886;
      }
      
      public function select() : void
      {
         this.conceal();
         this._selected = true;
      }
      
      public function deselect() : void
      {
         this._selected = false;
      }
      
      public function recycle() : void
      {
         this.conceal();
         this.var_481 = true;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this._window)
            {
               this._window.dispose();
               this._window = null;
            }
            this._disposed = true;
         }
      }
      
      protected function expose() : void
      {
         this.var_1886 = true;
      }
      
      protected function conceal() : void
      {
         this.var_1886 = false;
      }
      
      protected function onMouseClick(param1:WindowMouseEvent) : void
      {
         if(!this.disposed && !this.recycled)
         {
            if(this.selected)
            {
               var_1606.deSelect();
            }
            else
            {
               var_1606.selectTab(this);
            }
         }
      }
      
      protected function onMouseHover(param1:WindowMouseEvent) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            if(!this.selected)
            {
               this.expose();
            }
         }
         else if(param1.type == WindowMouseEvent.const_25)
         {
            if(!this.selected)
            {
               if(!this._window.hitTestGlobalPoint(new Point(param1.stageX,param1.stageY)))
               {
                  this.conceal();
               }
            }
         }
      }
   }
}
