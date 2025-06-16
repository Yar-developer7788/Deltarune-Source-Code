.localvar 2 arguments

:[0]
push.v self.paused
conv.v.b
bf [2]

:[1]
push.v self.pausing
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e 1
pop.v.b self.pausing
call.i audio_pause_all(argc=0)
popz.v
pushi.e 1
conv.b.v
call.i instance_deactivate_all(argc=1)
popz.v
pushglb.v global.is_console
conv.v.b
bf [6]

:[5]
pushi.e 1113
conv.i.v
call.i instance_activate_object(argc=1)
popz.v

:[6]
push.v self.pausing
conv.v.b
bf [8]

:[7]
call.i os_is_paused(argc=0)
conv.v.b
not.b
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
pushi.e 0
pop.v.b self.paused
pushi.e 0
pop.v.b self.pausing
call.i instance_activate_all(argc=0)
popz.v
call.i audio_resume_all(argc=0)
popz.v
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]