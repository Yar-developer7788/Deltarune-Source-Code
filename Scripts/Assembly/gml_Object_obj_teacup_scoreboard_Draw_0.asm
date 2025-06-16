.localvar 2 arguments
.localvar 15230 ones 17946
.localvar 15231 tens 17947

:[0]
call.i draw_self(argc=0)
popz.v
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [4]

:[1]
push.v self.theScore
pushi.e 70
cmp.i.v EQ
bf [4]

:[2]
push.i 65280
pop.v.i self.scoreCol
push.v self.treasure
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 136
conv.i.v
pushi.e 1684
conv.i.v
pushi.e 2676
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.treasure

:[4]
push.v self.image_alpha
push.v self.scoreCol
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 2573
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.theScore
pushi.e 10
mod.i.v
pop.v.v local.ones
push.v self.theScore
pushi.e 10
rem.i.v
pop.v.v local.tens
push.v self.theScore
pushi.e 0
cmp.i.v GT
bf [end]

:[5]
pushi.e 1
conv.i.v
push.v self.scoreCol
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushloc.v local.ones
pushi.e 2571
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.scoreCol
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 10
pushloc.v local.tens
add.v.i
pushi.e 2571
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]