package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1054:BigInteger;
      
      private var var_2571:BigInteger;
      
      private var var_1971:BigInteger;
      
      private var var_2723:BigInteger;
      
      private var var_1539:BigInteger;
      
      private var var_1970:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1539 = param1;
         this.var_1970 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1539.toString() + ",generator: " + this.var_1970.toString() + ",secret: " + param1);
         this.var_1054 = new BigInteger();
         this.var_1054.fromRadix(param1,param2);
         this.var_2571 = this.var_1970.modPow(this.var_1054,this.var_1539);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1971 = new BigInteger();
         this.var_1971.fromRadix(param1,param2);
         this.var_2723 = this.var_1971.modPow(this.var_1054,this.var_1539);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2571.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2723.toRadix(param1);
      }
   }
}
