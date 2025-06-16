.localvar 2 arguments

:[0]
b [8]

> gml_Script_scr_spellinfo_all (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.j

:[2]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [7]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [6]

:[5]
pushi.e -5
push.v self.j
conv.v.i
push.v [arraypushaf]self.spell
push.v self.i
conv.v.i
pushaf.e
pop.v.v self.spellid
push.v self.spellid
call.i gml_Script_scr_spellinfo(argc=1)
popz.v
push.i 23431508
setowner.e
push.v self.spellname
pushi.e -5
push.v self.j
conv.v.i
push.v [arraypopaf]self.spellname
push.v self.i
conv.v.i
popaf.e
push.i 23431509
setowner.e
push.v self.spellnameb
pushi.e -5
push.v self.j
conv.v.i
push.v [arraypopaf]self.spellnameb
push.v self.i
conv.v.i
popaf.e
push.i 23431510
setowner.e
push.v self.spelldescb
pushi.e -5
push.v self.j
conv.v.i
push.v [arraypopaf]self.spelldescb
push.v self.i
conv.v.i
popaf.e
push.i 23431511
setowner.e
push.v self.spelldesc
pushi.e -5
push.v self.j
conv.v.i
push.v [arraypopaf]self.spelldesc
push.v self.i
conv.v.i
popaf.e
push.i 23431512
setowner.e
push.v self.cost
pushi.e -5
push.v self.j
conv.v.i
push.v [arraypopaf]self.spellcost
push.v self.i
conv.v.i
popaf.e
push.i 23431514
setowner.e
push.v self.spellusable
pushi.e -5
push.v self.j
conv.v.i
push.v [arraypopaf]self.spellusable
push.v self.i
conv.v.i
popaf.e
push.i 23431515
setowner.e
push.v self.spelltarget
pushi.e -5
push.v self.j
conv.v.i
push.v [arraypopaf]self.spelltarget
push.v self.i
conv.v.i
popaf.e
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [2]

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_spellinfo_all
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spellinfo_all
popz.v

:[end]