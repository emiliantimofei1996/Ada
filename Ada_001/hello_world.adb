-- Import of the central library
with Ada.Text_IO; use
Ada.Text_IO;

procedure Hello_World is
begin
    Put_Line("Hello World, here is Ada!");
end Hello_World;

-- By running:
-- gnatmake file_name.adb
-- And ./file_name.adb
-- Output: "Hello World, here is Ada!"