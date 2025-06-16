.localvar 2 arguments

:[0]
pushi.e 2431
pop.v.i self.mySprite
pushi.e -8
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
pop.v.v self.vspeed
push.d 0.25
pop.v.d self.gravity
pushi.e 0
pop.v.i self.time
push.l 1
pop.v.l self.colorProfile
pushi.e 255
conv.i.v
call.i irandom(argc=1)
pop.v.v self.hue
push.i 900000
pop.v.i self.depth
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [2]

:[1]
push.i 1100000
pop.v.i self.depth

:[2]
pushi.e 95
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]