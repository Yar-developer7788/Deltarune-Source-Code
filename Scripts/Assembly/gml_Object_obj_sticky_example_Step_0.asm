.localvar 2 arguments

:[0]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [2]

:[1]
push.v self.stuck
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.stuck
call.i gml_Script_scr_stickto_stop(argc=0)
popz.v
pushi.e 8
pop.v.i self.stuckbuffer

:[5]
push.v self.stuckbuffer
push.e 1
sub.i.v
pop.v.v self.stuckbuffer

:[end]