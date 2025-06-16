.localvar 2 arguments

:[0]
push.v self.crash
conv.v.b
not.b
bf [end]

:[1]
pushi.e 1014
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[2]
pushi.e 1014
pushenv [4]

:[3]
push.v self.car_crash_count
push.e 1
add.i.v
pop.v.v self.car_crash_count

:[4]
popenv [3]

:[5]
pushi.e 0
pop.v.i self.hspeed
pushi.e 1
pop.v.b self.crash
pushi.e 189
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.visible
pushi.e 128
conv.i.v
push.v self.y
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion
pushi.e 2275
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.explosion
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[7]
popenv [6]

:[end]