.localvar 2 arguments

:[0]
pushi.e -5000
pop.v.i self.depth
pushi.e 0
pop.v.i self.timer
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 130
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 210
conv.i.v
pushi.e 80
conv.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 276
pushenv [2]

:[1]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 0
pop.v.i self.muted
pushi.e 0
pop.v.i self.xmod
pushi.e 0
pop.v.i self.ymod
pushi.e 2428
conv.i.v
pushi.e 64
conv.i.v
pushi.e 294
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.marker1
pushi.e 2428
conv.i.v
pushi.e 130
conv.i.v
pushi.e 230
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.marker2
pushi.e 2428
conv.i.v
pushi.e 204
conv.i.v
pushi.e 295
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.marker3
push.s "Here's my#test dialogue!"@14440
pop.v.s self.text
push.s "ballooner.txt"@14441
conv.s.v
call.i file_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
push.s "ballooner.txt"@14441
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v self.text
push.s "text"@164
conv.s.v
push.s "ballooner"@14442
conv.s.v
call.i ini_write_string(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
b [end]

:[4]
push.s "ballooner.txt"@14441
conv.s.v
call.i ini_open(argc=1)
popz.v
push.v self.text
push.s "text"@164
conv.s.v
push.s "ballooner"@14442
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.text
call.i ini_close(argc=0)
popz.v

:[end]