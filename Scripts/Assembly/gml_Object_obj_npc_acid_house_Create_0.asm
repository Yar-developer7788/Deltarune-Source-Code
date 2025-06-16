.localvar 2 arguments

:[0]
pushi.e 3182
conv.i.v
push.v self.house_y
push.v self.house_x
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.house_sprite
pushi.e 0
push.v self.house_sprite
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.house_sprite
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.house_sprite
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 0
pop.v.b self.bumped

:[end]