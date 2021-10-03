package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2987:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_82 = param1.desktop;
         var_61 = param1.var_1329 as WindowController;
         var_173 = param1.var_1330 as WindowController;
         var_162 = param1.renderer;
         var_872 = param1.var_1326;
         param2.begin();
         param2.end();
         param1.desktop = var_82;
         param1.var_1329 = var_61;
         param1.var_1330 = var_173;
         param1.renderer = var_162;
         param1.var_1326 = var_872;
      }
   }
}
