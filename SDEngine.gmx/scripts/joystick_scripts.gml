#define joystick_scripts


#define joy_gmid
//Used internally to imitate Game Maker's handling of joystick IDs.
return max(argument0-1, 0);

#define joy_init
// joy_init()
//Call this at least once to initialize joy.  It is safe to call again.


//Only initialize once
if (global.ljoyInitialized = 1) return 0;
global.ljoyInitialized = 1;

var dll;
dll = "joydll.dll";

//Maintenance
global.ljoyInit = external_define(dll, "joy_init", dll_cdecl, ty_real, 0);
global.ljoyQuit = external_define(dll, "joy_close", dll_cdecl, ty_real, 0);
global.ljoyFind = external_define(dll, "joy_find", dll_cdecl, ty_real, 0);
global.ljoyUpdate = external_define(dll, "joy_update", dll_cdecl, ty_real, 0);
global.ljoyHi = external_define(dll, "joy_hi", dll_cdecl, ty_string, 0);


//Joysticks' info
global.ljoyCount = external_define(dll, "joy_count", dll_cdecl, ty_real, 0);
global.ljoyName = external_define(dll, "joy_name", dll_cdecl, ty_string, 1, ty_real);


//Axes
global.ljoyAxes = external_define(dll, "joy_axes", dll_cdecl, ty_real, 1, ty_real);
global.ljoyAxis = external_define(dll, "joy_axis", dll_cdecl, ty_real, 2, ty_real, ty_real);


//Buttons
global.ljoyButtons = external_define(dll, "joy_buttons", dll_cdecl, ty_real, 1, ty_real);
global.ljoyButton = external_define(dll, "joy_button", dll_cdecl, ty_real, 2, ty_real, ty_real);
global.ljoyPressed = external_define(dll, "joy_pressed", dll_cdecl, ty_real, 2, ty_real, ty_real);
global.ljoyReleased = external_define(dll, "joy_released", dll_cdecl, ty_real, 2, ty_real, ty_real);


//Hats
global.ljoyHats = external_define(dll, "joy_hats", dll_cdecl, ty_real, 1, ty_real);
global.ljoyHat = external_define(dll, "joy_hat", dll_cdecl, ty_real, 2, ty_real, ty_real);
global.ljoyHatX = external_define(dll, "joy_hat_x", dll_cdecl, ty_real, 2, ty_real, ty_real);
global.ljoyHatY = external_define(dll, "joy_hat_y", dll_cdecl, ty_real, 2, ty_real, ty_real);


//Trackballs
global.ljoyBalls = external_define(dll, "joy_balls", dll_cdecl, ty_real, 1, ty_real);
global.ljoyBallX = external_define(dll, "joy_ball_x", dll_cdecl, ty_real, 2, ty_real, ty_real);
global.ljoyBallY = external_define(dll, "joy_ball_y", dll_cdecl, ty_real, 2, ty_real, ty_real);



//Initialize the library
external_call(global.ljoyInit);


#define joy_update
// joy_update()
//Call this once per step.  Returns true when a known joystick is unplugged.

return external_call(global.ljoyUpdate);

#define joy_count
// joy_count()
//Returns the number of known joysticks.

return external_call(global.ljoyCount);

#define joy_name
// joy_name(id)
//Returns the OEM name of the joystick.  (if it is known)

return external_call(global.ljoyName, argument0);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_find
// joy_find()
//Call this to refresh the list of known joysticks.  Returns how many it finds.

//Joysticks may change order when this occurs, if new ones have been plugged in.
//Best for use in options dialogs or between segments of play.

return external_call(global.ljoyFind);

#define joy_hi
// joy_hi()
//A testing function.  Returns a pleasant greeting from the DLL.

return external_call(global.ljoyHi);

#define joy_axes
// joy_axes(id)
//Returns the number of axes on the given joystick.

return external_call(global.ljoyAxes, argument0);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_buttons
// joy_buttons(id)
//Returns the number of buttons on the joystick.

