.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
push.v self.image_xscale
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale

:[2]
push.v self.image_yscale
pushi.e 2
cmp.i.v LT
bf [4]

:[3]
pushi.e 2
pop.v.i self.image_yscale

:[4]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.basic
pushi.e 0
pop.v.i self.disable
pushi.e 2
pop.v.i self.f
pushi.e 0
pop.v.i self.sold
pushi.e 0
pop.v.i self.black_override
pushi.e 0
pop.v.i self.stayVisible
pushi.e 0
pop.v.b self.fadeout
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]