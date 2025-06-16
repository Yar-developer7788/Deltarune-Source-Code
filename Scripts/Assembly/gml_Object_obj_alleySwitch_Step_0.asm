.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 129
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1214
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
push.v 1214.con
pushi.e 0
cmp.i.v NEQ
bf [6]

:[5]
pushi.e 0
pop.v.b self.caterpillarable

:[6]
push.v self.keeptoggled
pushi.e 0
cmp.i.v EQ
bf [37]

:[7]
push.v 1214.bothToggled
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 383
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.keepdown

:[9]
push.v self.keepdown
pushi.e 0
cmp.i.v EQ
bf [34]

:[10]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [26]

:[11]
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [13]

:[12]
push.v self.x
pushi.e 480
cmp.i.v GT
b [14]

:[13]
push.e 0

:[14]
bt [26]

:[15]
pushi.e 129
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [20]

:[16]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
b [21]

:[20]
push.e 0

:[21]
bt [26]

:[22]
pushi.e 276
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [24]

:[23]
push.v self.caterpillarable
pushi.e 1
cmp.b.v EQ
b [25]

:[24]
push.e 0

:[25]
b [27]

:[26]
push.e 1

:[27]
bf [31]

:[28]
push.v self.toggle
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[30]
pushi.e 1
pop.v.i self.toggle
b [34]

:[31]
push.v self.toggle
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 240
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[33]
pushi.e 0
pop.v.i self.toggle

:[34]
push.v self.keepdown
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.toggle

:[36]
push.v self.toggle
pop.v.v self.image_index

:[37]
push.v self.keeptoggled
pushi.e 1
cmp.i.v EQ
bf [end]

:[38]
pushi.e 1
pop.v.i self.image_index

:[end]