package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1435:Number = 12;
       
      
      private var var_2559:int = -1;
      
      private var var_2562:int = -2;
      
      private var var_207:Vector3d = null;
      
      private var var_1191:Number = 0;
      
      private var var_1475:Number = 0;
      
      private var var_1862:Boolean = false;
      
      private var var_183:Vector3d = null;
      
      private var var_1859:Vector3d;
      
      private var var_2560:Boolean = false;
      
      private var var_2556:Boolean = false;
      
      private var var_2557:Boolean = false;
      
      private var var_2553:Boolean = false;
      
      private var var_2554:int = 0;
      
      private var var_2555:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2558:int = 0;
      
      private var var_2561:int = 0;
      
      private var var_1861:int = -1;
      
      private var var_1863:int = 0;
      
      private var var_1860:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1859 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_183;
      }
      
      public function get targetId() : int
      {
         return this.var_2559;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2562;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1859;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2560;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2556;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2557;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2553;
      }
      
      public function get screenWd() : int
      {
         return this.var_2554;
      }
      
      public function get screenHt() : int
      {
         return this.var_2555;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2558;
      }
      
      public function get roomHt() : int
      {
         return this.var_2561;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1861;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_207 != null && this.var_183 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2559 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1859.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2562 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2560 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2556 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2557 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2553 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2554 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2555 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1860 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2558 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2561 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1861 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_207 == null)
         {
            this.var_207 = new Vector3d();
         }
         if(this.var_207.x != param1.x || this.var_207.y != param1.y || this.var_207.z != param1.z)
         {
            this.var_207.assign(param1);
            this.var_1863 = 0;
            _loc2_ = Vector3d.dif(this.var_207,this.var_183);
            this.var_1191 = _loc2_.length;
            this.var_1862 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_207 = null;
         this.var_183 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_183 != null)
         {
            return;
         }
         this.var_183 = new Vector3d();
         this.var_183.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_183 == null)
         {
            this.var_183 = new Vector3d();
         }
         this.var_183.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_207 != null && this.var_183 != null)
         {
            ++this.var_1863;
            if(this.var_1860)
            {
               this.var_1860 = false;
               this.var_183 = this.var_207;
               this.var_207 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_207,this.var_183);
            if(_loc3_.length > this.var_1191)
            {
               this.var_1191 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_183 = this.var_207;
               this.var_207 = null;
               this.var_1475 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1191);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1191 / const_1435;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1862)
               {
                  if(_loc7_ < this.var_1475)
                  {
                     _loc7_ = this.var_1475;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1862 = false;
                  }
               }
               this.var_1475 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_183 = Vector3d.sum(this.var_183,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1861 = -1;
      }
   }
}
