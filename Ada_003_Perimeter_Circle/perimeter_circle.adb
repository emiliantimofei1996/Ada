with Ada.Text_IO; use Ada.Text_IO;

procedure Perimeter_Circle is
   -- C = 2(pg)r
   PI : constant := 3.14159;
   r : Float := 5.0;
   C : constant Float := 2.0*PI*r; 
   -- now cook
begin

   -- Let's show them
   Put_Line ("The radius that you choose is: " & Float'Image(r));
   Put_Line ("The perimeter with the radius r is: " & Float'Image (C));
   
end Perimeter_Circle;

--  with Ada.Text_IO; use Ada.Text_IO;

--  procedure Perimeter_Circle is
--     -- C = 2πr
--     PI : constant Float := 3.14159;
--     r : Float := 5.0;
--     C : Float;  -- Variabile normale, NON constant
--  begin
--     -- Calcola il perimetro
--     C := 2.0 * PI * r;

--     -- Mostra i risultati
--     Put_Line ("The radius that you choose is: " & Float'Image(r));
--     Put_Line ("The perimeter with the radius r is: " & Float'Image(C));
   
--  end Perimeter_Circle;
