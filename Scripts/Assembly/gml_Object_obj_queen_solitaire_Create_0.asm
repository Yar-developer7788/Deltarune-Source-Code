.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
push.i 170887
setowner.e
push.v self.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.points_x
push.i 170888
setowner.e
push.v self.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.points_y
pushi.e 0
pop.v.i self.arraysize
pushi.e 0
pop.v.i self.arrayoffset
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
call.i random_range(argc=2)
push.v 872.x
push.v self.x
sub.v.v
call.i sign(argc=1)
mul.v.v
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.bounced
push.d 0.4
pop.v.d self.gravity
pushi.e 0
pop.v.i self.cardstart
pushi.e 20
pop.v.i self.arraycap
pushi.e 0
pop.v.i self.destroyonhit

:[end]