.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.step
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 19
cmp.i.v EQ
bf [2]

:[1]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 928
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.con
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
pushi.e 3230
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.blackscreen
pushi.e 0
push.v self.blackscreen
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 100
push.v self.blackscreen
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 100
push.v self.blackscreen
pushi.e -9
pop.v.i [stacktop]self.image_yscale
b [end]

:[2]
pushi.e 0
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]