with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

-- AIRCRAFT FUEL MONITORING SYSTEM
-- Real aviation safety application
-- Monitors 4 fuel tanks, detects leaks, alerts crew

procedure Fuel_Monitor is
   
   -- CONSTANTS: Safety thresholds (liters)
   TANK_CAPACITY : constant Float := 10000.0;
   CRITICAL_LEVEL : constant Float := 2000.0;   -- 20% = red alert
   LOW_LEVEL : constant Float := 3000.0;        -- 30% = warning
   LEAK_THRESHOLD : constant Float := 100.0;    -- Loss per cycle
   
   -- ARRAYS: Four fuel tanks (Left Wing, Right Wing, Center, Tail)
   type Tank_Array is array (1..4) of Float;
   Current_Fuel : Tank_Array;
   Previous_Fuel : Tank_Array;
   
   type Tank_Name_Array is array (1..4) of String(1..12);
   Tank_Names : constant Tank_Name_Array := (
      "Left Wing   ",
      "Right Wing  ",
      "Center Tank ",
      "Tail Tank   "
   );
   
   -- Variables
   Cycle_Count : Integer := 0;
   Total_Fuel : Float;
   Fuel_Loss : Float;
   Continue_Monitoring : Character;
   
begin
   
   Put_Line ("========================================");
   Put_Line ("  AIRCRAFT FUEL MONITORING SYSTEM");
   Put_Line ("========================================");
   New_Line;
   
   -- INITIALIZE: Set initial fuel levels
   Put_Line ("INITIALIZATION: Enter fuel levels for each tank");
   Put_Line ("(Tank capacity: " & Float'Image(TANK_CAPACITY) & " liters)");
   New_Line;
   
   -- TODO 1: Use FOR LOOP to read initial fuel for all 4 tanks
   -- Hint: for I in 1..4 loop
   -- Display Tank_Names(I), read into Current_Fuel(I)
   -- Set Previous_Fuel(I) = Current_Fuel(I)
   
   
   
   New_Line;
   Put_Line ("========================================");
   Put_Line ("  MONITORING STARTED");
   Put_Line ("========================================");
   New_Line;
   
   -- MAIN LOOP: Continuous monitoring
   loop
      
      Cycle_Count := Cycle_Count + 1;
      
      Put_Line ("--- CYCLE" & Integer'Image(Cycle_Count) & " ---");
      New_Line;
      
      -- TODO 2: Read new fuel levels for all 4 tanks
      -- Use FOR LOOP like in TODO 1
      Put_Line ("Enter current fuel readings:");
      
      
      
      New_Line;
      
      -- TODO 3: Calculate total fuel across all tanks
      -- Initialize Total_Fuel := 0.0
      -- Use FOR LOOP to add each tank to Total_Fuel
      
      
      
      Put_Line ("TOTAL FUEL:" & Float'Image(Total_Fuel) & " liters");
      New_Line;
      
      -- ANALYSIS: Check each tank
      Put_Line ("TANK STATUS:");
      Put_Line ("----------------------------------------");
      
      -- TODO 4: FOR LOOP through all tanks to analyze each one
      -- For each tank I:
      --   a) Display tank name and current fuel
      --   b) Calculate Fuel_Loss = Previous_Fuel(I) - Current_Fuel(I)
      --   c) Use IF-ELSIF-ELSE to check:
      --      - If fuel < CRITICAL_LEVEL → "CRITICAL"
      --      - Elsif fuel < LOW_LEVEL → "WARNING"  
      --      - Else → "Normal"
      --   d) If Fuel_Loss > LEAK_THRESHOLD → alert leak
      --   e) Update Previous_Fuel(I) = Current_Fuel(I)
      
      
      
      
      
      
      
      Put_Line ("----------------------------------------");
      New_Line;
      
      -- TODO 5: BALANCE CHECK
      -- Calculate difference between Left Wing (tank 1) and Right Wing (tank 2)
      -- If difference > 500.0 → alert "WING IMBALANCE DETECTED"
      
      
      
      
      New_Line;
      Put ("Continue monitoring? (y/n): ");
      Get(Continue_Monitoring);
      Skip_Line;
      
      -- Exit condition
      exit when Continue_Monitoring /= 'y' and Continue_Monitoring /= 'Y';
      
      New_Line;
      Put_Line ("========================================");
      New_Line;
      
   end loop;
   
   New_Line;
   Put_Line ("========================================");
   Put_Line ("  MONITORING TERMINATED");
   Put_Line ("  Total cycles:" & Integer'Image(Cycle_Count));
   Put_Line ("========================================");
   
end Fuel_Monitor;