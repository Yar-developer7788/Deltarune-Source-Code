.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.b self.auto_text
pushi.e -1
pop.v.i self.auto_con
pushi.e 0
pop.v.b self.allow_move
pushi.e 0
pop.v.i self.cutscene_master
pushi.e 0
pop.v.i self.custom_delay
pushi.e 0
pop.v.i self.no_silhouette
pushi.e 0
pop.v.i self.young_noelle
pushi.e 0
pop.v.b self.auto_continue
pushi.e 0
pop.v.i self.msgtimer
pushi.e 0
pop.v.i self.buttonIndex
push.i 173930
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.buttonX
push.i 173931
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.buttonY
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.noendx
pushi.e 0
pop.v.b self.init_forcefields
pushi.e -1
pop.v.i self.text_con
pushi.e 0
pop.v.b self.pause_kris
pushglb.v global.plot
pushi.e 94
cmp.i.v LT
bf [10]

:[1]
pushi.e -5
pushi.e 7
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag

:[3]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [9]

:[4]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[6]
pushi.e 4
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
push.v 82.y
pushi.e 40
sub.i.v
push.v 82.x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 276
pushenv [8]

:[7]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[8]
popenv [7]

:[9]
b [end]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[end]