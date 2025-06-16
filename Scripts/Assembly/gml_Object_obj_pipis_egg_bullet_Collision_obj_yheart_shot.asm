.localvar 2 arguments

:[0]
pushi.e 8
pop.v.i self.shake
push.v self.hp
push.v other.damage
sub.v.v
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
push.v other.big
pushi.e 0
cmp.i.v EQ
bf [6]

:[3]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [5]

:[4]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[5]
popenv [4]

:[6]
push.v self.hp
pushi.e 1
cmp.i.v LT
bf [13]

:[7]
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
bt [9]

:[8]
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
bt [8]

:[9]
popz.i
call.i instance_destroy(argc=0)
popz.v
push.v 697.difficulty
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 2
conv.i.v
call.i gml_Script_scr_tensionheal(argc=1)
popz.v
b [12]

:[11]
pushi.e 3
conv.i.v
call.i gml_Script_scr_tensionheal(argc=1)
popz.v

:[12]
b [end]

:[13]
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
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 500
add.i.v
cmp.v.v LT
bf [end]

:[14]
push.v self.hspeed
push.d 1.05
div.d.v
pop.v.v self.hspeed

:[end]