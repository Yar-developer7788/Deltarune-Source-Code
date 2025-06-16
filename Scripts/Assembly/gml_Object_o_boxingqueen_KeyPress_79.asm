.localvar 2 arguments

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[1]
pushi.e 1
pop.v.i self.health_count
pushi.e 2
pop.v.i self.times_hit_in_a_row

:[end]