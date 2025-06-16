.localvar 2 arguments

:[0]
push.v self.buffer
push.e 1
add.i.v
pop.v.v self.buffer
push.v self.buffer
pushi.e 60
cmp.i.v LT
bf [2]

:[1]
exit.i

:[2]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [4]

:[3]
push.v self.start_timer
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.fadeout
push.v self.fadeout
pushi.e -9
pushenv [8]

:[7]
push.d 0.02
pop.v.d self.fadespeed

:[8]
popenv [7]
pushi.e 1
pop.v.b self.start_timer

:[9]
push.v self.start_timer
conv.v.b
bf [11]

:[10]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.v self.restart_timer
push.e 1
add.i.v
pop.v.v self.restart_timer

:[11]
push.v self.restart_timer
pushi.e 200
cmp.i.v EQ
bf [end]

:[12]
call.i gml_Script_game_restart_true_ch1(argc=0)
popz.v

:[end]