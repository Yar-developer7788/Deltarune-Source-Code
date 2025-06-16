.localvar 2 arguments

:[0]
push.v self.skip
pushi.e 1
cmp.b.v EQ
bt [2]

:[1]
push.v self.isswitch
pushi.e 1
cmp.b.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.b self.flippable

:[5]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [13]

:[6]
push.v self.flip
pushi.e 0
cmp.b.v EQ
bf [8]

:[7]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [9]

:[8]
push.e 0

:[9]
bf [13]

:[10]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [12]

:[11]
pushi.e 5
pop.v.i self.onebuffer

:[12]
popenv [11]

:[13]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [20]

:[14]
pushi.e 0
pop.v.i self.flashamt
push.v self.laughtimer
push.e 1
add.i.v
pop.v.v self.laughtimer
push.v self.laughtimer
pushi.e 9
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.i self.image_index

:[16]
push.v self.laughtimer
pushi.e 9
mod.i.v
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i self.image_index

:[18]
push.v self.laughtimer
pushi.e 40
cmp.i.v GTE
bf [20]

:[19]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.laughtimer
pushi.e 0
pop.v.i self.con

:[20]
pushi.e 1159
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [22]

:[21]
push.v 1159.trackpos
pop.v.v self.trackpos

:[22]
push.v self.trackpos
push.d 18.862
cmp.d.v GTE
bf [24]

:[23]
push.v self.trackpos
push.d 18.902
cmp.d.v LTE
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 3
pop.v.i self.con

:[27]
pushbltn.v builtin.room
pushi.e 168
cmp.i.v EQ
bf [30]

:[28]
push.v self.extflag
push.s "treasure"@20321
cmp.s.v EQ
bf [30]

:[29]
pushi.e -5
pushi.e 138
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
pop.v.b self.image_index

:[30]
push.v self.decorative
pushi.e 1
cmp.b.v EQ
bf [end]

:[31]
pushi.e 0
pop.v.b self.flip

:[end]