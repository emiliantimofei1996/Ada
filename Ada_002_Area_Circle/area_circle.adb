with Ada.Text_IO; use Ada.Text_IO;

procedure Area_Circle is
    -- Let's define a constant
    PI : constant Float := 3.14159;

    -- Let's define two variables
    Radius : Float := 5.0;
    Area : Float;

begin 
    -- Let's calculate the area of the circle
    Area := PI * Radius ** 2;

    -- Let's print the result
    Put_Line ("The radius of the circle is: " & Float'Image (Radius));
    Put_Line ("The area of the circle is: " & Float'Image (Area));
    
-- Let's close the Area_Circle

end Area_Circle;