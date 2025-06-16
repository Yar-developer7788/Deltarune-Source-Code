.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [4]

:[3]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
popenv [3]

:[5]
pushi.e 1
pop.v.i self.timer
push.v self.x
pushi.e 3
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.i
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 3
pushi.e 6
conv.i.v
call.i random(argc=1)
sub.v.i
add.v.v
pop.v.v self.y
pushi.e 40
conv.i.v
pushi.e -40
conv.i.v
pushi.e 30
conv.i.v
pushi.e -30
conv.i.v
call.i choose(argc=4)
pop.v.v self.image_angle
pushi.e 3
pop.v.i self.image_index
pushi.e 656
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
pushi.e 3
conv.i.v
call.i random(argc=1)
push.v self.fx
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 2
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 45
pushi.e 90
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.fx
pushi.e -9
pop.v.v [stacktop]self.direction

:[end]