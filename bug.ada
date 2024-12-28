```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype My_Sub is My_Array(1..5);
   Sub_Arr : My_Sub;
begin
   Sub_Arr := My_Arr(1..5); -- Correct slicing
   -- Incorrect slicing that compiles but causes runtime issues
   Sub_Arr := My_Arr(6..10); 
   Ada.Text_IO.Put_Line("Sub Array:");
   for i in Sub_Arr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(Sub_Arr(i)));
   end loop;
exception
   when others =>
      Ada.Text_IO.Put_Line("Error occurred");
end Example;
```