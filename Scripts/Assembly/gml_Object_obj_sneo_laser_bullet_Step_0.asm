.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
push.v self.image_yscale
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
push.v self.image_yscale
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.image_yscale

:[3]
push.v self.image_xscale
pushi.e 8
cmp.i.v LT
bf [5]

:[4]
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
push.v self.image_xscale
call.i gml_Script_scr_movetowards(argc=3)
pop.v.v self.image_xscale

:[5]
push.v self.image_yscale
pushi.e 8
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.con

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[end]