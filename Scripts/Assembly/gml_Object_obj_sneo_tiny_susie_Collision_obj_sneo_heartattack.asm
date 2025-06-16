.localvar 2 arguments

:[0]
push.v self.frametype
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.frametype
push.v other.heart_health
pushi.e 1
sub.i.v
pop.v.v other.heart_health
b [end]

:[2]
push.v self.frametype
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 0
pop.v.i self.frametype
push.v self.hp
pushi.e 10
sub.i.v
pop.v.v self.hp
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 171
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[4]
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]