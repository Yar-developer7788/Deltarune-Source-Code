.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.circle1alpha
pushi.e 31
pop.v.i self.circle1radius
pushi.e 2
pop.v.i self.circle1width
push.i 65280
pop.v.i self.circle1color
pushi.e 0
pop.v.i self.circle2alpha
pushi.e 75
pop.v.i self.circle2radius
pushi.e 4
pop.v.i self.circle2width
push.v 631.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[end]