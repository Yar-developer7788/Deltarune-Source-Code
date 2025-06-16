.localvar 2 arguments
.localvar 21744 zobj 17698

:[0]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
pushi.e 353
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.zobj
pushi.e 2111
pushloc.v local.zobj
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 12
pushloc.v local.zobj
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.zcounter
pushi.e 40
mul.i.v
pushloc.v local.zobj
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 1
pushloc.v local.zobj
pushi.e -9
pop.v.i [stacktop]self.friction
pushi.e 2
pop.v.i self.timer
push.v self.zcounter
push.e 1
add.i.v
pop.v.v self.zcounter

:[2]
push.v self.zcounter
pushi.e 9
cmp.i.v GTE
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]