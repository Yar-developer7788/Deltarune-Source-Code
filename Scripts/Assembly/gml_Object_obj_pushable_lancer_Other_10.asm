.localvar 2 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bt [3]

:[2]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
pushglb.v global.facing
pop.v.v self.movedir
pushi.e 0
pop.v.i self.ix
pushi.e 0
pop.v.i self.iy
pushi.e 1
pop.v.i self.confirm
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
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
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

:[11]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 195
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.confirm
pushi.e 1
cmp.i.v EQ
bf [end]

:[12]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.movecourse
pushi.e 0
pop.v.i self.movetimer

:[end]