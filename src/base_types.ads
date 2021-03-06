--
-- Created by ada_generator.py on 2013-11-27 11:28:58.501483
-- 
with Ada.Text_IO; 
with Ada.Strings.Bounded; 
with Ada.Strings.Unbounded.Text_IO;
with Ada.Strings.Maps;
with Ada.Strings.Unbounded;
with Ada.Strings;
with Ada.Characters.Conversions;
with Ada.Characters.Latin_1;
with Ada.Calendar;

-- === CUSTOM IMPORTS START ===
-- === CUSTOM IMPORTS END ===

package Base_Types is

   use Ada.Strings.Bounded;
   use Ada.Strings.Unbounded;
   use Ada.Text_IO;
   
      -- === CUSTOM TYPES START ===
   -- === CUSTOM TYPES END ===

   
   --
   --  standard types we use everywhere
   --
   package wconv renames Ada.Characters.Conversions;
   package stda renames Ada.Characters.Latin_1;
   
   type Real is new Long_Float;
   type Decimal is delta 0.01 digits 10;
   type Big_Integer is range -9223372036854775808 .. 9223372036854775807;
   --
   --
   --
   DOS_NEW_LINE  : constant String (1 .. 2) := (stda.CR, stda.LF);
   UNIX_NEW_LINE : constant String (1 .. 1) := (1 => stda.LF);

   
   
   MISSING_I_KEY : constant := -12345678;
   MISSING_S_KEY : constant String := "-12345678";
   MISSING_W_KEY : constant Unbounded_String := To_Unbounded_String("-12345678");
   MISSING_R_KEY : constant := -12345678.0;
   MISSING_T_KEY : constant Ada.Calendar.Time := Ada.Calendar.Time_Of( 2099, 11, 11, 9.0 );
   
   FIRST_DATE    : constant Ada.Calendar.Time := Ada.Calendar.Time_Of( 1901, 1, 1, 0.0 );
   
   --
   -- used for declaring strings as fixed sets of characters
   --
   PADDING_CHAR : constant Character := '@';
   --
   -- used for trim calls on retrieved strings
   --
   PADDING_CHAR_SET : constant Ada.Strings.Maps.Character_Set := 
      Ada.Strings.Maps.To_Set ( PADDING_CHAR );

   Null_Wide : constant Unbounded_String := Null_Unbounded_String;
   
   function Slice_To_Unbounded( s : String; start : Positive; stop : Natural ) return Unbounded_String;
   
   -- 
   --  some standard io packages typed for the above
   --
   package fix_io is new Ada.Text_IO.Decimal_IO (Decimal);
   package real_io is new Ada.Text_IO.Float_IO (real);
   package std_io is new Ada.Text_IO.Integer_IO (Integer);
   package string_io renames Ada.Text_IO;
   package Str80 is new Ada.Strings.Bounded.Generic_Bounded_Length(80);
   -- === CUSTOM PROCS START ===
   -- === CUSTOM PROCS END ===

end Base_Types;
