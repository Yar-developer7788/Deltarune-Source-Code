.localvar 2 arguments

:[0]
push.v self.visible
pushi.e 1
cmp.b.v EQ
bf [2]

:[1]
push.v self.pushable
pushi.e 1
cmp.b.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
pushglb.v global.facing
pop.v.v self.movedir
push.v self.sprite_width
pop.v.v self.wd
push.v self.sprite_height
pop.v.v self.ht
pushi.e 0
pop.v.i self.ix
pushi.e 0
pop.v.i self.iy
pushi.e 1
pop.v.i self.confirm
push.v self.movedir
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.ix
push.v self.y
push.v self.ht
add.v.v
pop.v.v self.iy

:[7]
push.v self.movedir
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.x
push.v self.wd
add.v.v
pop.v.v self.ix
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.iy

:[9]
push.v self.movedir
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
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

:[11]
push.v self.movedir
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
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

:[13]
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
bf [15]

:[14]
pushi.e 0
pop.v.i self.confirm

:[15]
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
bf [17]

:[16]
pushi.e 0
pop.v.i self.confirm

:[17]
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
bf [19]

:[18]
pushi.e 0
pop.v.i self.confirm

:[19]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.confirm
pushi.e 1
cmp.i.v EQ
bf [end]

:[20]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.movecourse
pushi.e 0
pop.v.i self.movetimer

:[end]