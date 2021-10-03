package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1899:int;
      
      private var var_2775:int;
      
      private var var_759:int;
      
      private var var_531:Number;
      
      private var var_2773:Boolean;
      
      private var var_2774:int;
      
      private var var_2014:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_531);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2775 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2774 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2773 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_759;
         if(this.var_759 == 1)
         {
            this.var_531 = param1;
            this.var_1899 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_759);
            this.var_531 = this.var_531 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2773 && param3 - this.var_1899 >= this.var_2775)
         {
            this.var_759 = 0;
            if(this.var_2014 < this.var_2774)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_2014;
               this.var_1899 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
