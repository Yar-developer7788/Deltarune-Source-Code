.localvar 2 arguments

:[0]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[3]
push.v self.target
push.v self.i
cmp.v.v EQ
bf [20]

:[4]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [7]

:[6]
push.e 0

:[7]
bf [16]

:[8]
pushi.e 1
pop.v.i 777.punchcon
pushi.e -5
pushi.e 0
push.v [array]self.battleat
pushi.e -1
pushi.e 0
push.v [array]self.points
mul.v.v
pushi.e 10
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v 777.damageoverride
pushi.e 1
pop.v.i 777.acttoenemytalktransition
pushi.e -1
pushi.e 0
push.v [array]self.points
pushi.e 150
cmp.i.v EQ
bt [10]

:[9]
pushi.e -1
pushi.e 0
push.v [array]self.points
pushi.e 300
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
pushi.e 5
pop.v.i 777.tpoverride

:[13]
pushi.e -1
pushi.e 0
push.v [array]self.points
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pop.v.i 777.damageoverride

:[15]
b [20]

:[16]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [20]

:[17]
push.i 231853
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.points
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pop.v.v [stacktop]self.points
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [19]

:[18]
pushi.e 1
pop.v.i self.state
pushi.e 0
pop.v.i self.attacktimer

:[19]
popenv [18]

:[20]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[end]