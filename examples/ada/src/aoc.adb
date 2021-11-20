with Ada.Text_IO; use Ada.Text_IO;
with Ada.Environment_Variables;
with Ada.Containers.Vectors;

procedure Aoc is
  package Integer_Vectors is new Ada.Containers.Vectors
    (Index_Type   => Natural,
      Element_Type => Integer);

  use Integer_Vectors;

  Input: Vector;

  procedure ReadInput is
    F: File_Type;
  begin
    Open (F, In_File, "input.txt");
    while not End_Of_File (F) loop
        Input.Append (Integer'Value(Get_Line (F)));
    end loop;
    Close (F);
  end ReadInput;

  procedure SolutionPart1 is
    Sum: Integer := 0;
  begin
    for I of Input loop
      Sum := Sum + I;
    end loop;
    Put_Line(Integer'Image(Sum));
  end SolutionPart1;

  procedure SolutionPart2 is
    Product: Integer := 1;
  begin
    for I of Input loop
      Product := Product * I;
    end loop;
    Put_Line(Integer'Image(Product));
  end SolutionPart2;

begin
  Put_Line ("Ada");
  ReadInput;
  if not Ada.Environment_Variables.Exists("part") then
    SolutionPart1;
  elsif Ada.Environment_Variables.Value("part") = "part1" then
    SolutionPart1;
  elsif Ada.Environment_Variables.Value("part") = "part2" then
    SolutionPart2;
  else
    Put_Line ("Unknown part " & Ada.Environment_Variables.Value("part"));
  end if;
end Aoc;