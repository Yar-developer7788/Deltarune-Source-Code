.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_cutscene_master_commands_initialize (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 800
cmp.i.v LT
bf [4]

:[3]
push.i 29526833
setowner.e
push.s "terminate"@9906
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command
push.i 29526757
setowner.e
push.i 99999999
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command_actor
push.i 29526758
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command_arg1
push.i 29526759
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command_arg2
push.i 29526760
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command_arg3
push.i 29526761
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command_arg4
push.i 29526762
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command_arg5
push.i 29526763
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.command_arg6
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 0
pop.v.i self.current_command
pushi.e 1
pop.v.i self.maximum_command
exit.i

:[5]
push.i [function]gml_Script_scr_cutscene_master_commands_initialize
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_cutscene_master_commands_initialize
popz.v

:[end]