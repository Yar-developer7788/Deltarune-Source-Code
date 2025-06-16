.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
pushi.e 300
pop.v.i self.hp
pushi.e 0
pop.v.i self.damagetimer
pushi.e 0
pop.v.i self.defeated
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.target
pushi.e 1
pop.v.i self.damage
pushi.e 0
pop.v.i self.animtimer
pushi.e 0
pop.v.i self.firedtimer
pushi.e 0
pop.v.i self.destroyed
pushi.e 0
pop.v.i self.rembossx
pushi.e 0
pop.v.i self.rembossy
pushi.e 2
pop.v.i self.invincibility_timer
pushi.e 0
pop.v.i self.chargeshothitcount
pushi.e 0
pop.v.i self.normalshothitcount
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
push.v self.xstart
pop.v.v self.bossx
push.v self.ystart
pop.v.v self.bossy
pushi.e -1
pop.v.i self.boss
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.init
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 30
pop.v.i self.moveframes
pushi.e 0
pop.v.i self.targetx
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.shottype
pushi.e 0
pop.v.i self.bighearttype
pushi.e 0
pop.v.i self.special
pushi.e -1
pop.v.i self.preset
pushi.e 1
pop.v.i self.altbiter
pushi.e 5
push.d 1.5
conv.d.v
call.i random(argc=1)
add.v.i
pop.v.v self.hpos

:[end]