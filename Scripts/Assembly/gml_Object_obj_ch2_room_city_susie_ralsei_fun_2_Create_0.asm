.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 3091
conv.i.v
pushi.e 80
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.floppy_door
push.i 900000
push.v self.floppy_door
pushi.e -9
pop.v.i [stacktop]self.depth

:[end]