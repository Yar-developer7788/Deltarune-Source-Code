.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.waiting
pushi.e 0
pop.v.i self.cs_wait_timer
pushi.e 0
pop.v.i self.cs_wait_amount
pushi.e 0
pop.v.i self.cs_wait_dialogue
pushi.e 0
pop.v.i self.cs_wait_custom
pushi.e -1
pop.v.i self.cs_wait_box
push.i 438438943
pop.v.i self.mydialoguer
pushi.e 0
pop.v.i self.kill_actors
pushi.e 0
pop.v.i self.loadedState
pushi.e 0
pop.v.i self.instant
pushi.e 0
pop.v.i self.breakme
pushi.e 0
pop.v.i self.current_command
pushi.e 1
pop.v.i self.maximum_command
push.i 9999999
pop.v.i self.master_object
pushi.e -1
pop.v.i self.msgside
pushi.e 0
pop.v.i self.zurasu
pushi.e -1
pop.v.i self.mysound
pushi.e 0
pop.v.i self.initialized
push.s "noone"@5120
pop.v.s self.actor_selected
push.i 99999999
pop.v.i self.actor_selected_id
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [3]

:[2]
push.i 166684
setowner.e
push.i 99999999
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.actor_id
push.i 166683
setowner.e
push.s "noone"@5120
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.actor_name
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [6]

:[5]
push.i 166753
setowner.e
push.i 99999999
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.save_object
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
call.i gml_Script_scr_cutscene_master_commands_initialize(argc=0)
popz.v
pushi.e 0
pop.v.i self.terminate_this_frame

:[end]