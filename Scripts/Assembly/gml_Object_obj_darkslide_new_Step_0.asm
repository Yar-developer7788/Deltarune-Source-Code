.localvar 2 arguments

:[0]
push.v self.collidetimer
pushi.e 1
sub.i.v
pop.v.v self.collidetimer
push.v self.collidetimer
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
push.v self.sliding
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bt [5]

:[4]
push.v self.instant_end_sliding
conv.v.b
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
pushglb.v global.interact
pushi.e 1
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
pushi.e 0
pop.v.i self.sliding
pushi.e 0
pop.v.i global.interact
pushi.e 82
pushenv [12]

:[11]
pushi.e 0
pop.v.i self.sliding
pushi.e 0
pop.v.i self.fun
pushi.e 656
pop.v.i self.sprite_index

:[12]
popenv [11]
push.v self.slide_noise
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 0
pop.v.i self.instant_end_sliding

:[end]