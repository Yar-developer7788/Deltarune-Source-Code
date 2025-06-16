.localvar 2 arguments
.localvar 29239 gameover_bg 15324

:[0]
pushi.e 0
pop.v.i self.EVENT
pushi.e 0
pop.v.i self.TIMER
pushi.e 0
pop.v.i self.HEARTMADE
pushi.e 0
pop.v.i self.HSINER
pushi.e 0
pop.v.i self.OBMADE
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
pushi.e 667
pop.v.i global.typer
push.s "DEVICE_FAILURE_slash_Create_0_gml_12_0"@29235
conv.s.v
push.s "THE DEATH"@29236
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
pushi.e 0
pop.v.i self.FADEFACTOR
pushi.e 0
pop.v.i self.WHITEFADE
pushi.e 0
pop.v.i self.FADEUP
pushi.e 0
pop.v.i self.DARK_WAIT
pushi.e 30
pop.v.i self.text_timer
pushi.e 0
pop.v.b self.restart
pushi.e 0
pop.v.i self.restart_timer
push.i 169106
setowner.e
push.i 32784
conv.i.v
push.i 32783
conv.i.v
push.i 32782
conv.i.v
push.i 32781
conv.i.v
push.i 32780
conv.i.v
push.i 32779
conv.i.v
push.i 32778
conv.i.v
push.i 32777
conv.i.v
push.i 32776
conv.i.v
push.i 32774
conv.i.v
push.i 32775
conv.i.v
push.i 32773
conv.i.v
push.i 32772
conv.i.v
push.i 32771
conv.i.v
push.i 32770
conv.i.v
push.i 32769
conv.i.v
call.i @@NewGMLArray@@(argc=16)
pop.v.v self.gamepad_controls
pushglb.v global.chapter
pushi.e 1
cmp.i.v GT
bf [end]

:[1]
pushi.e 1313
conv.i.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.gameover_bg
pushloc.v local.gameover_bg
pushi.e -9
pushenv [3]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[3]
popenv [2]

:[end]