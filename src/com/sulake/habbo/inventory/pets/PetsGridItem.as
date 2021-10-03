package com.sulake.habbo.inventory.pets
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class PetsGridItem
   {
      
      private static const const_1348:int = 8947848;
      
      private static const const_1350:int = 13421772;
      
      private static const const_1347:int = 5466933;
      
      private static const const_1349:int = 10275685;
       
      
      private var _petData:PetData;
      
      private var _window:IWindowContainer;
      
      private var var_1216:IWindow;
      
      private var _isSelected:Boolean;
      
      private var var_1505:PetsView;
      
      private var var_1506:Boolean;
      
      private var var_1930:Boolean;
      
      public function PetsGridItem(param1:PetsView, param2:PetData, param3:IHabboWindowManager, param4:IAssetLibrary, param5:IAvatarRenderManager, param6:Boolean)
      {
         super();
         if(param1 == null || param2 == null || param3 == null || param4 == null || param5 == null)
         {
            return;
         }
         this.var_1505 = param1;
         this._petData = param2;
         this.var_1930 = param6;
         var _loc7_:XmlAsset = param4.getAssetByName("inventory_thumb_xml") as XmlAsset;
         if(_loc7_ == null || _loc7_.content == null)
         {
            return;
         }
         this._window = param3.buildFromXML(_loc7_.content as XML) as IWindowContainer;
         this.var_1216 = this._window.findChildByTag("BG_COLOR");
         this._window.procedure = this.eventHandler;
         var _loc8_:BitmapData = param1.getPetImage(param2.type,param2.breed,param2.color,3,false);
         var _loc9_:IBitmapWrapperWindow = this._window.findChildByName("bitmap") as IBitmapWrapperWindow;
         var _loc10_:BitmapData = new BitmapData(_loc9_.width,_loc9_.height);
         _loc10_.fillRect(_loc10_.rect,0);
         _loc10_.copyPixels(_loc8_,_loc8_.rect,new Point(_loc10_.width / 2 - _loc8_.width / 2,_loc10_.height / 2 - _loc8_.height / 2));
         _loc9_.bitmap = _loc10_;
         this.setSelected(false);
      }
      
      private function eventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         switch(param1.type)
         {
            case WindowMouseEvent.const_45:
               this.var_1505.setSelectedGridItem(this);
               this.var_1506 = true;
               break;
            case WindowMouseEvent.const_53:
               this.var_1506 = false;
               break;
            case WindowMouseEvent.const_25:
               if(this.var_1506)
               {
                  this.var_1506 = false;
                  this.var_1505.placePetToRoom(this._petData.id,true);
               }
         }
      }
      
      public function setSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
         if(!this._window || !this.var_1216)
         {
            return;
         }
         if(this._isSelected)
         {
            this.var_1216.color = !!this.var_1930 ? uint(const_1347) : uint(const_1348);
         }
         else
         {
            this.var_1216.color = !!this.var_1930 ? uint(const_1349) : uint(const_1350);
         }
      }
      
      public function dispose() : void
      {
         this.var_1505 = null;
         this._petData = null;
         this.var_1216 = null;
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get pet() : PetData
      {
         return this._petData;
      }
   }
}
