.localvar 2 arguments

:[0]
push.v self.movecourse
pushi.e 1
cmp.i.v EQ
bf [11]

:[1]
push.v self.movedir
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.x
pushi.e 8
add.i.v
pop.v.v self.x

:[3]
push.v self.movedir
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.y
pushi.e 8
add.i.v
pop.v.v self.y

:[5]
push.v self.movedir
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v self.y
pushi.e 8
sub.i.v
pop.v.v self.y

:[7]
push.v self.movedir
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
push.v self.x
pushi.e 8
sub.i.v
pop.v.v self.x

:[9]
push.v self.movetimer
pushi.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
pushi.e 5
cmp.i.v GTE
bf [11]

:[10]
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.movecourse

:[11]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [16]

:[12]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
bf [16]

:[13]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [15]

:[14]
pushi.e 5
pop.v.i self.onebuffer

:[15]
popenv [14]

:[16]
push.v self.reset
pushi.e 1
cmp.b.v EQ
bf [end]

:[17]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [20]

:[18]
push.v self.image_alpha
push.d 0.6
mul.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [20]

:[19]
pushi.e 0
pop.v.i self.image_alpha
push.v self.xpos
pop.v.v self.x
push.v self.ypos
pop.v.v self.y
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.pause

:[20]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [23]

:[21]
push.v self.pause
push.e 1
add.i.v
pop.v.v self.pause
push.v self.pause
pushi.e 10
cmp.i.v EQ
bf [23]

:[22]
push.d 0.1
pop.v.d self.image_alpha
pushi.e 2
pop.v.i self.con

:[23]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[24]
push.v self.image_alpha
push.d 1.4
mul.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [end]

:[25]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.reset
pushi.e 0
pop.v.i global.interact

:[end]