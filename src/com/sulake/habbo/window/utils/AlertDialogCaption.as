package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var _text:String;
      
      private var var_2043:String;
      
      private var var_316:Boolean;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         this._text = param1;
         this.var_2043 = param2;
         this.var_316 = param3;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function set text(param1:String) : void
      {
         this._text = param1;
      }
      
      public function get toolTip() : String
      {
         return this.var_2043;
      }
      
      public function set toolTip(param1:String) : void
      {
         this.var_2043 = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.var_316;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_316 = param1;
      }
   }
}
