/// @description Insert description here
// You can write your code in this editor

cam0_x = camera_get_view_x(view_camera[0]);
cam0_y = camera_get_view_y(view_camera[0]);
cam0_w = camera_get_view_width(view_camera[0]);
cam0_h = camera_get_view_height(view_camera[0]);
border = 10;

if obj_player.key == false 
	text[1] = "find the door key ...";
else
	text[1] = "open the door ...";
	
// setup
page_number = array_length(text);
for (p = 0; p < page_number; ++p) {
	text_length[p] = string_length(text[p]);
}


draw_set_font(f_textbox);
draw_set_colour(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);


obj_x = cam0_x + cam0_w - border;
obj_y = cam0_y + cam0_h - border;



if draw_char == text_length[page] { 
	// if have next_page
	if page < page_number - 1 {	
		++page;
		draw_char = 0;
	}
}


// draw text
if draw_char < text_length[page] {
	
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[page]);	
	
}

str = string_copy(text[page], 1, round(draw_char));
draw_text(obj_x, obj_y, str);