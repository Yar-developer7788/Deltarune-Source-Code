.localvar 2 arguments
.localvar 25742 rembig 12932

:[0]
push.v self.hp
push.e 1
sub.i.v
pop.v.v self.hp
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 480
add.i.v
cmp.v.v LTE
bf [8]

:[1]
push.d 0.5
pop.v.d self.friction
push.v other.big
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.hspeed
pushi.e 8
add.i.v
pop.v.v self.hspeed
b [4]

:[3]
push.v self.hspeed
pushi.e 4
add.i.v
pop.v.v self.hspeed

:[4]
push.v other.big
pop.v.v local.rembig
pushi.e 650
pushenv [7]

:[5]
push.d 0.5
pop.v.d self.friction
push.v self.hspeed
pushi.e 2
add.i.v
pop.v.v self.hspeed
pushloc.v local.rembig
conv.v.b
bf [7]

:[6]
push.v self.hspeed
pushi.e 4
add.i.v
pop.v.v self.hspeed

:[7]
popenv [5]

:[8]
pushi.e 167
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 480
add.i.v
cmp.v.v GTE
bf [10]

:[9]
call.i gml_Script_camerax(argc=0)
pushi.e 480
add.i.v
pop.v.v self.x

:[10]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [12]

:[11]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[12]
popenv [11]

:[end]