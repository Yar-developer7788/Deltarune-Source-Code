.localvar 2 arguments

:[0]
pushi.e 8
pop.v.i self.shake
push.v self.hp
pushi.e 3
sub.i.v
pop.v.v self.hp
push.v self.image_index
pushi.e 3
cmp.i.v LT
bf [2]

:[1]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index

:[2]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
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
bt [4]

:[3]
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
bt [3]

:[4]
popz.i
call.i instance_destroy(argc=0)
popz.v
push.v 697.difficulty
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 3
conv.i.v
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
b [end]

:[6]
push.d 1.5
conv.d.v
call.i gml_Script_scr_tensionheal(argc=1)
popz.v

:[end]