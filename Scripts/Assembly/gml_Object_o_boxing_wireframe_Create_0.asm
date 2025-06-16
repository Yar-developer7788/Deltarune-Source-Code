.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.f
pushi.e 1
pop.v.i self.wireframe_boxing
pushi.e 0
pop.v.i self.disable_surface
pushi.e 0
pop.v.i self.draw_timer
pushi.e 0
pop.v.i self.draw_selection_buffer_timer
push.d -0.3
pop.v.d self.cyber_bg_alpha
pushi.e 0
pop.v.i self.introcon
pushi.e 0
pop.v.i self.introtimer
pushi.e 0
pop.v.i self.draw_janky_timer
pushi.e 0
pop.v.i self.o_boxingqueen_janky_x
pushi.e 0
pop.v.i self.o_boxingqueen_janky_y
pushi.e 0
pop.v.i self.o_boxingqueen_janky_sprite_index
pushi.e 0
pop.v.i self.o_boxingqueen_janky_image_index
pushi.e 0
pop.v.i self.o_boxingcontroller_janky_x
pushi.e 0
pop.v.i self.o_boxingcontroller_janky_y
pushi.e 0
pop.v.i self.o_boxingcontroller_sprite_index
pushi.e 0
pop.v.i self.o_boxingcontroller_image_index
pushi.e 0
pop.v.i self.pacifist_timer
pushi.e 0
pop.v.i self.pacifist_state
pushi.e 0
pop.v.i self.draw_draw_timer
push.s "o_boxing_wireframe_slash_Create_0_gml_28_0"@27598
conv.s.v
push.s "Press Z and X to Punch!"@27599
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.text
pushi.e 0
pop.v.i self.text_timer
pushi.e 0
pop.v.i self.text_reset_timer
pushi.e 0
pop.v.i self.down_arrow_con
pushi.e 0
pop.v.i self.zx_timer
pushi.e 0
pop.v.i self.zx_state
pushi.e 0
pop.v.i self.lose_timer
pushi.e 0
pop.v.i self.lose_state
pushi.e 0
pop.v.b self.talking
pushi.e 0
pop.v.i self.talktimer
pushi.e 0
pop.v.i self.talktype
pushi.e 0
pop.v.i self.introtalk
pushi.e 0
pop.v.i self.hintcount
pushi.e 0
pop.v.i self.losscount
pushi.e 0
pop.v.i self.hidebg
push.v self.disable_surface
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
pushi.e 240
conv.i.v
pushi.e 320
conv.i.v
call.i surface_create(argc=2)
pop.v.v self.surface
push.v self.surface
call.i surface_set_target(argc=1)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushi.e 120
conv.i.v
pushi.e 160
conv.i.v
push.v self.surface
call.i draw_surface(argc=3)
popz.v
pushi.e -1000
pop.v.i self.depth

:[end]