.localvar 2 arguments

:[0]
b [28]

> gml_Script_scr_attackphase_ch1 (locals=0, argc=0)
:[1]
pushi.e 1517
pushenv [27]

:[2]
pushi.e 0
pop.v.i self.techwon
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.techwon

:[4]
push.v self.techwon
pushi.e 0
cmp.i.v EQ
bf [26]

:[5]
pushi.e 1
pop.v.i self.fightphase
pushi.e 3
pop.v.i global.charturn
pushi.e -5
pushi.e 0
push.v [array]self.charaction
pushi.e 4
cmp.i.v EQ
bt [7]

:[6]
pushi.e -5
pushi.e 0
push.v [array]self.charaction
pushi.e 2
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
pushi.e 0
pop.v.i self.fightphase

:[10]
pushi.e -5
pushi.e 1
push.v [array]self.charaction
pushi.e 4
cmp.i.v EQ
bt [12]

:[11]
pushi.e -5
pushi.e 1
push.v [array]self.charaction
pushi.e 2
cmp.i.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
pushi.e 0
pop.v.i self.fightphase

:[15]
pushi.e -5
pushi.e 2
push.v [array]self.charaction
pushi.e 4
cmp.i.v EQ
bt [17]

:[16]
pushi.e -5
pushi.e 2
push.v [array]self.charaction
pushi.e 2
cmp.i.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
pushi.e 0
pop.v.i self.fightphase

:[20]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i self.fightphase

:[22]
push.v self.fightphase
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i global.myfight
pushi.e 1515
conv.i.v
push.v self.yy
pushi.e 365
add.i.v
push.v self.xx
pushi.e 2
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
b [25]

:[24]
pushi.e 4
pop.v.i global.myfight
pushi.e 1629
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[25]
b [27]

:[26]
call.i gml_Script_scr_wincombat_ch1(argc=0)
popz.v

:[27]
popenv [2]
exit.i

:[28]
push.i [function]gml_Script_scr_attackphase_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_attackphase_ch1
popz.v

:[end]