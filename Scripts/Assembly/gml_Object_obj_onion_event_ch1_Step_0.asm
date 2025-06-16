.localvar 2 arguments

:[0]
pushi.e 1351
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.onioncount
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.onioncount
pushi.e 1
sub.i.v
pop.v.v self.onioncount

:[3]
pushi.e -5
pushi.e 258
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [10]

:[4]
push.v self.onioncount
pushi.e 200
cmp.i.v GTE
bf [7]

:[5]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 258
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 258
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.onioncount
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i global.interact

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[11]
push.v self.onion
pushi.e -9
pushenv [13]

:[12]
pushi.e 1
pop.v.i self.on

:[13]
popenv [12]
pushi.e 3
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [18]

:[15]
pushi.e 1
pop.v.i global.facing
push.v self.onion
pushi.e -9
pushenv [17]

:[16]
pushi.e 2
pop.v.i self.on

:[17]
popenv [16]
pushi.e 5
pop.v.i self.con
pushi.e 150
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[18]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 195
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 7
pop.v.i self.con

:[20]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [22]

:[21]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
pop.v.i global.interact
pushi.e 4
push.v self.onion
pushi.e -9
pop.v.i [stacktop]self.on
pushi.e 8
pop.v.i self.con
pushi.e 150
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[25]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [end]

:[26]
push.v self.onion
pushi.e -9
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 10
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
call.i instance_destroy(argc=0)
popz.v

:[end]