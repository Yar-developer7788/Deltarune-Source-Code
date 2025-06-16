.localvar 2 arguments

:[0]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[1]
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[2]
pushi.e 0
pop.v.i self.shieldhp
pushi.e 577
pushenv [4]

:[3]
pushi.e 2
pop.v.i self.shieldhurt
pushi.e 0
pop.v.i self.shieldhurttimer

:[4]
popenv [3]
pushi.e 581
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
push.v self.shieldhp
pushi.e 5
cmp.i.v LTE
bf [8]

:[7]
pushi.e 0
pop.v.i self.shieldhp
pushi.e 1
pop.v.i self.shieldbrokecon
pushi.e 1891
pop.v.i self.sprite_index

:[8]
b [end]

:[9]
pushi.e 100
pop.v.i self.bardlymercy
push.i 231862
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterhp
pushi.e 100
sub.i.v
pop.i.v [array]self.monsterhp

:[end]