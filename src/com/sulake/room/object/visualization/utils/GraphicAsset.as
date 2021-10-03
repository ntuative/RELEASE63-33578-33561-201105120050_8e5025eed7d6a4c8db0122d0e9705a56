package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_1851:String;
      
      private var var_2621:String;
      
      private var var_421:BitmapDataAsset;
      
      private var var_1530:Boolean;
      
      private var var_1531:Boolean;
      
      private var var_2620:Boolean;
      
      private var _offsetX:int;
      
      private var var_1253:int;
      
      private var var_264:int;
      
      private var _height:int;
      
      private var var_713:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_1851 = param1;
         this.var_2621 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_421 = _loc9_;
            this.var_713 = false;
         }
         else
         {
            this.var_421 = null;
            this.var_713 = true;
         }
         this.var_1530 = param4;
         this.var_1531 = param5;
         this._offsetX = param6;
         this.var_1253 = param7;
         this.var_2620 = param8;
      }
      
      public function dispose() : void
      {
         this.var_421 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_713 && this.var_421 != null)
         {
            _loc1_ = this.var_421.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_264 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_713 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1531;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1530;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_264;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_1851;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2621;
      }
      
      public function get asset() : IAsset
      {
         return this.var_421;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2620;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1530)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1531)
         {
            return this.var_1253;
         }
         return -(this.height + this.var_1253);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1253;
      }
   }
}
