.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.notime
call.i gml_Script_camerax(argc=0)
pop.v.v self.xx
call.i gml_Script_cameray(argc=0)
pop.v.v self.yy
pushi.e 0
pop.v.i self.draw_in
pushi.e 0
pop.v.i self.draw_in_timer
pushi.e 0
pop.v.i self.caught
pushi.e 1
pop.v.i self.extra_mode
pushi.e 1
pop.v.i self.noisevol
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 761.basket_size
pop.v.v self.extra_mode

:[end]