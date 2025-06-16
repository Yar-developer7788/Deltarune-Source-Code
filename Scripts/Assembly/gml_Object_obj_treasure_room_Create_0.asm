.localvar 2 arguments
.localvar 19733 qualify 7550

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.image_speed
pushi.e 104
pop.v.i self.itemflag
push.s "armor"@232
pop.v.s self.itemtype
pushi.e 4
pop.v.i self.itemidchest
pushi.e 0
pop.v.i self.close
pushi.e 0
pop.v.i self.extratext
pushi.e 0
pop.v.i self.extraevent
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[2]
pushbltn.v builtin.room
pushi.e 89
cmp.i.v EQ
bf [4]

:[3]
pushi.e 10
pop.v.i self.itemidchest
push.s "armor"@232
pop.v.s self.itemtype
pushi.e 118
pop.v.i self.itemflag

:[4]
pushbltn.v builtin.room
pushi.e 92
cmp.i.v EQ
bf [6]

:[5]
pushi.e 18
pop.v.i self.itemidchest
push.s "weapon"@231
pop.v.s self.itemtype
pushi.e 119
pop.v.i self.itemflag

:[6]
pushbltn.v builtin.room
pushi.e 103
cmp.i.v EQ
bf [8]

:[7]
pushi.e 10
pop.v.i self.itemidchest
push.s "armor"@232
pop.v.s self.itemtype
pushi.e 120
pop.v.i self.itemflag
pushi.e 1
pop.v.i self.extraevent

:[8]
pushbltn.v builtin.room
pushi.e 104
cmp.i.v EQ
bf [10]

:[9]
pushi.e 27
pop.v.i self.itemidchest
push.s "item"@229
pop.v.s self.itemtype
pushi.e 122
pop.v.i self.itemflag

:[10]
pushbltn.v builtin.room
pushi.e 105
cmp.i.v EQ
bf [12]

:[11]
pushi.e 2
pop.v.i self.itemidchest
push.s "item"@229
pop.v.s self.itemtype
pushi.e 123
pop.v.i self.itemflag

:[12]
pushbltn.v builtin.room
pushi.e 212
cmp.i.v EQ
bf [14]

:[13]
pushi.e 30
pop.v.i self.itemidchest
push.s "item"@229
pop.v.s self.itemtype
pushi.e 125
pop.v.i self.itemflag

:[14]
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [16]

:[15]
pushi.e 19
pop.v.i self.itemidchest
push.s "weapon"@231
pop.v.s self.itemtype
pushi.e 129
pop.v.i self.itemflag

:[16]
pushbltn.v builtin.room
pushi.e 132
cmp.i.v EQ
bf [18]

:[17]
pushi.e 14
pop.v.i self.itemidchest
push.s "weapon"@231
pop.v.s self.itemtype
pushi.e 130
pop.v.i self.itemflag

:[18]
pushbltn.v builtin.room
pushi.e 184
cmp.i.v EQ
bf [20]

:[19]
push.s "money"@6941
pop.v.s self.itemtype
pushi.e 133
pop.v.i self.itemflag
pushi.e 1
pop.v.i self.itemidchest

:[20]
pushbltn.v builtin.room
pushi.e 149
cmp.i.v EQ
bf [22]

:[21]
pushi.e 134
pop.v.i self.itemflag
push.s "armor"@232
pop.v.s self.itemtype
pushi.e 3
pop.v.i self.itemidchest

:[22]
pushbltn.v builtin.room
pushi.e 135
cmp.i.v EQ
bf [24]

:[23]
pushi.e 16
pop.v.i self.itemidchest
push.s "item"@229
pop.v.s self.itemtype
pushi.e 135
pop.v.i self.itemflag

:[24]
pushbltn.v builtin.room
pushi.e 174
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i self.itemidchest
push.s "item"@229
pop.v.s self.itemtype
pushi.e 136
pop.v.i self.itemflag

:[26]
pushbltn.v builtin.room
pushi.e 212
cmp.i.v EQ
bf [28]

:[27]
pushi.e 137
pop.v.i self.itemflag
pushi.e 30
pop.v.i self.itemidchest
push.s "item"@229
pop.v.s self.itemtype

:[28]
pushbltn.v builtin.room
pushi.e 195
cmp.i.v EQ
bf [30]

:[29]
pushi.e 3
pop.v.i self.itemidchest
push.s "item"@229
pop.v.s self.itemtype
pushi.e 139
pop.v.i self.itemflag

:[30]
pushbltn.v builtin.room
pushi.e 173
cmp.i.v EQ
bf [32]

:[31]
pushi.e 11
pop.v.i self.itemidchest
push.s "armor"@232
pop.v.s self.itemtype
pushi.e 141
pop.v.i self.itemflag

:[32]
pushbltn.v builtin.room
pushi.e 69
cmp.i.v EQ
bt [34]

:[33]
pushbltn.v builtin.room
pushi.e 189
cmp.i.v EQ
b [35]

:[34]
push.e 1

:[35]
bf [48]

:[36]
pushi.e 21
pop.v.i self.itemidchest
pushi.e 142
pop.v.i self.itemflag
pushi.e 0
pop.v.i local.qualify
pushi.e -5
pushi.e 468
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [38]

:[37]
pushi.e 1
pop.v.i local.qualify

:[38]
pushi.e -5
pushi.e 142
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
pushi.e 0
pop.v.i local.qualify

:[40]
pushi.e -5
pushi.e 571
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bt [42]

:[41]
pushi.e -5
pushi.e 468
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
b [43]

:[42]
push.e 1

:[43]
bf [45]

:[44]
push.s "weapon"@231
pop.v.s self.itemtype
b [46]

:[45]
push.s "armor"@232
pop.v.s self.itemtype

:[46]
pushloc.v local.qualify
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
call.i instance_destroy(argc=0)
popz.v
pushi.e 0
pop.v.i self.visible

:[48]
pushi.e -5
push.v self.itemflag
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
pop.v.i self.image_index

:[50]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]