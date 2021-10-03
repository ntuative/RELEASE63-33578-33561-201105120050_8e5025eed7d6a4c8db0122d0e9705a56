package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_747:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1077)
         {
            _structure = null;
            _assets = null;
            var_248 = null;
            var_283 = null;
            var_623 = null;
            var_566 = null;
            var_335 = null;
            if(!var_1341 && var_46)
            {
               var_46.dispose();
            }
            var_46 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_796 = null;
            var_1077 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_747[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_747[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_415:
               switch(_loc3_)
               {
                  case AvatarAction.const_777:
                  case AvatarAction.const_496:
                  case AvatarAction.const_379:
                  case AvatarAction.const_930:
                  case AvatarAction.const_385:
                  case AvatarAction.const_742:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_336:
            case AvatarAction.const_711:
            case AvatarAction.const_288:
            case AvatarAction.const_805:
            case AvatarAction.const_829:
            case AvatarAction.const_846:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
