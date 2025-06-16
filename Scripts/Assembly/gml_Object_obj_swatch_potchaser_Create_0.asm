.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.target
push.d 0.25
pop.v.d self.image_speed
push.s "left"@5994
pop.v.s self.dir
push.v self.dir
push.s "left"@5994
cmp.s.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale
b [3]

:[2]
pushi.e -2
pop.v.i self.image_xscale

:[3]
pushi.e 2
pop.v.i self.image_yscale
push.v self.dir
pop.v.v self.going
pushi.e 0
pop.v.i self.colX
pushi.e 0
pop.v.i self.colY
pushi.e 0
pop.v.i self.sweattimer
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]