.localvar 2 arguments

:[0]
push.v self.image_blend
call.i draw_set_color(argc=1)
popz.v
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.blend_mode
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
push.v self.blend_mode
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[2]
pushi.e 0
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i draw_rectangle(argc=5)
popz.v
push.v self.blend_mode
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[4]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]