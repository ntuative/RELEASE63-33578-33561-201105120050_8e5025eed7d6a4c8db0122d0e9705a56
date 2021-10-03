package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_693;
         param1["bitmap"] = const_870;
         param1["border"] = const_856;
         param1["border_notify"] = const_1782;
         param1["bubble"] = const_911;
         param1["bubble_pointer_up"] = const_1124;
         param1["bubble_pointer_right"] = const_1117;
         param1["bubble_pointer_down"] = const_1103;
         param1["bubble_pointer_left"] = const_1312;
         param1["button"] = const_588;
         param1["button_thick"] = const_896;
         param1["button_icon"] = const_1838;
         param1["button_group_left"] = const_914;
         param1["button_group_center"] = const_844;
         param1["button_group_right"] = const_690;
         param1["canvas"] = const_963;
         param1["checkbox"] = const_833;
         param1["closebutton"] = const_1163;
         param1["container"] = const_429;
         param1["container_button"] = const_825;
         param1["display_object_wrapper"] = const_775;
         param1["dropmenu"] = const_554;
         param1["dropmenu_item"] = const_556;
         param1["frame"] = const_425;
         param1["frame_notify"] = const_1605;
         param1["header"] = const_755;
         param1["html"] = const_1257;
         param1["icon"] = const_1284;
         param1["itemgrid"] = const_1199;
         param1["itemgrid_horizontal"] = const_580;
         param1["itemgrid_vertical"] = const_731;
         param1["itemlist"] = const_1186;
         param1["itemlist_horizontal"] = const_426;
         param1["itemlist_vertical"] = const_405;
         param1["label"] = const_618;
         param1["maximizebox"] = const_1850;
         param1["menu"] = const_1673;
         param1["menu_item"] = const_1831;
         param1["submenu"] = const_1263;
         param1["minimizebox"] = const_1795;
         param1["notify"] = const_1696;
         param1["null"] = const_843;
         param1["password"] = const_724;
         param1["radiobutton"] = const_821;
         param1["region"] = const_530;
         param1["restorebox"] = const_1577;
         param1["scaler"] = const_528;
         param1["scaler_horizontal"] = const_1660;
         param1["scaler_vertical"] = const_1711;
         param1["scrollbar_horizontal"] = const_505;
         param1["scrollbar_vertical"] = const_794;
         param1["scrollbar_slider_button_up"] = const_1261;
         param1["scrollbar_slider_button_down"] = const_1212;
         param1["scrollbar_slider_button_left"] = const_1254;
         param1["scrollbar_slider_button_right"] = const_1217;
         param1["scrollbar_slider_bar_horizontal"] = const_1280;
         param1["scrollbar_slider_bar_vertical"] = const_1297;
         param1["scrollbar_slider_track_horizontal"] = const_1288;
         param1["scrollbar_slider_track_vertical"] = const_1168;
         param1["scrollable_itemlist"] = const_1692;
         param1["scrollable_itemlist_vertical"] = const_492;
         param1["scrollable_itemlist_horizontal"] = const_1192;
         param1["selector"] = const_715;
         param1["selector_list"] = const_740;
         param1["submenu"] = const_1263;
         param1["tab_button"] = const_702;
         param1["tab_container_button"] = const_1204;
         param1["tab_context"] = const_393;
         param1["tab_content"] = const_1325;
         param1["tab_selector"] = const_753;
         param1["text"] = const_592;
         param1["input"] = const_956;
         param1["toolbar"] = const_1662;
         param1["tooltip"] = const_380;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
