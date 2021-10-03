package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_936:int;
      
      private var var_845:Boolean;
      
      private var var_1743:Boolean;
      
      private var var_623:String;
      
      private var var_1432:int;
      
      private var var_1661:String;
      
      private var var_1660:String;
      
      private var var_1659:String;
      
      private var var_2475:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_936 = param1.readInteger();
         this.var_845 = param1.readBoolean();
         this.var_1743 = param1.readBoolean();
         this.var_623 = param1.readString();
         this.var_1432 = param1.readInteger();
         this.var_1661 = param1.readString();
         this.var_1660 = param1.readString();
         this.var_1659 = param1.readString();
         this.var_2475 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_936;
      }
      
      public function get online() : Boolean
      {
         return this.var_845;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1743;
      }
      
      public function get figure() : String
      {
         return this.var_623;
      }
      
      public function get categoryId() : int
      {
         return this.var_1432;
      }
      
      public function get motto() : String
      {
         return this.var_1661;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1660;
      }
      
      public function get realName() : String
      {
         return this.var_1659;
      }
      
      public function get facebookId() : String
      {
         return this.var_2475;
      }
   }
}
