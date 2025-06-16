.localvar 2 arguments

:[0]
push.v self.loaded
conv.v.b
bf [end]

:[1]
push.v self.save_ready
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.image_alpha
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
call.i gml_Script_scr_load_ch1(argc=0)
popz.v
push.v self.save_ready
push.e 1
add.i.v
pop.v.v self.save_ready

:[6]
push.v self.alpha_set
conv.v.b
not.b
bf [8]

:[7]
push.d 0.08
pop.v.d self.fadespeed
pushi.e 1
pop.v.b self.alpha_set
push.v self.save_ready
push.e 1
add.i.v
pop.v.v self.save_ready

:[8]
push.v self.save_ready
pushi.e 2
cmp.i.v EQ
bf [end]

:[9]
push.d -0.08
pop.v.d self.fadespeed
push.v self.save_ready
push.e 1
add.i.v
pop.v.v self.save_ready

:[end]