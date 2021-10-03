package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_218;
         param1["bound_to_parent_rect"] = const_103;
         param1["child_window"] = const_1271;
         param1["embedded_controller"] = const_1289;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_836;
         param1["mouse_dragging_target"] = const_257;
         param1["mouse_dragging_trigger"] = const_416;
         param1["mouse_scaling_target"] = const_299;
         param1["mouse_scaling_trigger"] = const_547;
         param1["horizontal_mouse_scaling_trigger"] = const_255;
         param1["vertical_mouse_scaling_trigger"] = const_235;
         param1["observe_parent_input_events"] = const_1101;
         param1["optimize_region_to_layout_size"] = const_630;
         param1["parent_window"] = const_1155;
         param1["relative_horizontal_scale_center"] = const_217;
         param1["relative_horizontal_scale_fixed"] = const_158;
         param1["relative_horizontal_scale_move"] = const_427;
         param1["relative_horizontal_scale_strech"] = const_386;
         param1["relative_scale_center"] = const_1202;
         param1["relative_scale_fixed"] = const_869;
         param1["relative_scale_move"] = const_1094;
         param1["relative_scale_strech"] = const_1116;
         param1["relative_vertical_scale_center"] = const_211;
         param1["relative_vertical_scale_fixed"] = const_165;
         param1["relative_vertical_scale_move"] = const_274;
         param1["relative_vertical_scale_strech"] = const_350;
         param1["on_resize_align_left"] = const_909;
         param1["on_resize_align_right"] = const_511;
         param1["on_resize_align_center"] = const_520;
         param1["on_resize_align_top"] = const_784;
         param1["on_resize_align_bottom"] = const_594;
         param1["on_resize_align_middle"] = const_490;
         param1["on_accommodate_align_left"] = const_1152;
         param1["on_accommodate_align_right"] = const_468;
         param1["on_accommodate_align_center"] = const_874;
         param1["on_accommodate_align_top"] = const_1164;
         param1["on_accommodate_align_bottom"] = const_518;
         param1["on_accommodate_align_middle"] = const_798;
         param1["route_input_events_to_parent"] = const_595;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1260;
         param1["scalable_with_mouse"] = const_1290;
         param1["reflect_horizontal_resize_to_parent"] = const_606;
         param1["reflect_vertical_resize_to_parent"] = const_516;
         param1["reflect_resize_to_parent"] = const_333;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1274;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
