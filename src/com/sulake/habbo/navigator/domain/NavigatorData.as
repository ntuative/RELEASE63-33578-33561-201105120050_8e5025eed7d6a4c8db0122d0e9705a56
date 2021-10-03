package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1945:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_214:MsgWithRequestId;
      
      private var var_695:RoomEventData;
      
      private var var_2892:Boolean;
      
      private var var_2883:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2195:int;
      
      private var var_281:GuestRoomData;
      
      private var var_1070:PublicRoomShortData;
      
      private var var_2889:int;
      
      private var var_2891:Boolean;
      
      private var var_2887:int;
      
      private var var_2885:Boolean;
      
      private var var_2083:int;
      
      private var var_2886:Boolean;
      
      private var var_1454:Array;
      
      private var var_1599:Array;
      
      private var var_2884:int;
      
      private var var_1600:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1323:Boolean;
      
      private var var_2888:int;
      
      private var var_2882:Boolean;
      
      private var var_2890:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1454 = new Array();
         this.var_1599 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_281 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_281 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1070 = null;
         this.var_281 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1070 = param1.publicSpace;
            this.var_695 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_695 != null)
         {
            this.var_695.dispose();
            this.var_695 = null;
         }
         if(this.var_1070 != null)
         {
            this.var_1070.dispose();
            this.var_1070 = null;
         }
         if(this.var_281 != null)
         {
            this.var_281.dispose();
            this.var_281 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_281 != null)
         {
            this.var_281.dispose();
         }
         this.var_281 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_695 != null)
         {
            this.var_695.dispose();
         }
         this.var_695 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_214 != null && this.var_214 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_214 != null && this.var_214 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_214 != null && this.var_214 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_214 = param1;
         this.var_1323 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_214 = param1;
         this.var_1323 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_214 = param1;
         this.var_1323 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_214 == null)
         {
            return;
         }
         this.var_214.dispose();
         this.var_214 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_214 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_214 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_214 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_695;
      }
      
      public function get avatarId() : int
      {
         return this.var_2195;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2892;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2883;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_281;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1070;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2891;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2887;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_2083;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2885;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2888;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2889;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2886;
      }
      
      public function get adIndex() : int
      {
         return this.var_2890;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2882;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2195 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2887 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2891 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2892 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2883 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2885 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_2083 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2888 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2889 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2886 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2890 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2882 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1454 = param1;
         this.var_1599 = new Array();
         for each(_loc2_ in this.var_1454)
         {
            if(_loc2_.visible)
            {
               this.var_1599.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1454;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1599;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2884 = param1.limit;
         this.var_1600 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1600 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_281.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_281 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_281.flatId;
         return this.var_2083 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1600 >= this.var_2884;
      }
      
      public function startLoading() : void
      {
         this.var_1323 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1323;
      }
   }
}
