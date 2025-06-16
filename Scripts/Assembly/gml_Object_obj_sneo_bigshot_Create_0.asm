.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 2
pop.v.i self.f
pushi.e 1
pop.v.i self.destroyable
pushi.e 0
pop.v.i self.angle_speed
pushi.e 1
pop.v.i self.destroypoints
pushi.e 0
pop.v.i self.attackisdone
pushi.e 50
pop.v.i self.damage
pushi.e 1
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.playerhit
pushi.e 0
pop.v.i self.flashsiner
push.v 631.depth
pushi.e 5
sub.i.v
pop.v.v self.depth
pushi.e 1
pop.v.i self.explosion_alpha
pushi.e 0
pop.v.i self.explosion_hide
push.v self.x
pop.v.v self.xx
push.v self.y
pop.v.v self.yy
pushi.e 4
pop.v.i self.grazepoints
pushi.e 0
pop.v.i self.timer2
pushi.e 0
pop.v.i self.explodesfx
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.damage

:[2]
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
push.v 698.target
pop.v.v self.target

:[end]