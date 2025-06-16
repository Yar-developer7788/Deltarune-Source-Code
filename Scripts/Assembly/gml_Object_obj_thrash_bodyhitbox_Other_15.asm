.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.active
conv.v.b
bf [2]

:[1]
push.v 730.duckmode
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 459
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion_marker
pushi.e 3
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 3
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.v self.depth
pushi.e 5
sub.i.v
push.v self.explosion_marker
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2275
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 30
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.endtime
push.v self.explosion_marker
pushi.e -9
pushenv [6]

:[5]
pushi.e 189
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[6]
popenv [5]
pushi.e 0
pop.v.i 729.advancespeed
pushi.e 0
pop.v.i 729.wheel_difficulty
pushi.e 5
pop.v.i self.deathtimer
pushi.e 0
pop.v.i self.active

:[end]