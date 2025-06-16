.localvar 2 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1499
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[2]
pushi.e 1
pop.v.i self.bellcon
pushi.e 0
pop.v.i self.myinteract
push.d 0.25
pop.v.d self.image_speed
pushi.e 1508
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.active
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 358
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v 1499.beatcon
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
pushbltn.v builtin.room
pushi.e 369
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1412
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [13]

:[9]
pushi.e 1412
conv.i.v
pushi.e 200
conv.i.v
pushi.e 2200
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.originalstarwalker
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [13]

:[10]
push.v self.originalstarwalker
pushi.e -9
pushenv [12]

:[11]
pushi.e 400
pop.v.i self.x

:[12]
popenv [11]

:[13]
pushi.e 1499
pushenv [21]

:[14]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i self.beatcon
pushi.e 0
pop.v.i self.beattimer
pushi.e 1351
pushenv [16]

:[15]
pushi.e 0
pop.v.i self.battlemode

:[16]
popenv [15]
pushi.e 1498
conv.i.v
push.v self.y
pushi.e 74
sub.i.v
push.v self.x
pushi.e 92
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dead
push.v self.dead
pushi.e -9
pushenv [18]

:[17]
pushi.e 1
pop.v.i self.walkcon
pushi.e 0
pop.v.i self.walktimer

:[18]
popenv [17]
push.v self.shadow
pushi.e -9
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]

:[21]
popenv [14]

:[end]