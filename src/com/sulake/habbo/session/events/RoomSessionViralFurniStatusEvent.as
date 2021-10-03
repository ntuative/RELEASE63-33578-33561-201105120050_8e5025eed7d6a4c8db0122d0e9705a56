package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_593:String = "RSVFS_STATUS";
      
      public static const const_473:String = "RSVFS_RECEIVED";
       
      
      private var var_186:String;
      
      private var var_195:int;
      
      private var var_405:int = -1;
      
      private var _shareId:String;
      
      private var var_2213:String;
      
      private var var_2211:Boolean;
      
      private var var_1516:int = 0;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_405 = this.status;
         this._shareId = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_195;
      }
      
      public function get status() : int
      {
         return this.var_405;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2213;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2211;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1516;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_195 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_405 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this._shareId = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2213 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2211 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1516 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_186;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_186 = param1;
      }
   }
}
