.localvar 2 arguments

:[0]
pushi.e 0
pop.v.b self.monitor_on
pushi.e 0
pop.v.b self.turnon
pushi.e 0
pop.v.i self.timer
pushi.e 170
pop.v.i self.x_start_pos
pushi.e 80
pop.v.i self.y
push.v self.y
pop.v.v self.y_pos
pushi.e 0
pop.v.b self.typing
pushi.e 0
pop.v.i self.l_amount
pushi.e 0
pop.v.i self.type_timer
pushi.e 3
pop.v.i self.type_time
pushi.e 1
pop.v.i self.typer_alpha
pushi.e 0
pop.v.i self.fade
pushi.e 0
pop.v.b self.overload
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]