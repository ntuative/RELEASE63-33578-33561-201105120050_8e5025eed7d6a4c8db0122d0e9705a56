package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1354:IHabboTracking;
      
      private var var_1811:Boolean = false;
      
      private var var_2570:int = 0;
      
      private var var_1870:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1354 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1354 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1811 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2570 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1811)
         {
            return;
         }
         ++this.var_1870;
         if(this.var_1870 <= this.var_2570)
         {
            this.var_1354.track("toolbar",param1);
         }
      }
   }
}
