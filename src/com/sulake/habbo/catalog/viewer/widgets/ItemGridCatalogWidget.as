package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.enum.ProductTypeEnum;
   import com.sulake.habbo.catalog.viewer.BundleProductContainer;
   import com.sulake.habbo.catalog.viewer.IDragAndDropDoneReceiver;
   import com.sulake.habbo.catalog.viewer.IGridItem;
   import com.sulake.habbo.catalog.viewer.IItemGrid;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.ProductContainer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetInitPurchaseEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ItemGridCatalogWidget extends CatalogWidget implements ICatalogWidget, IItemGrid, IDragAndDropDoneReceiver
   {
       
      
      protected var var_482:IItemGridWindow;
      
      protected var var_2024:XML;
      
      protected var var_217:IGridItem;
      
      private var var_1913:int = 0;
      
      protected var var_206:Timer;
      
      protected var var_197:Boolean = true;
      
      private var var_793:int = 0;
      
      private var _scrollBar:IScrollbarWindow;
      
      public function ItemGridCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
         this._scrollBar = _window.findChildByName("itemGridScrollbar") as IScrollbarWindow;
         if(this._scrollBar != null)
         {
            this._scrollBar.visible = false;
            this._scrollBar.addEventListener(WindowEvent.const_973,this.activateScrollbar);
            this._scrollBar.addEventListener(WindowEvent.const_244,this.activateScrollbar);
            this._scrollBar.addEventListener(WindowEvent.const_858,this.deActivateScrollbar);
            this._scrollBar.addEventListener(WindowEvent.const_293,this.deActivateScrollbar);
         }
      }
      
      override public function dispose() : void
      {
         if(this.var_206 != null)
         {
            this.var_206.stop();
            this.var_206.removeEventListener(TimerEvent.TIMER,this.loadItemGridGraphics);
            this.var_206 = null;
         }
         if(this.var_482 != null)
         {
            this.var_482.destroyGridItems();
            this.var_482 = null;
         }
         this.var_2024 = null;
         this.var_217 = null;
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         if(!super.init())
         {
            return false;
         }
         this.var_482 = _window.findChildByName("itemGrid") as IItemGridWindow;
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("gridItem") as XmlAsset;
         this.var_2024 = _loc1_.content as XML;
         this.populateItemGrid();
         if(this.var_197)
         {
            this.var_206 = new Timer(25);
            this.var_206.addEventListener(TimerEvent.TIMER,this.loadItemGridGraphics);
            this.var_206.start();
         }
         else
         {
            this.loadItemGridGraphics();
         }
         return true;
      }
      
      public function select(param1:IGridItem) : void
      {
         if(this.var_217 != null)
         {
            this.var_217.deActivate();
         }
         this.var_217 = param1;
         param1.activate();
         var _loc2_:Offer = (param1 as ProductContainer).offer;
         if(_loc2_ != null)
         {
            events.dispatchEvent(new SelectProductEvent(_loc2_));
            if(_loc2_.productContainer.firstProduct.productType == ProductTypeEnum.const_66)
            {
               events.dispatchEvent(new SetExtraPurchaseParameterEvent(_loc2_.productContainer.firstProduct.extraParam));
            }
         }
      }
      
      public function startDragAndDrop(param1:IGridItem) : Boolean
      {
         var _loc2_:Offer = (param1 as ProductContainer).offer;
         if(_loc2_ != null)
         {
            (page.viewer.catalog as HabboCatalog).requestSelectedItemToMover(this,_loc2_);
         }
         return true;
      }
      
      public function onDragAndDropDone(param1:Boolean) : void
      {
         if(disposed)
         {
            return;
         }
         if(param1)
         {
            events.dispatchEvent(new CatalogWidgetInitPurchaseEvent(false));
         }
      }
      
      public function stopDragAndDrop() : void
      {
      }
      
      protected function populateItemGrid() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in page.offers)
         {
            this.createGridItem(_loc1_);
            _loc1_.productContainer.grid = this;
         }
      }
      
      protected function resetTimer() : void
      {
         if(this.var_206 != null)
         {
            this.var_206.reset();
            this.var_206.removeEventListener(TimerEvent.TIMER,this.loadItemGridGraphics);
         }
         this.var_793 = 0;
      }
      
      protected function loadItemGridGraphics(param1:TimerEvent = null) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         if(disposed)
         {
            return;
         }
         if(param1 != null)
         {
         }
         var _loc2_:int = page.offers.length;
         if(_loc2_ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < 3)
            {
               if(this.var_793 >= 0 && this.var_793 < _loc2_)
               {
                  _loc4_ = page.offers[this.var_793];
                  this.loadGraphics(_loc4_);
                  _loc4_.productContainer.grid = this;
               }
               ++this.var_793;
               if(this.var_793 >= _loc2_)
               {
                  this.resetTimer();
                  break;
               }
               _loc3_++;
            }
         }
      }
      
      private function activateScrollbar(param1:WindowEvent) : void
      {
         (param1.target as IWindow).visible = true;
      }
      
      private function deActivateScrollbar(param1:WindowEvent) : void
      {
         (param1.target as IWindow).visible = false;
      }
      
      protected function createGridItem(param1:Offer) : void
      {
         var _loc2_:IWindowContainer = page.viewer.catalog.windowManager.buildFromXML(this.var_2024) as IWindowContainer;
         this.var_482.addGridItem(_loc2_);
         param1.productContainer.view = _loc2_;
         if((page.viewer.catalog as HabboCatalog).isDraggable(param1))
         {
            (param1.productContainer as IGridItem).setDraggable(true);
         }
         if(param1.pricingModel == Offer.const_531)
         {
            ++this.var_1913;
            (param1.productContainer as BundleProductContainer).setBundleCounter(this.var_1913);
         }
      }
      
      protected function loadGraphics(param1:Offer) : void
      {
         if(param1 != null && !param1.disposed)
         {
            param1.productContainer.initProductIcon(page.viewer.roomEngine);
         }
      }
   }
}
