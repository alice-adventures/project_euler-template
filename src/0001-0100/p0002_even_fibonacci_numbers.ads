--  ---------------------------------------------------------------------------
--
--  The following problem is taken from Project Euler:
--
--                 https://projecteuler.net/problem=2
--
--  Even Fibonacci numbers
--  ----------------------
--
--  Each new term in the Fibonacci sequence is generated by adding the
--  previous two terms. By starting with 1 and 2, the first 10 terms will be:
--
--                 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
--
--  By considering the terms in the Fibonacci sequence whose values do not
--  exceed four million, find the sum of the even-valued terms.
--
-------------------------------------------------------------------------------

with Ada.Strings.Unbounded;      use Ada.Strings.Unbounded;
with Project_Euler.CLI.Problems; use Project_Euler.CLI.Problems;

package P0002_Even_Fibonacci_Numbers is

   Problem_Number : constant Natural := 2;
   Title_Text     : constant String  := "Even Fibonacci numbers";
   Brief_Text     : constant String  :=
     "By considering the terms in the Fibonacci sequence whose values do " &
     "not exceed four million, find the sum of the even-valued terms.";

   type Problem_Type is new Problem_Interface with null record;

   overriding function Number (Problem : Problem_Type) return Natural is
     (Problem_Number);

   overriding function Title (Problem : Problem_Type) return String is
     (Title_Text);

   overriding function Brief (Problem : Problem_Type) return String is
     (Brief_Text);

   overriding procedure Configure_Options (Problem : Problem_Type) is null;

   overriding procedure Parse_Options (Problem : in out Problem_Type) is null;

   overriding function Answer
     (Problem : Problem_Type; Notes : in out Unbounded_String) return String;

end P0002_Even_Fibonacci_Numbers;