.localvar 2 arguments
.localvar 10175 car 9172

:[0]
push.i 165770
setowner.e
push.s "Go to Main Menu"@21222
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.choice
push.s "Go to Debug Room"@21223
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.choice
pushi.e 0
pop.v.i self.choice_index
push.i 231651
setowner.e
push.l 4343434343
conv.l.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.cinstance
push.l 343434343434
conv.l.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.cinstance
pushi.e 2428
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 40
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.car
push.d 0.15
pushloc.v local.car
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i self.specialmode
pushi.e 0
pop.v.i self.n
pushi.e 1
pop.v.i self.auto
pushi.e 0
pop.v.i self.autotimer

:[end]