package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2963:uint;
      
      private var var_149:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_278:IWindowContext;
      
      private var var_1306:IMouseDraggingService;
      
      private var var_1307:IMouseScalingService;
      
      private var var_1302:IMouseListenerService;
      
      private var var_1304:IFocusManagerService;
      
      private var var_1303:IToolTipAgentService;
      
      private var var_1305:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2963 = 0;
         this.var_149 = param2;
         this.var_278 = param1;
         this.var_1306 = new WindowMouseDragger(param2);
         this.var_1307 = new WindowMouseScaler(param2);
         this.var_1302 = new WindowMouseListener(param2);
         this.var_1304 = new FocusManager(param2);
         this.var_1303 = new WindowToolTipAgent(param2);
         this.var_1305 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1306 != null)
         {
            this.var_1306.dispose();
            this.var_1306 = null;
         }
         if(this.var_1307 != null)
         {
            this.var_1307.dispose();
            this.var_1307 = null;
         }
         if(this.var_1302 != null)
         {
            this.var_1302.dispose();
            this.var_1302 = null;
         }
         if(this.var_1304 != null)
         {
            this.var_1304.dispose();
            this.var_1304 = null;
         }
         if(this.var_1303 != null)
         {
            this.var_1303.dispose();
            this.var_1303 = null;
         }
         if(this.var_1305 != null)
         {
            this.var_1305.dispose();
            this.var_1305 = null;
         }
         this.var_149 = null;
         this.var_278 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1306;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1307;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1302;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1304;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1303;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1305;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
