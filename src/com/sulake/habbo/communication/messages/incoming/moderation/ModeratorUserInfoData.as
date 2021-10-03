package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2160:int;
      
      private var var_2163:int;
      
      private var var_845:Boolean;
      
      private var var_2161:int;
      
      private var var_2158:int;
      
      private var var_2159:int;
      
      private var var_2162:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2160 = param1.readInteger();
         this.var_2163 = param1.readInteger();
         this.var_845 = param1.readBoolean();
         this.var_2161 = param1.readInteger();
         this.var_2158 = param1.readInteger();
         this.var_2159 = param1.readInteger();
         this.var_2162 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2160;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2163;
      }
      
      public function get online() : Boolean
      {
         return this.var_845;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2161;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2158;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2159;
      }
      
      public function get banCount() : int
      {
         return this.var_2162;
      }
   }
}
