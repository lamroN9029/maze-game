/// @description Insert description here
// You can write your code in this editor

if !freeze {
	
	right_key = keyboard_check(vk_right);
	left_key = keyboard_check(vk_left);
	up_key = keyboard_check(vk_up);
	down_key = keyboard_check(vk_down);

	if keyboard_check(vk_shift) {
	
		mul_speed = 1.25;
		
	}	
	else {
		
		mul_speed = 1;
		
	}
		

	x_speed = (right_key - left_key) * move_speed * mul_speed;
	y_speed = (down_key - up_key) * move_speed * mul_speed;
	
	// set sprite
	if y_speed == 0 {
		
		if x_speed > 0
			face = RIGHT;
		if x_speed < 0
			face = LEFT;
		
	}
	
	if x_speed > 0 && face == LEFT face = RIGHT;
	if x_speed < 0 && face == RIGHT face = LEFT;
	
	if x_speed == 0 {
		
		if y_speed > 0
			face = DOWN;
		if y_speed < 0
			face = UP;
	
	}
	
	if y_speed > 0 && face == UP face = DOWN;
	if y_speed < 0 && face == DOWN face = UP;
	
	sprite_index = sprite[face];

	// collisions

	if place_meeting(x + x_speed, y, obj_wall)
		x_speed = 0;
	if place_meeting(x, y + y_speed, obj_wall)
		y_speed = 0;
	
	// move 

	x += x_speed;
	y += y_speed;
	
	// animate 

	if x_speed == 0 and y_speed == 0 {
		
		image_speed = 0;
		image_index = 0;	// frame 0
		
	}
	else {
		
		image_speed = 2;
		
	}
	
}
else 
{
	
	image_speed = 0;
	
}

