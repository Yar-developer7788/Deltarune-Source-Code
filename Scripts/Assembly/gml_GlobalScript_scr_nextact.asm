.localvar 2 arguments
.localvar 10297 singleactcomplete 2427

:[0]
b [33]

> gml_Script_scr_nextact (locals=1, argc=0)
:[1]
push.i 62228555
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.acting
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.acting
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.acting
push.i 62228928
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushglb.v global.currentactingchar
conv.v.i
pop.v.v [array]self.actingsingle
pushi.e -5
pushi.e -5
pushglb.v global.currentactingchar
conv.v.i
push.v [array]self.actingtarget
conv.v.i
push.v [array]self.monsterinstance
pop.v.v self.__minstance
push.v self.__minstance
pushi.e -9
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.acting
pushi.e 0
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconsus
pushi.e 0
pop.v.i self.actconral
pushi.e 0
pop.v.i self.actconnoe

:[3]
popenv [2]
pushi.e 0
pop.v.i local.singleactcomplete

:[4]
pushglb.v global.currentactingchar
pushi.e 3
cmp.i.v LT
bf [26]

:[5]
push.v global.currentactingchar
push.e 1
add.i.v
pop.v.v global.currentactingchar
pushglb.v global.currentactingchar
pushi.e 3
cmp.i.v LT
bf [25]

:[6]
pushi.e -5
pushglb.v global.currentactingchar
conv.v.i
push.v [array]self.actingsingle
pushi.e 1
cmp.i.v EQ
bf [25]

:[7]
pushi.e -5
pushi.e -5
pushglb.v global.currentactingchar
conv.v.i
push.v [array]self.actingtarget
conv.v.i
push.v [array]self.monsterinstance
pop.v.v self.__minstance
pushi.e -5
pushglb.v global.currentactingchar
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [13]

:[8]
push.v self.__minstance
pushi.e -9
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.actconsus

:[10]
popenv [9]
pushi.e -5
pushglb.v global.currentactingchar
conv.v.i
push.v [array]self.actingsimul
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i local.singleactcomplete

:[12]
b [26]

:[13]
pushi.e -5
pushglb.v global.currentactingchar
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [19]

:[14]
push.v self.__minstance
pushi.e -9
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.actconral

:[16]
popenv [15]
pushi.e -5
pushglb.v global.currentactingchar
conv.v.i
push.v [array]self.actingsimul
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i local.singleactcomplete

:[18]
b [26]

:[19]
pushi.e -5
pushglb.v global.currentactingchar
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [25]

:[20]
push.v self.__minstance
pushi.e -9
pushenv [22]

:[21]
pushi.e 1
pop.v.i self.actconnoe

:[22]
popenv [21]
pushi.e -5
pushglb.v global.currentactingchar
conv.v.i
push.v [array]self.actingsimul
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i local.singleactcomplete

:[24]
b [26]

:[25]
b [4]

:[26]
pushglb.v global.currentactingchar
pushi.e 3
cmp.i.v GTE
bf [30]

:[27]
pushi.e 392
pushenv [29]

:[28]
pushi.e 0
pop.v.i self.acting
pushi.e 0
pop.v.i self.actingsus
pushi.e 0
pop.v.i self.actingral
pushi.e 0
pop.v.i self.actingnoe

:[29]
popenv [28]
pushi.e 0
pop.v.i global.currentactingchar
call.i gml_Script_scr_attackphase(argc=0)
popz.v
b [32]

:[30]
pushloc.v local.singleactcomplete
conv.v.b
not.b
bf [32]

:[31]
call.i gml_Script_scr_act_simul(argc=0)
popz.v

:[32]
exit.i

:[33]
push.i [function]gml_Script_scr_nextact
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_nextact
popz.v

:[end]