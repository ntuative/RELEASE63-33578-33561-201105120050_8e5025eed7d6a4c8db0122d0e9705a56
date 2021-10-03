package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1193:int = 1;
      
      public static const const_563:int = 2;
      
      private static const const_1058:int = 5;
      
      private static const const_1499:int = 250;
      
      private static const const_1498:int = 100;
      
      private static const const_1497:int = 180;
      
      private static const const_1496:int = 200;
       
      
      private var var_392:Timer;
      
      private var var_393:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_81:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_2015:int = 2;
      
      private var var_830:BitmapData;
      
      private var var_1022:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_392 = new Timer(const_1499,1);
         this.var_393 = new Timer(const_1498,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_81 = param1;
         this.var_81.visible = false;
         this._assets = param2;
         this.var_392.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_393.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_1022 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_830 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_392 != null)
         {
            this.var_392.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_392.stop();
            this.var_392 = null;
         }
         if(this.var_393 != null)
         {
            this.var_393.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_393.stop();
            this.var_393 = null;
         }
         this._assets = null;
         this.var_81 = null;
         this._parent = null;
         this.var_830 = null;
         this.var_1022 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_81 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_81);
         }
         this._parent = param1;
         this.var_2015 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_81.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_81.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1497,param3.width),Math.min(const_1496,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_81.width - _loc6_.width) / 2;
            this.var_81.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_393.reset();
         this.var_392.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_81.visible = true;
         this._parent.addChild(this.var_81);
         this.refreshArrow(this.var_2015);
         switch(this.var_2015)
         {
            case const_1193:
               this.var_81.x = -1 * this.var_81.width - const_1058;
               break;
            case const_563:
               this.var_81.x = this._parent.width + const_1058;
         }
         this.var_81.y = (this._parent.height - this.var_81.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_81.visible = false;
         this.var_393.reset();
         this.var_392.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_81);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_393.reset();
         this.var_392.reset();
         this.var_392.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_393.reset();
         this.var_392.reset();
         this.var_393.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_81 == null || this.var_81.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_81.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1193:
               _loc2_.bitmap = this.var_1022.clone();
               _loc2_.width = this.var_1022.width;
               _loc2_.height = this.var_1022.height;
               _loc2_.y = (this.var_81.height - this.var_1022.height) / 2;
               _loc2_.x = this.var_81.width - 1;
               break;
            case const_563:
               _loc2_.bitmap = this.var_830.clone();
               _loc2_.width = this.var_830.width;
               _loc2_.height = this.var_830.height;
               _loc2_.y = (this.var_81.height - this.var_830.height) / 2;
               _loc2_.x = -1 * this.var_830.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
