/// @description Insert description here
// You can write your code in this editor

cam0_x = camera_get_view_x(view_camera[0]);
cam0_y = camera_get_view_y(view_camera[0]);
cam0_w = camera_get_view_width(view_camera[0]);

time = date_current_datetime();
time_in_sec = string_format(date_second_span(time, init_time), 1, 0);

sec  = time_in_sec mod 60;
mn   = time_in_sec div 60 mod 60;

if mn < 10 
	mn = "0" + string(mn);
if sec < 10
	sec = "0" + string(sec);

time_str =  string(mn) + ":" + string(sec);

draw_set_font(f_textbox);
draw_set_colour(c_white);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
				
draw_text(cam0_x + cam0_w / 2, cam0_y + 20, time_str);
