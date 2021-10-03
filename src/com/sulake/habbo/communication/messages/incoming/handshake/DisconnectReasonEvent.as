package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2131:int = 0;
      
      public static const const_1569:int = 1;
      
      public static const const_1862:int = 2;
      
      public static const const_2009:int = 3;
      
      public static const const_2118:int = 4;
      
      public static const const_2041:int = 5;
      
      public static const const_1706:int = 10;
      
      public static const const_1999:int = 11;
      
      public static const const_2148:int = 12;
      
      public static const const_2005:int = 13;
      
      public static const const_2023:int = 16;
      
      public static const const_2074:int = 17;
      
      public static const const_2038:int = 18;
      
      public static const const_2100:int = 19;
      
      public static const const_1997:int = 20;
      
      public static const const_2046:int = 22;
      
      public static const const_2113:int = 23;
      
      public static const const_2103:int = 24;
      
      public static const const_1979:int = 25;
      
      public static const const_2145:int = 26;
      
      public static const const_2025:int = 27;
      
      public static const const_2054:int = 28;
      
      public static const const_1995:int = 29;
      
      public static const const_1953:int = 100;
      
      public static const const_2134:int = 101;
      
      public static const const_2139:int = 102;
      
      public static const const_2079:int = 103;
      
      public static const const_2078:int = 104;
      
      public static const const_1960:int = 105;
      
      public static const const_2099:int = 106;
      
      public static const const_2037:int = 107;
      
      public static const const_2112:int = 108;
      
      public static const const_2072:int = 109;
      
      public static const const_1957:int = 110;
      
      public static const const_2092:int = 111;
      
      public static const const_2059:int = 112;
      
      public static const const_2102:int = 113;
      
      public static const const_2007:int = 114;
      
      public static const const_2040:int = 115;
      
      public static const const_2056:int = 116;
      
      public static const const_1966:int = 117;
      
      public static const const_1965:int = 118;
      
      public static const const_1963:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1569:
            case const_1706:
               return "banned";
            case const_1862:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