return external_call(global.ljoyButtons, argument0);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_hats
// joy_hats(id)
//Returns the number of POV hats (D-pads) on the joystick.

return external_call(global.ljoyHats, argument0);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_balls
// joy_balls(id)
//Returns the number of trackballs on the joystick.
//Understandably, this will be zero for all but the obscurest of players.

return external_call(global.ljoyBalls, argument0);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_axis
// joy_axis(id, axis)
//Returns the position (from -1 to 1) of the given axis on the joystick.

return external_call(global.ljoyAxis, argument0, argument1);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_x
// joy_x(id)
//Returns the position (from -1 to 1) of the first axis on the joystick.

return external_call(global.ljoyAxis, argument0, 0);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_y
// joy_y(id)
//Returns the position (from -1 to 1) of the second axis on the joystick.

return external_call(global.ljoyAxis, argument0, 1);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_z
// joy_z(id)
//Returns the position (from -1 to 1) of the third axis on the joystick.

return external_call(global.ljoyAxis, argument0, 2);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_r
// joy_r(id)
//Returns the position (from -1 to 1) of the fourth axis on the joystick.

return external_call(global.ljoyAxis, argument0, 3);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_u
// joy_u(id)
//Returns the position (from -1 to 1) of the fifth axis on the joystick.

return external_call(global.ljoyAxis, argument0, 4);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_v
// joy_v(id)
//Returns the position (from -1 to 1) of the sixth axis on the joystick.

return external_call(global.ljoyAxis, argument0, 5);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_button
// joy_button(id, button)
//Returns true if the given button (starting at 0) is held down.

return external_call(global.ljoyButton, argument0, argument1);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_pressed
// joy_pressed(id, button)
//Returns true if the given button (starting at 0) was pressed this step.
//  (NOTE: if joy_update is called more than once per step this can fail)

return external_call(global.ljoyPressed, argument0, argument1);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_released
// joy_released(id, button)
//Returns true if the given button (starting at 0) was released this step.
//  (NOTE: if joy_update is called more than once per step this can fail)

return external_call(global.ljoyReleased, argument0, argument1);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_hat
// joy_hat(id, hat)  [or joy_hat(id) for hat 0]
//Works like Game Maker's POV hat function.
//Returns -1 for a centered hat or an eigth-circle direction.
//  (directions go clockwise starting with 0 as up, around to 315 as up-left)

return external_call(global.ljoyHat, argument0, argument1);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_hat_x
// joy_hat_x(id, hat)  [or joy_hat_x(id) for hat 0]
//Returns the hat's horizontal position as -1 (left), 0 (center) or 1 (right).

return external_call(global.ljoyHatX, argument0, argument1);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_hat_y
// joy_hat_y(id, hat)  [or joy_hat_y(id) for hat 0]
//Returns the hat's vertical position as -1 (up), 0 (center) or 1 (down).

return external_call(global.ljoyHatY, argument0, argument1);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_ball_x
// joy_ball_x(id, ball)  [or joy_ball_x(id) for ball 0]
//Returns the horizontal movement (from -32768 to 32767) of the given ball.

return external_call(global.ljoyBallX, argument0, argument1);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_ball_y
// joy_ball_y(id, ball)  [or joy_ball_y(id) for ball 0]
//Returns the vertical movement (from -32768 to 32767) of the given ball.

return external_call(global.ljoyBallY, argument0, argument1);

//  NOTE THAT JOY'S IDs START FROM ZERO AND NOT ONE!!!

#define joy_list
// joy_list()
//Refreshes the list of joysticks and details them in a popup box.
//Useful for testing.

joy_find();
var count, info;
count = joy_count();
info = joy_hi() + "#";
info += "Joysticks: " + string(count) + "#";
var i;
for (var i = -1; i < 5; i += 1)
{
    info += string(i) + " -> " + joy_name(i) + "#";
}
show_message(info);