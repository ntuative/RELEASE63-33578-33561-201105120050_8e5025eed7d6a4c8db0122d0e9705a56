package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var var_2229:String = "";
      
      private var var_93:Vector3d = null;
      
      private var var_447:Vector3d = null;
      
      private var var_2231:int = 0;
      
      private var var_2230:String = null;
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         this._id = param1;
         this._category = param2;
         this.var_2229 = param3;
         this.var_93 = new Vector3d();
         this.var_93.assign(param4);
         this.var_447 = new Vector3d();
         this.var_447.assign(param5);
         this.var_2231 = param6;
         this.var_2230 = param7;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get operation() : String
      {
         return this.var_2229;
      }
      
      public function get loc() : Vector3d
      {
         return this.var_93;
      }
      
      public function get dir() : Vector3d
      {
         return this.var_447;
      }
      
      public function get typeId() : int
      {
         return this.var_2231;
      }
      
      public function get instanceData() : String
      {
         return this.var_2230;
      }
      
      public function dispose() : void
      {
         this.var_93 = null;
         this.var_447 = null;
      }
   }
}
