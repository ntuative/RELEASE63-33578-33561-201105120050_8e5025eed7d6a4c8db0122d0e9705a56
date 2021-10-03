package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_188:String;
      
      private var _text:ITextWindow;
      
      private var var_297:int;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function method_4(param1:int) : Boolean
      {
         this._text.text = this.var_188.substring(0,param1) + "...";
         return this._text.textHeight > this.var_297;
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         this.var_188 = param1;
         this._text = param2;
         this.var_297 = param3;
      }
   }
}
