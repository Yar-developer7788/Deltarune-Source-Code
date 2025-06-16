.localvar 2 arguments

:[0]
push.i 68097
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.canchoose
pushglb.v global.darkzone
pushi.e 1
add.i.v
pop.v.v self.dar
push.v self.dar
pop.v.v self.image_xscale
push.v self.dar
pop.v.v self.image_yscale
pushbltn.v builtin.view_current
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.add
pushi.e 89
push.v self.dar
mul.v.i
push.v self.add
add.v.v
pop.v.v self.x
pushi.e 210
push.v self.dar
mul.v.i
pushbltn.v builtin.view_current
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
add.v.v
pop.v.v self.y
pushi.e -1
pop.v.i self.d
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1330.side
pop.v.v self.d

:[2]
push.v self.d
pushi.e -1
cmp.i.v EQ
bf [6]

:[3]
push.v 1351.y
pushbltn.v builtin.view_current
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 130
push.v self.dar
mul.v.i
add.v.v
cmp.v.v GT
bf [5]

:[4]
push.v self.y
pushi.e 155
push.v self.dar
mul.v.i
sub.v.v
pop.v.v self.y

:[5]
b [8]

:[6]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.y
pushi.e 155
push.v self.dar
mul.v.i
sub.v.v
pop.v.v self.y

:[8]
pushi.e 0
pop.v.i self.mychoice
pushi.e -1
pop.v.i global.choice
pushi.e 0
pop.v.i self.choiced

:[end]