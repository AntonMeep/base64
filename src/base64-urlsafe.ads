with Ada.Streams; use Ada.Streams;

with Base64_Generic;
with Base64.Routines.Streams; use Base64.Routines.Streams;

package Base64.URLSafe is new Base64_Generic
  (Element       => Stream_Element, Index => Stream_Element_Offset,
   Element_Array => Stream_Element_Array,

   Character_To_Value => URLSafe_Character_To_Value,
   Value_To_Character => URLSafe_Value_To_Character, Padding => '=');
