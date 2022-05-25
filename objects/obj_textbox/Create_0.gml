/// @description Insert description here
// You can write your code in this editor


// text box

textbox_width = 256;
textbox_height = 56;

border_x = 8; // border of text to textbox
sep = 16; // sep between line
w = textbox_width - border_x * 2

// text
text = [""];
page = 0;
page_number = 0;
draw_char = 0;
text_speed = 0.5;

// setup

setup = false;

// when textbox appear, pausing player

pl = obj_player;
en = obj_enemy;

pl.freeze = true;
en.freeze = true;
