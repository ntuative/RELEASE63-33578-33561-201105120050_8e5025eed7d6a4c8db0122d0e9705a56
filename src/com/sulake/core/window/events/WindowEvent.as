package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1701:String = "WE_DESTROY";
      
      public static const const_341:String = "WE_DESTROYED";
      
      public static const const_1853:String = "WE_OPEN";
      
      public static const const_1595:String = "WE_OPENED";
      
      public static const const_1644:String = "WE_CLOSE";
      
      public static const const_1822:String = "WE_CLOSED";
      
      public static const const_1633:String = "WE_FOCUS";
      
      public static const const_353:String = "WE_FOCUSED";
      
      public static const const_1825:String = "WE_UNFOCUS";
      
      public static const const_1667:String = "WE_UNFOCUSED";
      
      public static const const_1878:String = "WE_ACTIVATE";
      
      public static const const_584:String = "WE_ACTIVATED";
      
      public static const const_1751:String = "WE_DEACTIVATE";
      
      public static const const_481:String = "WE_DEACTIVATED";
      
      public static const const_328:String = "WE_SELECT";
      
      public static const const_59:String = "WE_SELECTED";
      
      public static const const_586:String = "WE_UNSELECT";
      
      public static const const_569:String = "WE_UNSELECTED";
      
      public static const const_1646:String = "WE_LOCK";
      
      public static const const_1628:String = "WE_LOCKED";
      
      public static const const_1836:String = "WE_UNLOCK";
      
      public static const const_1702:String = "WE_UNLOCKED";
      
      public static const const_973:String = "WE_ENABLE";
      
      public static const const_244:String = "WE_ENABLED";
      
      public static const const_858:String = "WE_DISABLE";
      
      public static const const_293:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_372:String = "WE_RELOCATED";
      
      public static const const_1139:String = "WE_RESIZE";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1873:String = "WE_MINIMIZE";
      
      public static const const_1829:String = "WE_MINIMIZED";
      
      public static const const_1608:String = "WE_MAXIMIZE";
      
      public static const const_1819:String = "WE_MAXIMIZED";
      
      public static const const_1797:String = "WE_RESTORE";
      
      public static const const_1641:String = "WE_RESTORED";
      
      public static const const_627:String = "WE_CHILD_ADDED";
      
      public static const const_419:String = "WE_CHILD_REMOVED";
      
      public static const const_215:String = "WE_CHILD_RELOCATED";
      
      public static const const_140:String = "WE_CHILD_RESIZED";
      
      public static const const_324:String = "WE_CHILD_ACTIVATED";
      
      public static const const_525:String = "WE_PARENT_ADDED";
      
      public static const const_1740:String = "WE_PARENT_REMOVED";
      
      public static const const_1763:String = "WE_PARENT_RELOCATED";
      
      public static const const_899:String = "WE_PARENT_RESIZED";
      
      public static const const_1098:String = "WE_PARENT_ACTIVATED";
      
      public static const const_181:String = "WE_OK";
      
      public static const const_574:String = "WE_CANCEL";
      
      public static const const_108:String = "WE_CHANGE";
      
      public static const const_597:String = "WE_SCROLL";
      
      public static const const_171:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_706:IWindow;
      
      protected var var_1086:Boolean;
      
      protected var var_484:Boolean;
      
      protected var var_481:Boolean;
      
      protected var var_707:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_706 = param3;
         _loc5_.var_484 = param4;
         _loc5_.var_481 = false;
         _loc5_.var_707 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_706;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_484;
      }
      
      public function recycle() : void
      {
         if(this.var_481)
         {
            throw new Error("Event already recycled!");
         }
         this.var_706 = null;
         this._window = null;
         this.var_481 = true;
         this.var_1086 = false;
         this.var_707.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1086;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1086 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1086;
      }
      
      public function stopPropagation() : void
      {
         this.var_1086 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1086 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_484 + " window: " + this._window + " }";
      }
   }
}
