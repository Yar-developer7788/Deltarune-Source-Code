.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 106
conv.i.v
pushi.e 120
conv.i.v
pushi.e 300
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dumpster
push.v self.dumpster
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
bt [4]

:[3]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
pushi.e 0
conv.i.v
b [8]

:[7]
pushi.e 10
conv.i.v

:[8]
pop.v.v self.dumpster_con
pushi.e 0
pop.v.b self.play_song
pushi.e 0
pop.v.b self.play_power
pushi.e 0
pop.v.b self.play_stop

:[end]