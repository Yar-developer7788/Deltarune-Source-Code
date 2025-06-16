.localvar 2 arguments
.localvar 21293 shovel 9288

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.shovel_start
conv.v.b
bf [end]

:[1]
push.v self.shovel_timer
push.e 1
sub.i.v
pop.v.v self.shovel_timer
push.v self.shovel_timer
pushi.e 0
cmp.i.v LTE
bf [end]

:[2]
push.v self.shovel_time
pop.v.v self.shovel_timer
pushi.e -5
pushi.e 335
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 335
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact

:[4]
pushi.e 324
conv.i.v
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
add.v.v
push.v self.x
push.v self.sprite_index
call.i sprite_get_width(argc=1)
add.v.v
pushi.e 20
conv.i.v
pushi.e -20
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.shovel
push.i 95000
pushloc.v local.shovel
pushi.e -9
pop.v.i [stacktop]self.depth

:[end]