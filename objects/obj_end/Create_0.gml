/// @description Insert description here
// You can write your code in this editor


instance_create_layer(-1, -1, "ui", obj_textbox);

tb = obj_textbox;
tm = obj_timer;
qt = obj_quest;

// end text

save_time = tm.time_str;

instance_destroy(tm);
instance_destroy(qt);

if obj_enemy.win {
	
	tb.text[0] = "You lose.";
	tb.text[1] = "Enemy time is " + save_time + ".";
	tb.text[2] = "Press space to restart the game.";

}
else {
	
	tb.text[1] = "Congratulation !";
	tb.text[2] = "You win.";
	tb.text[3] = "Your time is " + save_time + ".";
	tb.text[4] = "Press space to restart the game.";

}



