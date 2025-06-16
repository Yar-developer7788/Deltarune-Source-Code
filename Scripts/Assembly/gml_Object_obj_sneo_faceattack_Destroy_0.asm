.localvar 2 arguments

:[0]
push.v self.boss
pushi.e 1
cmp.i.v EQ
bf [10]

:[1]
push.v 697.eyeshp
pushi.e 0
cmp.i.v LTE
bf [5]

:[2]
push.v 697.nosehp
pushi.e 0
cmp.i.v LTE
bf [5]

:[3]
push.v 697.mouthhp
pushi.e 0
cmp.i.v LTE
bf [5]

:[4]
pushi.e 697
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [6]

:[5]
push.e 0

:[6]
bf [10]

:[7]
pushi.e 697
pushenv [9]

:[8]
pushi.e 16
pop.v.i self.eyeshp
pushi.e 16
pop.v.i self.nosehp
pushi.e 16
pop.v.i self.mouthhp
pushi.e 2
pop.v.i self.facebroken

:[9]
popenv [8]

:[10]
pushi.e 670
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]

:[end]