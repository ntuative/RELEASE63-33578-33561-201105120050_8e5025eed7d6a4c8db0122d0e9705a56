package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2058:int = 1;
      
      public static const const_1876:int = 2;
       
      
      private var var_959:String;
      
      private var var_2764:int;
      
      private var var_2763:int;
      
      private var var_2762:int;
      
      private var var_2765:int;
      
      private var var_2761:Boolean;
      
      private var var_2746:Boolean;
      
      private var var_2748:int;
      
      private var var_2747:int;
      
      private var var_2759:Boolean;
      
      private var var_2766:int;
      
      private var var_2760:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_959 = param1.readString();
         this.var_2764 = param1.readInteger();
         this.var_2763 = param1.readInteger();
         this.var_2762 = param1.readInteger();
         this.var_2765 = param1.readInteger();
         this.var_2761 = param1.readBoolean();
         this.var_2746 = param1.readBoolean();
         this.var_2748 = param1.readInteger();
         this.var_2747 = param1.readInteger();
         this.var_2759 = param1.readBoolean();
         this.var_2766 = param1.readInteger();
         this.var_2760 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_959;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2764;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2763;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2762;
      }
      
      public function get responseType() : int
      {
         return this.var_2765;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2761;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2746;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2748;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2747;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2759;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2766;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2760;
      }
   }
}
