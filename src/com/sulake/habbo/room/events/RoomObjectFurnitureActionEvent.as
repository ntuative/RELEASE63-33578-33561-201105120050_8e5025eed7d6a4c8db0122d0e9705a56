package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_474:String = "ROFCAE_DICE_OFF";
      
      public static const const_495:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_464:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_477:String = "ROFCAE_STICKIE";
      
      public static const const_628:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_512:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_571:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_546:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_585:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_542:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_590:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_538:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_532:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_573:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_462:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_292:String = "ROFCAE_MOUSE_BUTTON";
      
      public static const const_301:String = "ROFCAE_MOUSE_ARROW";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
