.localvar 2 arguments

:[0]
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -4
pop.v.i self.selected_object
pushi.e 0
pop.v.i self.mouse_held
pushi.e 0
pop.v.i self.mouse_held_r
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.show_invisible
pushi.e 0
pop.v.i self.show_all_object_xy
pushi.e 0
pop.v.i self.xy_camera_relative
pushi.e 0
pop.v.i self.actor_debug_x
pushi.e 0
pop.v.i self.actor_debug_y
pushi.e 0
pop.v.i self.actor_debug_xstart
pushi.e 0
pop.v.i self.actor_debug_ystart
pushi.e 20
pop.v.i self.gridsize
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 10
pop.v.i self.gridsize

:[4]
pushi.e 1
pop.v.i self.main_focus
pushi.e 3
pop.v.i self.mousebuffer
pushi.e 0
pop.v.i self.copybuffer
push.s " "@353
pop.v.s self.totalstring
pushi.e 0
pop.v.i self.actor_selected_before
pushi.e -1
pop.v.i self.actor_previously_selected
call.i gml_Script_camerax(argc=0)
pop.v.v self.panremx
call.i gml_Script_cameray(argc=0)
pop.v.v self.panremy
pushi.e 0
pop.v.i self.enable_mouse_wheel
pushi.e 0
pop.v.i self.old_right_click

:[end]