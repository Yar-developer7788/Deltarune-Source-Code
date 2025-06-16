.localvar 2 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.facing
pop.v.v self.movedir
pushi.e 0
pop.v.i self.ix
pushi.e 0
pop.v.i self.iy
pushi.e 1
pop.v.i self.confirm
push.v self.movedir
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.ix
push.v self.y
push.v self.ht
add.v.v
pop.v.v self.iy

:[3]
push.v self.movedir
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.x
push.v self.wd
add.v.v
pop.v.v self.ix
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.iy

:[5]
push.v self.movedir
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.ix
push.v self.y
push.v self.ht
sub.v.v
pushi.e 5
add.i.v
pop.v.v self.iy

:[7]
push.v self.movedir
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
push.v self.x
push.v self.wd
sub.v.v
pushi.e 5
add.i.v
pop.v.v self.ix
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.iy

:[9]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 68
conv.i.v
push.v self.iy
pushi.e 15
add.i.v
push.v self.ix
pushi.e 15
add.i.v
push.v self.iy
push.v self.ix
call.i collision_rectangle(argc=7)
conv.v.b
bf [11]

:[10]
pushi.e 0
pop.v.i self.confirm

:[11]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 69
conv.i.v
push.v self.iy
pushi.e 15
add.i.v
push.v self.ix
pushi.e 15
add.i.v
push.v self.iy
push.v self.ix
call.i collision_rectangle(argc=7)
conv.v.b
bf [13]

:[12]
pushi.e 0
pop.v.i self.confirm

:[13]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 250
conv.i.v
push.v self.iy
pushi.e 15
add.i.v
push.v self.ix
pushi.e 15
add.i.v
push.v self.iy
push.v self.ix
call.i collision_rectangle(argc=7)
conv.v.b
bf [15]

:[14]
pushi.e 0
pop.v.i self.confirm

:[15]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.confirm
pushi.e 1
cmp.i.v EQ
bf [end]

:[16]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.movecourse
pushi.e 0
pop.v.i self.movetimer

:[end]