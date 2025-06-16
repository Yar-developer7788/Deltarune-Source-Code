.localvar 2 arguments

:[0]
push.v self.noleave
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 82
pushenv [4]

:[2]
pushi.e 1231
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i other.noleave

:[4]
popenv [2]

:[5]
push.v self.noleave
pushi.e 1
cmp.i.v EQ
bf [9]

:[6]
pushi.e 1231
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 287
conv.i.v
pushi.e 240
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.barrier
pushi.e 2
push.v self.barrier
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 8
push.v self.barrier
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.barrier
pushi.e -9
pop.v.b [stacktop]self.skip
pushi.e 2
pop.v.i self.noleave

:[9]
push.v self.noleave
pushi.e 2
cmp.i.v EQ
bf [end]

:[10]
pushi.e -5
pushi.e 352
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [14]

:[11]
push.v self.barrier
pushi.e -9
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[end]