.localvar 2 arguments

:[0]
pushi.e 15
pop.v.i self.targ
pushi.e 1196
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 260
conv.i.v
call.i instance_number(argc=1)
push.v self.targ
cmp.v.v EQ
bf [4]

:[2]
pushi.e 129
conv.i.v
push.v other.y
push.v other.x
call.i gml_Script_instance_create(argc=3)
pop.v.v 1196.key
pushi.e 2314
push.v 1196.key
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v 1196.key
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v 1196.key
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v 1196.dogcon
pushi.e 70
cmp.i.v EQ
bf [4]

:[3]
pushi.e 71
pop.v.i 1196.dogcon

:[4]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [6]

:[5]
pushi.e 1199
conv.i.v
push.v self.y
pushi.e 34
add.i.v
push.v self.x
pushi.e 25
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushbltn.v builtin.room
pushi.e 1196
cmp.i.v EQ
bf [8]

:[7]
push.v self.vspeed
push.d 0.75
mul.d.v
pop.v.v self.vspeed

:[8]
pushi.e 260
conv.i.v
call.i instance_number(argc=1)
push.v self.targ
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [10]

:[9]
pushi.e 1196
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
pushi.e 1
pop.v.i self.vertState
pushi.e 1
pop.v.i global.interact

:[end]