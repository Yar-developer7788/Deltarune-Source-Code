.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_enemy_object_init (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.becomeflash
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.turnt
pushi.e 0
pop.v.i self.turns
pushi.e 0
pop.v.i self.talktimer
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.fsiner
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer
pushi.e 0
pop.v.i self.hurtshake
pushi.e 0
pop.v.i self.shakex
pushi.e 0
pop.v.i self.acting
pushi.e 0
pop.v.i self.actcon
push.i 343249823
pop.v.i self.mywriter
pushi.e 0
pop.v.i self.acttimer
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.dodgetimer
pushi.e 0
pop.v.i self.fatal
pushi.e 0
pop.v.i self.candodge
pushi.e 0
pop.v.i self.mytarget
pushi.e 0
pop.v.i self.ambushed
pushi.e 0
pop.v.i self.firststrike
pushi.e -1
pop.v.i self.damage
pushi.e -1
pop.v.i self.grazepoints
pushi.e -1
pop.v.i self.timepoints
pushi.e -1
pop.v.i self.inv
pushi.e -1
pop.v.i self.target
pushi.e -1
pop.v.i self.grazed
pushi.e -1
pop.v.i self.grazetimer
push.s "none"@562
pop.v.s self.element
pushi.e 0
pop.v.i self.acting
pushi.e 0
pop.v.i self.actingsus
pushi.e 0
pop.v.i self.actingnoe
pushi.e 0
pop.v.i self.actingral
pushi.e 0
pop.v.i self.actconsus
pushi.e 0
pop.v.i self.actconral
pushi.e 0
pop.v.i self.actconnoe
pushi.e -1
pop.v.i self.simulorderkri
pushi.e -1
pop.v.i self.simulordersus
pushi.e -1
pop.v.i self.simulorderral
pushi.e -1
pop.v.i self.simulordernoe
pushi.e 0
pop.v.i self.simultotal
pushi.e -1
pop.v.i self.simulboss
pushi.e 90
pop.v.i self.talkmax
pushi.e 0
pop.v.i self.mercymod
pushi.e 100
pop.v.i self.maxmercy
pushi.e 1
pop.v.i self.recruitable
pushi.e 1
pop.v.i self.freezable
pushi.e 1
pop.v.i self.recruitcount
pushi.e 0
pop.v.i self.sactionboxx
pushi.e 0
pop.v.i self.sactionboxy
pushi.e 0
pop.v.i self.hurtspriteoffx
pushi.e 0
pop.v.i self.hurtspriteoffy
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.d 0.2
pop.v.d self.image_speed
pushi.e 1607
pop.v.i self.idlesprite
pushi.e 1608
pop.v.i self.hurtsprite
pushi.e 1609
pop.v.i self.sparedsprite
pushi.e 0
pop.v.i self.custombody
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [4]

:[3]
push.i 7178355
setowner.e
push.l 382938298329
conv.l.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self._charactsprite
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 90
push.v self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pushi.e 50
conv.i.d
div.d.v
sub.v.i
pop.v.v self.depth
exit.i

:[5]
push.i [function]gml_Script_scr_enemy_object_init
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_enemy_object_init
popz.v

:[end]