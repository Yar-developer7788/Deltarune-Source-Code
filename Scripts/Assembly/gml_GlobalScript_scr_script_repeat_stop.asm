.localvar 2 arguments
.localvar 10850 _myid 2778

:[0]
b [5]

> gml_Script_scr_script_repeat_stop (locals=1, argc=0)
:[1]
push.v self.id
pop.v.v local._myid
pushi.e 927
pushenv [4]

:[2]
push.v self.target
pushloc.v local._myid
cmp.v.v EQ
bf [4]

:[3]
pushi.e -300
pop.v.i self.max_time
push.i 34277889
setowner.e
pushi.e -5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [2]
exit.i

:[5]
push.i [function]gml_Script_scr_script_repeat_stop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_script_repeat_stop
popz.v

:[end]