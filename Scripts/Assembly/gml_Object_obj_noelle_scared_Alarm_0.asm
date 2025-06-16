.localvar 2 arguments

:[0]
push.v self.autocomplete
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.jumppuzzle
pushi.e 0
cmp.i.v EQ
bf [15]

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [14]

:[3]
pushi.e 295
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 20
pop.v.i self.jumpy
pushi.e 1164
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 370
pop.v.i self.targetx
pushi.e 166
pop.v.i self.targety

:[5]
pushi.e 1164
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[6]
push.v 1164.victory
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v 1164.con
pushi.e -2
cmp.i.v NEQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 860
pop.v.i self.targetx
pushi.e 238
pop.v.i self.targety

:[11]
push.v self.extflag
push.s "mice1Scare"@37396
cmp.s.v EQ
bf [13]

:[12]
push.v self.x
pop.v.v self.targetx
push.v self.y
pop.v.v self.targety

:[13]
pushi.e 1
pop.v.i self.con

:[14]
b [end]

:[15]
pushi.e 1189
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[16]
push.v self.fallen
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.s "success"@21747
pop.v.s 1189.exttrig
b [19]

:[18]
push.s "fell"@37411
pop.v.s 1189.exttrig

:[19]
pushi.e 295
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1183
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[20]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [end]

:[21]
pushi.e 20
pop.v.i self.jumpy
push.v self.fallen
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1183
push.v 1183.currentPlatform
conv.v.i
push.v [array]self.plat
pushi.e -9
push.v [stacktop]self.x
pushi.e 120
add.i.v
pop.v.v self.targetx
pushi.e 1183
push.v 1183.currentPlatform
conv.v.i
push.v [array]self.plat
pushi.e -9
push.v [stacktop]self.patidealy
pop.v.v self.targety
b [24]

:[23]
pushi.e 1183
push.v 1183.currentPlatform
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.plat
pushi.e -9
push.v [stacktop]self.x
pushi.e 120
add.i.v
pop.v.v self.targetx
pushi.e 1183
push.v 1183.currentPlatform
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.plat
pushi.e -9
push.v [stacktop]self.patidealy
pop.v.v self.targety

:[24]
pushi.e 1
pop.v.i self.con

:[end]