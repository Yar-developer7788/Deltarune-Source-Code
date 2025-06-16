.localvar 2 arguments

:[0]
call.i instance_destroy(argc=0)
popz.v
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [8]

:[1]
push.v self.hp
push.d 0.5
sub.d.v
pop.v.v self.hp
push.v self.image_index
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
push.v self.image_index
push.d 0.5
add.d.v
pop.v.v self.image_index

:[3]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.hp
pushi.e 1
cmp.i.v LT
bf [7]

:[4]
pushi.e 658
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
push.d 1.5
push.v self.fx
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.5
push.v self.fx
pushi.e -9
pop.v.d [stacktop]self.image_yscale
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
pushi.e 656
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
pushi.e 2
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [5]

:[6]
popz.i
call.i instance_destroy(argc=0)
popz.v
b [8]

:[7]
pushi.e 656
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
push.v self.image_index
push.v self.fx
pushi.e -9
pop.v.v [stacktop]self.image_index

:[8]
popenv [1]

:[end]