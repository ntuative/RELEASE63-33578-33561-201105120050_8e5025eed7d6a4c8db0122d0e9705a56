package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_1018:String = "avatar";
      
      private static const const_646:Number = -0.01;
      
      private static const const_647:Number = -0.409;
      
      private static const const_1020:int = 2;
      
      private static const const_1343:Array = [0,0,0];
      
      private static const const_1429:int = 3;
       
      
      private var var_625:AvatarVisualizationData = null;
      
      private var var_487:Map;
      
      private var var_515:Map;
      
      private var var_1094:int = 0;
      
      private var var_938:Boolean;
      
      private var var_623:String;
      
      private var var_936:String;
      
      private var var_1093:int = 0;
      
      private var var_627:BitmapDataAsset;
      
      private var var_942:BitmapDataAsset;
      
      private var var_1633:int = -1;
      
      private var var_1797:int = -1;
      
      private var var_1796:int = -1;
      
      private const const_1019:int = 0;
      
      private const const_1891:int = 1;
      
      private const const_1903:int = 2;
      
      private const const_1902:int = 3;
      
      private const const_1344:int = 4;
      
      private var var_1861:int = -1;
      
      private var var_250:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1795:Boolean = false;
      
      private var var_1792:Boolean = false;
      
      private var var_1794:Boolean = false;
      
      private var var_1442:Boolean = false;
      
      private var var_646:Boolean = false;
      
      private var var_1360:int = 0;
      
      private var var_1440:int = 0;
      
      private var var_2367:int = 0;
      
      private var var_755:int = 0;
      
      private var var_754:int = 0;
      
      private var var_626:int = 0;
      
      private var var_1441:int = 0;
      
      private var var_1162:Boolean = false;
      
      private var var_1791:Boolean = false;
      
      private var var_1163:int = 0;
      
      private var var_753:int = 0;
      
      private var var_1793:Boolean = false;
      
      private var var_1161:int = 0;
      
      private var var_57:IAvatarImage = null;
      
      private var var_1077:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_487 = new Map();
         this.var_515 = new Map();
         this.var_938 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_487 != null)
         {
            this.resetImages();
            this.var_487.dispose();
            this.var_515.dispose();
            this.var_487 = null;
         }
         this.var_625 = null;
         this.var_627 = null;
         this.var_942 = null;
         super.dispose();
         this.var_1077 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1077;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_625 = param1 as AvatarVisualizationData;
         createSprites(this.const_1344);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_146)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_276) > 0 && param3);
            if(_loc5_ != this.var_1795)
            {
               this.var_1795 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_389) > 0;
            if(_loc5_ != this.var_1792)
            {
               this.var_1792 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_369) > 0;
            if(_loc5_ != this.var_1794)
            {
               this.var_1794 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_845) > 0 && param3);
            if(_loc5_ != this.var_1442)
            {
               this.var_1442 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_1136) > 0;
            if(_loc5_ != this.var_646)
            {
               this.var_646 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_135);
            if(_loc6_ != this.var_1360)
            {
               this.var_1360 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_277);
            if(_loc7_ != this.var_250)
            {
               this.var_250 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_854);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1092);
            if(_loc6_ != this.var_1440)
            {
               this.var_1440 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_460);
            if(_loc6_ != this.var_755)
            {
               this.var_755 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_487);
            if(_loc6_ != this.var_754)
            {
               this.var_754 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_404);
            if(_loc6_ != this.var_626)
            {
               this.var_626 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_199);
            if(_loc6_ != this.var_1633)
            {
               this.var_1633 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_754 > 0 && param1.getNumber(RoomObjectVariableEnum.const_404) > 0)
            {
               if(this.var_626 != this.var_754)
               {
                  this.var_626 = this.var_754;
                  _loc4_ = true;
               }
            }
            else if(this.var_626 != 0)
            {
               this.var_626 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_936);
            if(_loc6_ != this.var_1163)
            {
               this.var_1163 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.AVATAR_GENDER);
            if(_loc7_ != this.var_936)
            {
               this.var_936 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_189);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_146 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_623 != param1)
         {
            this.var_623 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_487)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_515)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_487.reset();
         this.var_515.reset();
         this.var_57 = null;
         _loc2_ = getSprite(this.const_1019);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1442 = false;
         }
         if(this.var_250 == "sit" || this.var_250 == "lay")
         {
            this.var_1441 = param1 / 2;
         }
         else
         {
            this.var_1441 = 0;
         }
         this.var_1791 = false;
         this.var_1162 = false;
         if(this.var_250 == "lay")
         {
            this.var_1162 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1791 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_487.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_515.getValue(_loc4_) as IAvatarImage;
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_625.getAvatar(this.var_623,param1,this.var_936,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_487.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_515.length >= const_1429)
                  {
                     this.var_515.remove(this.var_515.getKeys().shift());
                  }
                  this.var_515.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_475 != param1.getUpdateID() || this.var_1861 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1633;
            if(this.var_250 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1797 || param4)
            {
               _loc5_ = true;
               this.var_1797 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_57.setDirectionAngle(AvatarSetType.const_35,_loc6_);
            }
            if(_loc7_ != this.var_1796 || param4)
            {
               _loc5_ = true;
               this.var_1796 = _loc7_;
               if(this.var_1796 != this.var_1797)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_57.setDirectionAngle(AvatarSetType.const_51,_loc7_);
               }
            }
            var_475 = param1.getUpdateID();
            this.var_1861 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1891);
         this.var_627 = null;
         if(this.var_250 == "mv" || this.var_250 == "std")
         {
            _loc2_.visible = true;
            if(this.var_627 == null || param1 != var_89)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_627 = this.var_57.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_627 = this.var_57.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_627 != null)
               {
                  _loc2_.asset = this.var_627.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_627 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_942 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1903);
         if(this.var_646)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_942 = this.var_625.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_942 = this.var_625.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_250 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_250 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_942 != null)
            {
               _loc2_.asset = this.var_942.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1902);
         if(this.var_1163 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_625.getAvatarRendererAsset("number_" + this.var_1163 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_625.getAvatarRendererAsset("number_" + this.var_1163 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_250 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_250 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_753 = 1;
               this.var_1793 = true;
               this.var_1161 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_753 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1902);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1793)
         {
            ++this.var_1161;
            if(this.var_1161 < 10)
            {
               return false;
            }
            if(this.var_753 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1161 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_753 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_753 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_753 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_753 = 0;
               this.var_1793 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean, param4:Boolean) : void
      {
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:* = null;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:int = 0;
         var _loc31_:* = null;
         var _loc32_:* = null;
         var _loc5_:IRoomObject = object;
         if(_loc5_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_625 == null)
         {
            return;
         }
         var _loc6_:IRoomObjectModel = _loc5_.getModel();
         var _loc7_:Number = param1.scale;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:int = this.var_755;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = this.updateModel(_loc6_,_loc7_,param3);
         if(this.animateNumberBubble(_loc7_))
         {
            increaseUpdateId();
         }
         if(_loc13_ || _loc7_ != var_89 || this.var_57 == null)
         {
            if(_loc7_ != var_89)
            {
               _loc9_ = true;
               this.validateActions(_loc7_);
            }
            if(_loc11_ != this.var_755)
            {
               _loc12_ = true;
            }
            if(_loc9_ || this.var_57 == null || _loc12_)
            {
               this.var_57 = this.getAvatarImage(_loc7_,this.var_755);
               if(this.var_57 == null)
               {
                  return;
               }
               _loc8_ = true;
               _loc16_ = getSprite(this.const_1019);
               if(_loc16_ && this.var_57 && this.var_57.isPlaceholder())
               {
                  _loc16_.alpha = 150;
               }
               else if(_loc16_)
               {
                  _loc16_.alpha = 255;
               }
            }
            if(this.var_57 == null)
            {
               return;
            }
            this.updateShadow(_loc7_);
            if(_loc9_)
            {
               this.updateTypingBubble(_loc7_);
               this.updateNumberBubble(_loc7_);
            }
            _loc10_ = this.updateObject(_loc5_,param1,param3,true);
            this.updateActions(this.var_57);
            var_89 = _loc7_;
         }
         else
         {
            _loc10_ = this.updateObject(_loc5_,param1,param3);
         }
         var _loc14_:Boolean = _loc10_ || _loc13_ || _loc9_;
         var _loc15_:Boolean = (this.var_938 || this.var_1093 > 0) && param3;
         if(_loc14_)
         {
            this.var_1093 = const_1020;
         }
         if(_loc14_ || _loc15_)
         {
            increaseUpdateId();
            --this.var_1093;
            --this.var_1094;
            if(!(this.var_1094 <= 0 || _loc9_ || _loc13_ || _loc8_))
            {
               return;
            }
            this.var_57.updateAnimationByFrames(1);
            this.var_1094 = const_1020;
            _loc18_ = this.var_57.getCanvasOffsets();
            if(_loc18_ == null || _loc18_.length < 3)
            {
               _loc18_ = const_1343;
            }
            _loc17_ = getSprite(this.const_1019);
            if(_loc17_ != null)
            {
               _loc21_ = this.var_57.getImage(AvatarSetType.const_35,false);
               if(_loc21_ != null)
               {
                  _loc17_.asset = _loc21_;
               }
               if(_loc17_.asset)
               {
                  _loc17_.offsetX = -1 * _loc7_ / 2 + _loc18_[0];
                  _loc17_.offsetY = -_loc17_.asset.height + _loc7_ / 4 + _loc18_[1] + this.var_1441;
               }
               if(this.var_1162)
               {
                  if(this.var_1791)
                  {
                     _loc17_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc17_.relativeDepth = const_647 + _loc18_[2];
                  }
               }
               else
               {
                  _loc17_.relativeDepth = const_646 + _loc18_[2];
               }
            }
            _loc17_ = getSprite(this.const_1903);
            if(_loc17_ != null && _loc17_.visible)
            {
               if(!this.var_1162)
               {
                  _loc17_.relativeDepth = const_646 - 0.01 + _loc18_[2];
               }
               else
               {
                  _loc17_.relativeDepth = const_647 - 0.01 + _loc18_[2];
               }
            }
            this.var_938 = this.var_57.isAnimating();
            _loc19_ = this.const_1344;
            for each(_loc20_ in this.var_57.getSprites())
            {
               if(_loc20_.id == const_1018)
               {
                  _loc17_ = getSprite(this.const_1019);
                  _loc22_ = this.var_57.getLayerData(_loc20_);
                  _loc23_ = _loc20_.getDirectionOffsetX(this.var_57.getDirection());
                  _loc24_ = _loc20_.getDirectionOffsetY(this.var_57.getDirection());
                  if(_loc22_ != null)
                  {
                     _loc23_ += _loc22_.dx;
                     _loc24_ += _loc22_.dy;
                  }
                  if(_loc7_ < 48)
                  {
                     _loc23_ /= 2;
                     _loc24_ /= 2;
                  }
                  _loc17_.offsetX += _loc23_;
                  _loc17_.offsetY += _loc24_;
               }
               else
               {
                  _loc17_ = getSprite(_loc19_);
                  if(_loc17_ != null)
                  {
                     _loc17_.capturesMouse = false;
                     _loc17_.visible = true;
                     _loc25_ = this.var_57.getLayerData(_loc20_);
                     _loc26_ = 0;
                     _loc27_ = _loc20_.getDirectionOffsetX(this.var_57.getDirection());
                     _loc28_ = _loc20_.getDirectionOffsetY(this.var_57.getDirection());
                     _loc29_ = _loc20_.getDirectionOffsetZ(this.var_57.getDirection());
                     _loc30_ = 0;
                     if(_loc20_.hasDirections)
                     {
                        _loc30_ = this.var_57.getDirection();
                     }
                     if(_loc25_ != null)
                     {
                        _loc26_ = _loc25_.animationFrame;
                        _loc27_ += _loc25_.dx;
                        _loc28_ += _loc25_.dy;
                        _loc30_ += _loc25_.directionOffset;
                     }
                     if(_loc7_ < 48)
                     {
                        _loc27_ /= 2;
                        _loc28_ /= 2;
                     }
                     if(_loc30_ < 0)
                     {
                        _loc30_ += 8;
                     }
                     else if(_loc30_ > 7)
                     {
                        _loc30_ -= 8;
                     }
                     _loc31_ = this.var_57.getScale() + "_" + _loc20_.member + "_" + _loc30_ + "_" + _loc26_;
                     _loc32_ = this.var_57.getAsset(_loc31_);
                     if(_loc32_ == null)
                     {
                        continue;
                     }
                     _loc17_.asset = _loc32_.content as BitmapData;
                     _loc17_.offsetX = -_loc32_.offset.x - _loc7_ / 2 + _loc27_;
                     _loc17_.offsetY = -_loc32_.offset.y + _loc28_ + this.var_1441;
                     if(this.var_1162)
                     {
                        _loc17_.relativeDepth = const_647 - 0.001 * spriteCount * _loc29_;
                     }
                     else
                     {
                        _loc17_.relativeDepth = const_646 - 0.001 * spriteCount * _loc29_;
                     }
                     if(_loc20_.ink == 33)
                     {
                        _loc17_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc17_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc19_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_415,this.var_250,this._postureParameter);
         if(this.var_1360 > 0)
         {
            param1.appendAction(AvatarAction.const_317,AvatarAction.const_1807[this.var_1360]);
         }
         if(this.var_1440 > 0)
         {
            param1.appendAction(AvatarAction.const_711,this.var_1440);
         }
         if(this.var_2367 > 0)
         {
            param1.appendAction(AvatarAction.const_805,this.var_2367);
         }
         if(this.var_754 > 0)
         {
            param1.appendAction(AvatarAction.const_829,this.var_754);
         }
         if(this.var_626 > 0)
         {
            param1.appendAction(AvatarAction.const_846,this.var_626);
         }
         if(this.var_1795)
         {
            param1.appendAction(AvatarAction.const_300);
         }
         if(this.var_1794 || this.var_1442)
         {
            param1.appendAction(AvatarAction.const_591);
         }
         if(this.var_1792)
         {
            param1.appendAction(AvatarAction.const_288);
         }
         if(this.var_755 > 0)
         {
            param1.appendAction(AvatarAction.const_336,this.var_755);
         }
         param1.endActionAppends();
         this.var_938 = param1.isAnimating();
         var _loc2_:int = this.const_1344;
         for each(_loc3_ in this.var_57.getSprites())
         {
            if(_loc3_.id != const_1018)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
