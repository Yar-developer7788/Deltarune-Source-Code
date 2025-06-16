.localvar 2 arguments
.localvar 20128 roomrange 8258

:[0]
push.v self.encountered
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bt [4]

:[2]
pushglb.v global.interact
pushi.e 4
cmp.i.v EQ
bt [4]

:[3]
push.v self.washit
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [end]

:[6]
pushi.e 1
pop.v.i self.encountered
pushi.e 0
pop.v.i global.specialbattle
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [30]

:[7]
pushbltn.v builtin.room
pushi.e 170
cmp.i.v EQ
bf [13]

:[8]
pushi.e 240
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.encountered

:[10]
popenv [9]
pushi.e 241
pushenv [12]

:[11]
pushi.e 1
pop.v.i self.encountered

:[12]
popenv [11]

:[13]
pushi.e 0
pop.v.i local.roomrange
pushbltn.v builtin.room
pushi.e 160
cmp.i.v GTE
bf [15]

:[14]
pushbltn.v builtin.room
pushi.e 179
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bt [24]

:[17]
pushbltn.v builtin.room
pushi.e 190
cmp.i.v GTE
bf [19]

:[18]
pushbltn.v builtin.room
pushi.e 200
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bt [24]

:[21]
pushbltn.v builtin.room
pushi.e 217
cmp.i.v EQ
bt [24]

:[22]
pushbltn.v builtin.room
pushi.e 194
cmp.i.v EQ
bt [24]

:[23]
pushbltn.v builtin.room
pushi.e 216
cmp.i.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [27]

:[26]
pushi.e 1
pop.v.i local.roomrange

:[27]
pushloc.v local.roomrange
conv.v.b
bf [29]

:[28]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
b [30]

:[29]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag

:[30]
pushi.e -5
pushi.e 9
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [36]

:[31]
pushglb.v global.encounterno
pushi.e 62
cmp.i.v NEQ
bf [33]

:[32]
pushglb.v global.encounterno
pushi.e 84
cmp.i.v NEQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.i 232336
setowner.e
push.s "battle.ogg"@10337
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic

:[36]
push.i 68097
setowner.e
pushi.e -300
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con

:[end]