generic
   type Element is mod <>;
   type Index is range <>;
   type Element_Array is array (Index range <>) of Element;

   with function Character_To_Value (C : Character) return Element;
   with function Value_To_Character (E : Element) return Character;

   Padding : in Character := '=';
package Base64_Generic with
   Pure,
   Preelaborate
is
   Base64_Error : exception;

   function Encode (Input : Element_Array) return String;

   function Decode (Input : String) return Element_Array;
end Base64_Generic;
