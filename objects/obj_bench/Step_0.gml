/// @description Insert description here
// You can write your code in this editor
if collision_rectangle(x + 4,  y, x + sprite_width - 4, y + 4, obj_player, true, true)
	image_alpha = 0.25;
else
	image_alpha = 1;
