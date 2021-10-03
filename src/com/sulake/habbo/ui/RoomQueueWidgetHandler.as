package com.sulake.habbo.ui
{
   import com.sulake.habbo.catalog.enum.CatalogPageName;
   import com.sulake.habbo.session.events.RoomSessionQueueEvent;
   import com.sulake.habbo.widget.enums.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetRoomQueueUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomQueueMessage;
   import flash.events.Event;
   
   public class RoomQueueWidgetHandler implements IRoomWidgetHandler
   {
       
      
      private var var_1077:Boolean = false;
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      public function RoomQueueWidgetHandler()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1077;
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_414;
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         this._container = param1;
      }
      
      public function dispose() : void
      {
         this.var_1077 = true;
         this._container = null;
      }
      
      public function getWidgetMessages() : Array
      {
         var _loc1_:* = [];
         _loc1_.push(RoomWidgetRoomQueueMessage.const_881);
         _loc1_.push(RoomWidgetRoomQueueMessage.CHANGE_TO_SPECTATOR_QUEUE);
         _loc1_.push(RoomWidgetRoomQueueMessage.const_859);
         _loc1_.push(RoomWidgetRoomQueueMessage.const_920);
         return _loc1_;
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         if(this._container == null || this._container.roomSession == null)
         {
            return null;
         }
         var _loc2_:RoomWidgetRoomQueueMessage = param1 as RoomWidgetRoomQueueMessage;
         if(_loc2_ == null)
         {
            return null;
         }
         switch(param1.type)
         {
            case RoomWidgetRoomQueueMessage.const_881:
               this._container.roomSession.quit();
               break;
            case RoomWidgetRoomQueueMessage.CHANGE_TO_SPECTATOR_QUEUE:
               this._container.roomSession.changeQueue(RoomSessionQueueEvent.const_1242);
               break;
            case RoomWidgetRoomQueueMessage.const_859:
               this._container.roomSession.changeQueue(RoomSessionQueueEvent.const_1093);
               break;
            case RoomWidgetRoomQueueMessage.const_920:
               if(this._container.catalog != null)
               {
                  this._container.catalog.openCatalogPage(CatalogPageName.const_210,true);
               }
         }
         return null;
      }
      
      public function getProcessedEvents() : Array
      {
         return [RoomSessionQueueEvent.const_475];
      }
      
      public function processEvent(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = false;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:* = null;
         if(this._container == null || this._container.events == null)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomSessionQueueEvent.const_475:
               _loc2_ = param1 as RoomSessionQueueEvent;
               if(_loc2_ == null)
               {
                  return;
               }
               switch(_loc2_.queueSetTarget)
               {
                  case RoomSessionQueueEvent.const_1093:
                     _loc3_ = "null";
                     break;
                  case RoomSessionQueueEvent.const_1242:
                     _loc3_ = "null";
               }
               if(_loc3_ == null)
               {
                  return;
               }
               _loc4_ = true;
               if(this._container.inventory != null)
               {
                  _loc4_ = this._container.inventory.clubDays > 0;
               }
               _loc5_ = _loc2_.queueTypes;
               _loc7_ = false;
               if(_loc5_.length > 1)
               {
                  if(_loc4_ && _loc2_.queueTypes.indexOf(RoomSessionQueueEvent.const_1228) != -1)
                  {
                     _loc6_ = _loc2_.getQueueSize(RoomSessionQueueEvent.const_1228) + 1;
                     _loc7_ = true;
                  }
                  else
                  {
                     _loc6_ = _loc2_.getQueueSize(RoomSessionQueueEvent.const_1709) + 1;
                  }
               }
               else
               {
                  _loc6_ = _loc2_.getQueueSize(_loc5_[0]) + 1;
               }
               _loc8_ = new RoomWidgetRoomQueueUpdateEvent(_loc3_,_loc6_,_loc4_,_loc2_.isActive,_loc7_);
               this._container.events.dispatchEvent(_loc8_);
               break;
         }
      }
      
      public function update() : void
      {
      }
   }
}
