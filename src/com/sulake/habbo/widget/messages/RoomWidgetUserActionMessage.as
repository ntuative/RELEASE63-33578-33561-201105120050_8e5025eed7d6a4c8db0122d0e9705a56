package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_549:String = "RWUAM_WHISPER_USER";
      
      public static const const_499:String = "RWUAM_IGNORE_USER";
      
      public static const const_522:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_424:String = "RWUAM_KICK_USER";
      
      public static const const_507:String = "RWUAM_BAN_USER";
      
      public static const const_555:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_513:String = "RWUAM_RESPECT_USER";
      
      public static const const_621:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_601:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_540:String = "RWUAM_START_TRADING";
      
      public static const const_893:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_557:String = "RWUAM_KICK_BOT";
      
      public static const const_551:String = "RWUAM_REPORT";
      
      public static const const_623:String = "RWUAM_PICKUP_PET";
      
      public static const const_1800:String = "RWUAM_TRAIN_PET";
      
      public static const const_529:String = " RWUAM_RESPECT_PET";
      
      public static const const_388:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_849:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
