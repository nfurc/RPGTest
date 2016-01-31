///scr_dash_state
len = spd*3;

// Get hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Create the dash effect
var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index; // takes whatever sprite we're on and gives it to the dash effect
dash.image_index = image_index; // takes the exact frame in the animation
