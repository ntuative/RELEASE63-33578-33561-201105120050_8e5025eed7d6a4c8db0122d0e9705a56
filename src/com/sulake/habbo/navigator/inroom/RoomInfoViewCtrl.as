package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_187:IWindowContainer;
      
      private var var_2947:int;
      
      private var var_364:RoomEventViewCtrl;
      
      private var var_362:Timer;
      
      private var var_182:RoomSettingsCtrl;
      
      private var var_256:RoomThumbnailCtrl;
      
      private var var_957:TagRenderer;
      
      private var var_363:IWindowContainer;
      
      private var var_365:IWindowContainer;
      
      private var var_643:IWindowContainer;
      
      private var var_1832:IWindowContainer;
      
      private var var_1830:IWindowContainer;
      
      private var var_1178:IWindowContainer;
      
      private var var_955:ITextWindow;
      
      private var var_958:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_769:ITextWindow;
      
      private var var_1180:ITextWindow;
      
      private var var_956:ITextWindow;
      
      private var var_768:ITextWindow;
      
      private var var_1458:ITextWindow;
      
      private var var_255:IWindowContainer;
      
      private var var_767:IWindowContainer;
      
      private var var_1459:IWindowContainer;
      
      private var var_1829:ITextWindow;
      
      private var var_642:ITextWindow;
      
      private var var_1831:IWindow;
      
      private var var_1181:IContainerButtonWindow;
      
      private var var_1177:IContainerButtonWindow;
      
      private var var_1182:IContainerButtonWindow;
      
      private var var_1179:IContainerButtonWindow;
      
      private var _makeHomeButton:IContainerButtonWindow;
      
      private var var_1457:IButtonWindow;
      
      private var var_1460:IButtonWindow;
      
      private var var_1456:IButtonWindow;
      
      private var var_766:IWindowContainer;
      
      private var var_1176:ITextWindow;
      
      private var var_953:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_954:IButtonWindow;
      
      private var var_770:IButtonWindow;
      
      private var var_2949:String;
      
      private var var_2948:String;
      
      private const const_820:int = 75;
      
      private const const_953:int = 3;
      
      private const const_763:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_364 = new RoomEventViewCtrl(this._navigator);
         this.var_182 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_256 = new RoomThumbnailCtrl(this._navigator);
         this.var_957 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_182);
         this.var_362 = new Timer(6000,1);
         this.var_362.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_362)
         {
            this.var_362.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_362.reset();
            this.var_362 = null;
         }
         this._navigator = null;
         this.var_364 = null;
         this.var_182 = null;
         this.var_256 = null;
         if(this.var_957)
         {
            this.var_957.dispose();
            this.var_957 = null;
         }
         this.var_187 = null;
         this.var_363 = null;
         this.var_365 = null;
         this.var_643 = null;
         this.var_1832 = null;
         this.var_1830 = null;
         this.var_1178 = null;
         this.var_955 = null;
         this.var_958 = null;
         this._ownerName = null;
         this.var_769 = null;
         this.var_1180 = null;
         this.var_956 = null;
         this.var_768 = null;
         this.var_1458 = null;
         this.var_255 = null;
         this.var_767 = null;
         this.var_1459 = null;
         this.var_1829 = null;
         this.var_642 = null;
         this.var_1831 = null;
         this.var_1181 = null;
         this.var_1177 = null;
         this.var_1182 = null;
         this.var_1179 = null;
         this._makeHomeButton = null;
         this.var_1457 = null;
         this.var_1460 = null;
         this.var_1456 = null;
         this.var_766 = null;
         this.var_1176 = null;
         this.var_953 = null;
         this._buttons = null;
         this.var_954 = null;
         this.var_770 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_362.reset();
         this.var_364.active = true;
         this.var_182.active = false;
         this.var_256.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_362.reset();
         this.var_182.load(param1);
         this.var_182.active = true;
         this.var_364.active = false;
         this.var_256.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_182.active = true;
         this.var_364.active = false;
         this.var_256.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_362.reset();
         this.var_182.active = false;
         this.var_364.active = false;
         this.var_256.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_362.reset();
         this.var_364.active = false;
         this.var_182.active = false;
         this.var_256.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_953;
         this._window.y = this.const_820;
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_187,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_187.height = Util.getLowestPoint(this.var_187);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_763;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_363);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_182.refresh(this.var_363);
         this.var_256.refresh(this.var_363);
         Util.moveChildrenToColumn(this.var_363,["room_details","room_buttons"],0,2);
         this.var_363.height = Util.getLowestPoint(this.var_363);
         this.var_363.visible = true;
         Logger.log("XORP: " + this.var_365.visible + ", " + this.var_1178.visible + ", " + this.var_643.visible + ", " + this.var_643.rectangle + ", " + this.var_363.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_255);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_364.refresh(this.var_255);
         if(Util.hasVisibleChildren(this.var_255) && !(this.var_182.active || this.var_256.active))
         {
            Util.moveChildrenToColumn(this.var_255,["event_details","event_buttons"],0,2);
            this.var_255.height = Util.getLowestPoint(this.var_255);
            this.var_255.visible = true;
         }
         else
         {
            this.var_255.visible = false;
         }
         Logger.log("EVENT: " + this.var_255.visible + ", " + this.var_255.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "RoomWidgetInfostandExtraParamEnum";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_182.active && !this.var_256.active && !this.var_364.active)
         {
            this.var_766.visible = true;
            this.var_953.text = this.getEmbedData();
         }
         else
         {
            this.var_766.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_182.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_954)
         {
            if(this.var_2949 == "exit_homeroom")
            {
               this.var_954.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_954.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_770)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_770.visible = _loc1_;
            if(this.var_2948 == "0")
            {
               this.var_770.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_770.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_182.active || this.var_256.active)
         {
            return;
         }
         this.var_955.text = param1.roomName;
         this.var_955.height = this.var_955.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_769.text = param1.description;
         this.var_957.refreshTags(this.var_365,param1.tags);
         this.var_769.visible = false;
         if(param1.description != "")
         {
            this.var_769.height = this.var_769.textHeight + 5;
            this.var_769.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1177,"facebook_logo_small",_loc3_,null,0);
         this.var_1177.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1181,"thumb_up",_loc4_,null,0);
         this.var_1181.visible = _loc4_;
         this.var_768.visible = !_loc4_;
         this.var_1458.visible = !_loc4_;
         this.var_1458.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_365,"home",param2,null,0);
         this._navigator.refreshButton(this.var_365,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_365,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_955.y,0);
         this.var_365.visible = true;
         this.var_365.height = Util.getLowestPoint(this.var_365);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_365.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_182.active || this.var_256.active)
         {
            return;
         }
         this.var_958.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_958.height = this.var_958.textHeight + 5;
         this.var_1180.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1180.height = this.var_1180.textHeight + 5;
         Util.moveChildrenToColumn(this.var_643,["public_space_name","public_space_desc"],this.var_958.y,0);
         this.var_643.visible = true;
         this.var_643.height = Math.max(86,Util.getLowestPoint(this.var_643));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_364.active)
         {
            return;
         }
         this.var_1829.text = param1.eventName;
         this.var_642.text = param1.eventDescription;
         this.var_957.refreshTags(this.var_767,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_642.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_642.height = this.var_642.textHeight + 5;
            this.var_642.y = Util.getLowestPoint(this.var_767) + 2;
            this.var_642.visible = true;
         }
         this.var_767.visible = true;
         this.var_767.height = Util.getLowestPoint(this.var_767);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_182.active || this.var_256.active)
         {
            return;
         }
         this.var_1457.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1182.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1179.visible = this._navigator.data.canAddFavourite && _loc2_;
         this._makeHomeButton.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1178.visible = Util.hasVisibleChildren(this.var_1178);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_364.active)
         {
            return;
         }
         this.var_1460.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1456.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1459.visible = Util.hasVisibleChildren(this.var_1459);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_187 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_363 = IWindowContainer(this.find("room_info"));
         this.var_365 = IWindowContainer(this.find("room_details"));
         this.var_643 = IWindowContainer(this.find("public_space_details"));
         this.var_1832 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1830 = IWindowContainer(this.find("rating_cont"));
         this.var_1178 = IWindowContainer(this.find("room_buttons"));
         this.var_955 = ITextWindow(this.find("room_name"));
         this.var_958 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_769 = ITextWindow(this.find("room_desc"));
         this.var_1180 = ITextWindow(this.find("public_space_desc"));
         this.var_956 = ITextWindow(this.find("owner_caption"));
         this.var_768 = ITextWindow(this.find("rating_caption"));
         this.var_1458 = ITextWindow(this.find("rating_txt"));
         this.var_255 = IWindowContainer(this.find("event_info"));
         this.var_767 = IWindowContainer(this.find("event_details"));
         this.var_1459 = IWindowContainer(this.find("event_buttons"));
         this.var_1829 = ITextWindow(this.find("event_name"));
         this.var_642 = ITextWindow(this.find("event_desc"));
         this.var_1177 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1181 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1831 = this.find("staff_pick_button");
         this.var_1182 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1179 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this._makeHomeButton = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1457 = IButtonWindow(this.find("room_settings_button"));
         this.var_1460 = IButtonWindow(this.find("create_event_button"));
         this.var_1456 = IButtonWindow(this.find("edit_event_button"));
         this.var_766 = IWindowContainer(this.find("embed_info"));
         this.var_1176 = ITextWindow(this.find("embed_info_txt"));
         this.var_953 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_954 = IButtonWindow(this.find("exit_room_button"));
         this.var_770 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1182,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1179,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1457,this.onRoomSettingsClick);
         Util.setProcDirectly(this._makeHomeButton,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1460,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1456,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_953,this.onEmbedSrcClick);
         Util.setProcDirectly(this.var_1181,this.onThumbUp);
         Util.setProcDirectly(this.var_1831,this.onStaffPick);
         Util.setProcDirectly(this.var_1177,this.onFacebookLike);
         Util.setProcDirectly(this.var_770,this.onZoomClick);
         Util.setProcDirectly(this.var_954,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1182,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1179,"favourite",true,null,0);
         this._navigator.refreshButton(this._makeHomeButton,"home",true,null,0);
         this._window.findChildByTag("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_363,this.onHover);
         Util.setProcDirectly(this.var_255,this.onHover);
         this.var_956.width = this.var_956.textWidth;
         Util.moveChildrenToRow(this.var_1832,["owner_caption","owner_name"],this.var_956.x,this.var_956.y,3);
         this.var_768.width = this.var_768.textWidth;
         Util.moveChildrenToRow(this.var_1830,["rating_caption","rating_txt"],this.var_768.x,this.var_768.y,3);
         this.var_1176.height = this.var_1176.textHeight + 5;
         Util.moveChildrenToColumn(this.var_766,["embed_info_txt","embed_src_txt"],this.var_1176.y,2);
         this.var_766.height = Util.getLowestPoint(this.var_766) + 5;
         this.var_2947 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_953.setSelection(0,this.var_953.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_37);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_37);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_362.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
