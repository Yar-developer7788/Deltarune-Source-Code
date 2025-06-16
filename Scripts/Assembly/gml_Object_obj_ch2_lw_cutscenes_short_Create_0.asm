.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.destroyme
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.destroyme
b [34]

:[2]
pushbltn.v builtin.room
pushi.e 33
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.plot
pushi.e 2
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [11]

:[6]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i global.facing
pushi.e 139
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 105
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]

:[11]
pushbltn.v builtin.room
pushi.e 60
cmp.i.v EQ
bf [13]

:[12]
pushglb.v global.plot
pushi.e 5
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact

:[16]
pushbltn.v builtin.room
pushi.e 62
cmp.i.v EQ
bf [18]

:[17]
pushglb.v global.plot
pushi.e 6
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [25]

:[20]
pushi.e 1
pop.v.i self.con
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e -5
pushi.e 276
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
pop.v.b self.noelle_chalk
push.v self.noelle_chalk
conv.v.b
not.b
bf [22]

:[21]
pushglb.v global.is_console
conv.v.b
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushglb.v global.game_won
pop.v.v self.noelle_chalk

:[25]
pushbltn.v builtin.room
pushi.e 60
cmp.i.v EQ
bf [27]

:[26]
pushglb.v global.plot
pushi.e 9
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [34]

:[29]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
pushi.e 50
pop.v.i self.con
pushi.e 923
conv.i.v
pushi.e 222
conv.i.v
pushi.e 469
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.alphys
pushi.e 898
conv.i.v
pushi.e 201
conv.i.v
pushi.e 551
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.toriel
push.v self.alphys
pushi.e -9
pushenv [31]

:[30]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[31]
popenv [30]
push.v self.toriel
pushi.e -9
pushenv [33]

:[32]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[33]
popenv [32]

:[34]
push.v self.destroyme
pushi.e 1
cmp.i.v EQ
bf [end]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[end]