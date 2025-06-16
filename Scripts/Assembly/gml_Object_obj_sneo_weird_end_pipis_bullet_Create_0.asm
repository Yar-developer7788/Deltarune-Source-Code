.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.target
pushi.e 16
pop.v.i self.damage
push.d 0.25
push.d 0.3333333333333333
conv.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.d
push.i 16776960
conv.i.v
push.i 15245824
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[end]