/// @description Insert description here
// You can write your code in this editor

pl = obj_player;
	
if pl.key == true {
	instance_create_layer(-1, -1, "NavBar", obj_textbox);
	tb = obj_textbox;
	tb.text[1] = "Congratulation !";
	tb.text[2] = "You win.";
}