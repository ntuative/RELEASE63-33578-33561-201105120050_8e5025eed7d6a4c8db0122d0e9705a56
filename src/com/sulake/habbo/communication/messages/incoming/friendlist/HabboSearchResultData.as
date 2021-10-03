package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2195:int;
      
      private var var_2049:String;
      
      private var var_2291:String;
      
      private var var_2286:Boolean;
      
      private var var_2288:Boolean;
      
      private var var_2290:int;
      
      private var var_2289:String;
      
      private var var_2287:String;
      
      private var var_1659:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2195 = param1.readInteger();
         this.var_2049 = param1.readString();
         this.var_2291 = param1.readString();
         this.var_2286 = param1.readBoolean();
         this.var_2288 = param1.readBoolean();
         param1.readString();
         this.var_2290 = param1.readInteger();
         this.var_2289 = param1.readString();
         this.var_2287 = param1.readString();
         this.var_1659 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2195;
      }
      
      public function get avatarName() : String
      {
         return this.var_2049;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2291;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2286;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2288;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2290;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2289;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2287;
      }
      
      public function get realName() : String
      {
         return this.var_1659;
      }
   }
}
