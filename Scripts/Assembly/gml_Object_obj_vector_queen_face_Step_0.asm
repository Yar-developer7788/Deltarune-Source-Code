.localvar 2 arguments

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_xscale
push.d 0.2
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.2
add.d.v
pop.v.v self.image_yscale
push.v self.image_xscale
pushi.e 5
cmp.i.v GTE
bf [3]

:[2]
pushi.e 1
pop.v.i self.state
push.i 68097
setowner.e
pushi.e 52
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[3]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
pushi.e 2152
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
push.v self.playsound
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
pushi.e 1
pop.v.i self.playsound
pushi.e 305
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]