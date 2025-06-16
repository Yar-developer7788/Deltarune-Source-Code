.localvar 2 arguments

:[0]
pushglb.v global.plot
pushi.e 170
cmp.i.v GTE
pop.v.b self.damaged
push.v self.damaged
pop.v.v self.damagedfx
push.v self.damaged
conv.v.b
bf [2]

:[1]
pushi.e 348
conv.i.v
b [3]

:[2]
pushi.e 261
conv.i.v

:[3]
pop.v.v self.head_sprite
pushi.e 0
pop.v.i self.head_index
push.v self.damaged
conv.v.b
bf [5]

:[4]
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 261
conv.i.v
call.i sprite_get_width(argc=1)
sub.v.v
b [6]

:[5]
pushi.e -1
conv.i.v

:[6]
pop.v.v self.head_x_pos
push.v self.damaged
conv.v.b
bf [8]

:[7]
call.i gml_Script_cameray(argc=0)
pushi.e 15
sub.i.v
b [9]

:[8]
pushi.e -1
conv.i.v

:[9]
pop.v.v self.head_y_pos
pushi.e 0
pop.v.i self.head_shake_x
pushi.e 0
pop.v.i self.head_shake_y
pushi.e 0
pop.v.i self.smoketimer
pushi.e 0
pop.v.i self.shaketimer
pushi.e 0
pop.v.i self.climb
pushi.e 0
pop.v.i self.climbtimer
push.v self.head_x_pos
pop.v.v self.rem_head_x_pos
push.v self.head_y_pos
pop.v.v self.rem_head_y_pos
pushi.e 0
pop.v.i self.static_happened
pushbltn.v builtin.room
pushi.e 207
cmp.i.v EQ
bf [13]

:[10]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
bf [12]

:[11]
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
pop.v.v self.head_y_pos
b [13]

:[12]
pushi.e -1
pop.v.i self.head_y_pos

:[13]
pushi.e 275
pop.v.i self.pilot_sprite
pushi.e 0
pop.v.i self.pilot_index
pushi.e 1
pop.v.i self.pilot_alpha
pushi.e 0
pop.v.b self.laugh
pushi.e 0
pop.v.i self.animsiner
pushi.e 0
pop.v.i self.goggles_index
pushi.e 0
pop.v.i self.highlight_index
pushi.e 0
pop.v.b self.release
pushi.e 0
pop.v.b self.release_fast
pushi.e 0
pop.v.b self.head_init
pushi.e 0
pop.v.b self.set_pos
pushi.e 0
pop.v.i self.anim_index
pushi.e 0
pop.v.b self.surprised
pushi.e 0
pop.v.b self.leave
pushi.e 0
pop.v.b self.leave_fast
pushi.e 0
pop.v.b self.unhappy
pushi.e 0
pop.v.b self.static_start
pushi.e 0
pop.v.b self.static_stop

:[end]