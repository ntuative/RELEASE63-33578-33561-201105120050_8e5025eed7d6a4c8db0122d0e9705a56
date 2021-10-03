package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1137:int = 1;
      
      public static const const_944:int = 2;
      
      public static const const_977:int = 3;
      
      public static const const_1649:int = 4;
       
      
      private var _index:int;
      
      private var var_2583:String;
      
      private var var_2584:String;
      
      private var var_2582:Boolean;
      
      private var var_2581:String;
      
      private var var_992:String;
      
      private var var_2585:int;
      
      private var var_2270:int;
      
      private var _type:int;
      
      private var var_2307:String;
      
      private var var_978:GuestRoomData;
      
      private var var_977:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2583 = param1.readString();
         this.var_2584 = param1.readString();
         this.var_2582 = param1.readInteger() == 1;
         this.var_2581 = param1.readString();
         this.var_992 = param1.readString();
         this.var_2585 = param1.readInteger();
         this.var_2270 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1137)
         {
            this.var_2307 = param1.readString();
         }
         else if(this._type == const_977)
         {
            this.var_977 = new PublicRoomData(param1);
         }
         else if(this._type == const_944)
         {
            this.var_978 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_978 != null)
         {
            this.var_978.dispose();
            this.var_978 = null;
         }
         if(this.var_977 != null)
         {
            this.var_977.dispose();
            this.var_977 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2583;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2584;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2582;
      }
      
      public function get picText() : String
      {
         return this.var_2581;
      }
      
      public function get picRef() : String
      {
         return this.var_992;
      }
      
      public function get folderId() : int
      {
         return this.var_2585;
      }
      
      public function get tag() : String
      {
         return this.var_2307;
      }
      
      public function get userCount() : int
      {
         return this.var_2270;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_978;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_977;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1137)
         {
            return 0;
         }
         if(this.type == const_944)
         {
            return this.var_978.maxUserCount;
         }
         if(this.type == const_977)
         {
            return this.var_977.maxUsers;
         }
         return 0;
      }
   }
}
