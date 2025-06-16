.localvar 2 arguments

:[0]
push.v self.doorEntrance
call.i is_real(argc=1)
conv.v.b
bf [4]

:[1]
push.v self.doorEntrance
pushi.e -1
cmp.i.v NEQ
bf [3]

:[2]
push.v self.doorEntrance
pop.v.v global.entrance

:[3]
b [6]

:[4]
push.v self.doorEntrance
call.i is_string(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.doorEntrance
call.i string_upper(argc=1)
call.i ord(argc=1)
pushi.e 65
sub.i.v
pushi.e 1
add.i.v
pop.v.v global.entrance

:[6]
push.v self.doorSound2
pushi.e -1
cmp.i.v NEQ
bf [8]

:[7]
push.v self.doorSound2
call.i gml_Script_snd_play(argc=1)
popz.v

:[8]
push.v self.doorFacing
pushi.e -1
cmp.i.v NEQ
bf [10]

:[9]
push.v self.doorFacing
pop.v.v global.facing

:[10]
push.v self.doorPostDelay
pushi.e 1
cmp.i.v GT
bf [12]

:[11]
push.i 231204
setowner.e
push.v self.doorPostDelay
pushi.e -5
pushi.e 21
pop.v.v [array]self.flag
b [end]

:[12]
push.i 231204
setowner.e
pushi.e -10
conv.i.v
pushi.e -5
pushi.e 21
pop.v.v [array]self.flag

:[end]