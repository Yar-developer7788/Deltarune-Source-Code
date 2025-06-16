.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.xpos
pushi.e 0
pop.v.i self.xoffset
pushi.e 209
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.looping_bg
push.v self.sprite_index
push.v self.looping_bg
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 720
push.v self.looping_bg
pushi.e -9
pop.v.i [stacktop]self.width
push.v self.depth
push.v self.looping_bg
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.looping_bg
pushi.e -9
pop.v.i [stacktop]self.x_scale
pushi.e 1
push.v self.looping_bg
pushi.e -9
pop.v.i [stacktop]self.y_scale
pushi.e 0
pop.v.b self.auto_scroll_start
pushi.e 0
pop.v.b self.auto_scroll_stop

:[end]