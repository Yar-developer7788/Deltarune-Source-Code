.localvar 2 arguments

:[0]
push.v self.initialized
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.initialized

:[2]
push.v self.waiting
pushi.e 0
cmp.i.v EQ
bf [8]

:[3]
push.v self.current_command
pop.v.v self.i

:[4]
push.v self.i
push.v self.maximum_command
cmp.v.v LT
bf [8]

:[5]
push.i 166629
setowner.e
push.v self.actor_selected_id
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command_actor
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.command
pop.v.v self._c
call.i gml_Script_scr_cutscene_commands(argc=0)
popz.v
push.v self.breakme
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.breakme
b [8]

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.current_command
push.v self.waiting
pushi.e 1
cmp.i.v EQ
bf [22]

:[9]
push.v self.cs_wait_amount
pushi.e 0
cmp.i.v GT
bf [12]

:[10]
push.v self.cs_wait_timer
push.e 1
add.i.v
pop.v.v self.cs_wait_timer
push.v self.cs_wait_timer
push.v self.cs_wait_amount
cmp.v.v GTE
bf [12]

:[11]
pushi.e 0
pop.v.i self.cs_wait_amount
pushi.e 0
pop.v.i self.cs_wait_timer
pushi.e 0
pop.v.i self.waiting

:[12]
push.v self.cs_wait_box
pushi.e 0
cmp.i.v GTE
bf [19]

:[13]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [15]

:[14]
pushi.e -1
pop.v.i self.cs_wait_box
pushi.e 0
pop.v.i self.waiting
b [19]

:[15]
push.v self.mydialoguer
pushi.e -9
push.v [stacktop]self.active
pushi.e 1
cmp.i.v EQ
bf [19]

:[16]
push.v self.mydialoguer
pushi.e -9
push.v [stacktop]self.writer
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [19]

:[17]
push.v self.mydialoguer
pushi.e -9
push.v [stacktop]self.writer
pushi.e -9
push.v [stacktop]self.msgno
push.v self.cs_wait_box
cmp.v.v GTE
bf [19]

:[18]
pushi.e -1
pop.v.i self.cs_wait_box
pushi.e 0
pop.v.i self.waiting

:[19]
push.v self.cs_wait_dialogue
pushi.e 1
cmp.i.v EQ
bf [22]

:[20]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [22]

:[21]
pushi.e 0
pop.v.i self.cs_wait_dialogue
pushi.e 0
pop.v.i self.waiting

:[22]
push.v self.terminate_this_frame
pushi.e 1
cmp.i.v EQ
bf [end]

:[23]
push.v self.kill_actors
pushi.e 1
cmp.i.v EQ
bf [29]

:[24]
pushi.e 0
pop.v.i self.jj

:[25]
push.v self.jj
pushi.e 20
cmp.i.v LT
bf [29]

:[26]
pushi.e -1
push.v self.jj
conv.v.i
push.v [array]self.actor_id
pushi.e -9
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
push.v self.jj
push.e 1
add.i.v
pop.v.v self.jj
b [25]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[end]