package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_397:int;
      
      private var var_752:Boolean;
      
      private var var_955:String;
      
      private var _ownerName:String;
      
      private var var_2370:int;
      
      private var var_2270:int;
      
      private var var_2832:int;
      
      private var var_1713:String;
      
      private var var_2833:int;
      
      private var var_2372:Boolean;
      
      private var var_744:int;
      
      private var var_1432:int;
      
      private var var_2835:String;
      
      private var var_871:Array;
      
      private var var_2834:RoomThumbnailData;
      
      private var var_2377:Boolean;
      
      private var var_2836:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_871 = new Array();
         super();
         this.var_397 = param1.readInteger();
         this.var_752 = param1.readBoolean();
         this.var_955 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2370 = param1.readInteger();
         this.var_2270 = param1.readInteger();
         this.var_2832 = param1.readInteger();
         this.var_1713 = param1.readString();
         this.var_2833 = param1.readInteger();
         this.var_2372 = param1.readBoolean();
         this.var_744 = param1.readInteger();
         this.var_1432 = param1.readInteger();
         this.var_2835 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_871.push(_loc4_);
            _loc3_++;
         }
         this.var_2834 = new RoomThumbnailData(param1);
         this.var_2377 = param1.readBoolean();
         this.var_2836 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_871 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_397;
      }
      
      public function get event() : Boolean
      {
         return this.var_752;
      }
      
      public function get roomName() : String
      {
         return this.var_955;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2370;
      }
      
      public function get userCount() : int
      {
         return this.var_2270;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2832;
      }
      
      public function get description() : String
      {
         return this.var_1713;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2833;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2372;
      }
      
      public function get score() : int
      {
         return this.var_744;
      }
      
      public function get categoryId() : int
      {
         return this.var_1432;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2835;
      }
      
      public function get tags() : Array
      {
         return this.var_871;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2834;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2377;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2836;
      }
   }
}
