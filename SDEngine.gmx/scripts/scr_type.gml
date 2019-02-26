//This is used to calculate line breaks before the text begins to type
//out, to prevent line breaks in the middle of a word.

if string_copy(str[message_display],1,position) != str[message_display]
{
   while(string_copy(str[message_display],1,position) != str[message_display])
   {
      position += 1 //Adds one to the position.
      //width_counter += string_width(string_char_at(str[message_display],position)) //Adds the width of the next character to the width counter

      if string_char_at(str[message_display],position) = " " //If the character at the position pst is a space...
      {
         last_space = position //Update the lst_spc variable to pst.
      }
     
      /*if string_char_at(str[message_display],position) = "#" //If the character at the position pst is a line break symbol...
      {
         width_counter = 0 //Restart the width counter. This is used in case you want to add manual line breaks.
      }

      if width_counter > global.line_len //If the width of the characters exceeds the number that's allowed in a line...
      {
         write_line(string(width_counter))
         write_line(string(global.line_len))
         width_counter = string_width(string_copy(display_string,last_space+1,string_length(display_string)-last_space+1)) //When creating a line break, make sure that the width of the extra letters that are being placed into the next row are being counted for.
         str[message_display] = string_copy(str[message_display],1,last_space)+"#   "+string_copy(str[message_display],last_space+1,string_length(str[message_display])-last_space) //Add a line break after the last space.
      }*/
   }
}
else
{
   display_position += 1 //Adds one to the position of the display string.
   display_string = string_copy(str[message_display],1,display_position) //Update the string that's being displayed.
}
