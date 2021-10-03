package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   
   public class ProgressBar implements IDisposable
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var _window:IWindowContainer;
      
      private var var_907:int;
      
      private var var_1736:String;
      
      private var var_2336:Boolean;
      
      private var var_1391:int;
      
      private var var_1125:int;
      
      private var var_2337:int;
      
      private var var_1738:int;
      
      private var var_245:int;
      
      private var var_1737:Boolean;
      
      private var var_730:BitmapData;
      
      private var var_596:Array;
      
      private var var_1735:ColorMatrixFilter;
      
      private var var_2980:int;
      
      public function ProgressBar(param1:HabboQuestEngine, param2:IWindowContainer, param3:int, param4:String, param5:Boolean)
      {
         this.var_596 = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
         this.var_1735 = new ColorMatrixFilter(this.var_596);
         super();
         this._questEngine = param1;
         this._window = param2;
         this.var_907 = param3;
         this.var_1736 = param4;
         this.var_2336 = param5;
         if(param5)
         {
            new PendingImage(this._questEngine,this._window.findChildByName("bar_l"),"ach_progressbar1");
            new PendingImage(this._questEngine,this._window.findChildByName("bar_c"),"ach_progressbar2");
            new PendingImage(this._questEngine,this._window.findChildByName("bar_r"),"ach_progressbar3");
         }
         new PendingImage(this._questEngine,this._window.findChildByName("bar_a_c"),"ach_progressbar4");
         new PendingImage(this._questEngine,this._window.findChildByName("bar_a_r"),"ach_progressbar5");
      }
      
      public function refresh(param1:int, param2:int, param3:int) : void
      {
         if(this.var_2336)
         {
            this._window.findChildByName("bar_c").width = this.var_907;
            this._window.findChildByName("bar_r").x = this.var_907 + 4;
         }
         var _loc4_:Boolean = param3 != this.var_2337 || param2 != this.var_1125;
         this.var_1125 = param2;
         this.var_1391 = param1;
         this.var_1738 = this.var_245;
         this.var_2337 = param3;
         this._questEngine.localization.registerParameter(this.var_1736,"limit","" + this.var_1125);
         if(_loc4_)
         {
            this.var_245 = this.getProgressWidth(this.var_1391);
         }
         this.var_1737 = true;
         this.updateView();
      }
      
      public function updateView() : void
      {
         var _loc7_:int = 0;
         if(!this.var_1737)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("bar_a_c"));
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("bar_a_r"));
         if(_loc1_.bitmap == null || _loc2_.bitmap == null)
         {
            return;
         }
         if(this.var_730 == null)
         {
            this.var_730 = _loc1_.bitmap.clone();
         }
         var _loc3_:int = this.getProgressWidth(this.var_1391);
         if(this.var_245 < _loc3_)
         {
            _loc7_ = Math.min(Math.abs(this.var_245 - _loc3_),Math.abs(this.var_1738 - _loc3_));
            this.var_245 = Math.min(_loc3_,this.var_245 + Math.max(1,Math.round(Math.sqrt(_loc7_))));
         }
         var _loc4_:* = this.var_245 > 0;
         _loc1_.visible = _loc4_;
         _loc2_.visible = _loc4_;
         if(_loc4_)
         {
            _loc1_.width = this.var_730.width;
            if(this.var_245 < _loc3_)
            {
               this.changeProgressColorFilter();
               _loc1_.bitmap.applyFilter(this.var_730,this.var_730.rect,new Point(0,0),this.var_1735);
            }
            else
            {
               _loc1_.bitmap.copyPixels(this.var_730,this.var_730.rect,new Point(0,0),null,null,true);
            }
            _loc1_.width = this.var_245;
            _loc2_.x = this.var_245 + 4;
         }
         var _loc5_:int = Math.round(this.var_245 / this.var_907 * this.var_1125);
         this._questEngine.localization.registerParameter(this.var_1736,"progress","" + _loc5_);
         var _loc6_:ITextWindow = ITextWindow(this._window.findChildByName("progress_txt"));
         _loc6_.x = 3 + _loc1_.x + (this.var_907 - _loc6_.width) / 2;
         if(this.var_245 >= _loc3_)
         {
            this.var_1737 = false;
         }
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         this._window = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      private function getProgressWidth(param1:int) : int
      {
         return Math.max(0,Math.round(this.var_907 * param1 / this.var_1125));
      }
      
      private function changeProgressColorFilter() : void
      {
         var _loc1_:int = this.getProgressWidth(this.var_1391);
         var _loc2_:int = _loc1_ - this.var_1738;
         if(_loc2_ == 0)
         {
            return;
         }
         var _loc3_:Number = (_loc1_ - this.var_245) / _loc2_;
         this.var_596[3] = _loc3_ * 1;
         this.var_596[8] = _loc3_ * 1;
         this.var_596[0] = 1 - _loc3_;
         this.var_596[6] = 1 - _loc3_;
         this.var_596[12] = 1 - _loc3_;
         this.var_1735.matrix = this.var_596;
      }
   }
}
