char = 0;
myself = 0;
points = 0;
becomeflash = 0;
state = 0;
flash = 0;
siner = 0;
fsiner = 0;
attacktimer = 0;
attacked = 0;
combatdarken = 1;
darkentimer = 0;
darkify = 0;
image_xscale = 2;
image_yscale = 2;
myheight = 37;
mywidth = 34;
index = 0;
specdraw = 0;
is_auto_susie = 0;
normalsprite = spr_krisr_dark_ch1;
idlesprite = spr_krisb_idle_ch1;
actreadysprite = spr_krisb_actready_ch1;
actsprite = spr_krisb_act_ch1;
hurtsprite = spr_krisb_hurt_ch1;
defendsprite = spr_krisb_attackready_ch1;
attackreadysprite = spr_krisb_attackready_ch1;
attacksprite = spr_krisb_attack_ch1;
itemsprite = spr_krisb_item_ch1;
itemreadysprite = spr_krisb_itemready_ch1;
spellreadysprite = spr_ralseib_spellready_ch1;
spellsprite = spr_ralseib_spell_ch1;
defeatsprite = spr_krisb_defeat_ch1;
victorysprite = spr_krisb_victory_ch1;
victoryanim = 0;
actframes = 7;
victoryframes = 9;
defendframes = 1;
itemframes = 3;
attackframes = 3;
attackspeed = 0.5;
actframes = 7;
actreturnframes = 10;
spellframes = 10;
hurt = 0;
hurttimer = 0;
hurtindex = 0;
acttimer = 0;
defendtimer = 0;
itemed = 0;
tu = 0;

if (object_index == obj_herokris_ch1)
{
    normalsprite = spr_krisr_dark_ch1;
    idlesprite = spr_krisb_idle_ch1;
    defendsprite = spr_krisb_defend_ch1;
    hurtsprite = spr_krisb_hurt_ch1;
    attackreadysprite = spr_krisb_attackready_ch1;
    attacksprite = spr_krisb_attack_ch1;
    itemsprite = spr_krisb_item_ch1;
    actreadysprite = spr_krisb_actready_ch1;
    actsprite = spr_krisb_act_ch1;
    itemreadysprite = spr_krisb_itemready_ch1;
    spellreadysprite = spr_krisb_actready_ch1;
    spellsprite = spr_krisb_act_ch1;
    defeatsprite = spr_krisb_defeat_ch1;
    victorysprite = spr_krisb_victory_ch1;
    actframes = 7;
    actreturnframes = 10;
    attackframes = 6;
    itemframes = 6;
    defendframes = 5;
    spellframes = 10;
    attackspeed = 0.5;
    victoryframes = sprite_get_number(victorysprite);
    mywidth = 68;
    myheight = 74;
}

if (object_index == obj_herosusie_ch1)
{
    attackframes = 5;
    itemframes = 5;
    defendframes = 5;
    actframes = 7;
    actreturnframes = 10;
    spellframes = 8;
    attackspeed = 0.5;
    normalsprite = spr_susier_dark_ch1;
    idlesprite = spr_susieb_idle_ch1;
    defendsprite = spr_susieb_defend_ch1;
    hurtsprite = spr_susieb_hurt_ch1;
    actreadysprite = spr_susieb_actready_ch1;
    actsprite = spr_susieb_act_ch1;
    attackreadysprite = spr_susieb_attackready_ch1;
    attacksprite = spr_susieb_attack_ch1;
    
    if (global.charweapon[2] == 0)
    {
        idlesprite = spr_susieb_idle_unarmed_ch1;
        attackreadysprite = spr_susieb_attackready_unarmed_ch1;
        attacksprite = spr_susieb_attack_unarmed_ch1;
    }
    
    itemsprite = spr_susieb_item_ch1;
    itemreadysprite = spr_susieb_itemready_ch1;
    spellreadysprite = spr_susieb_spellready_ch1;
    spellsprite = spr_susieb_spell_ch1;
    defeatsprite = spr_susieb_defeat_ch1;
    victorysprite = spr_susieb_victory_ch1;
    victoryframes = sprite_get_number(victorysprite);
    mywidth = 70;
    myheight = 82;
}

if (object_index == obj_heroralsei_ch1)
{
    attackframes = 5;
    itemframes = 7;
    defendframes = 6;
    actframes = 7;
    actreturnframes = 10;
    attackspeed = 0.5;
    normalsprite = spr_ralseir_ch1;
    idlesprite = spr_ralseib_idle_ch1;
    defendsprite = spr_ralseib_defend_ch1;
    hurtsprite = spr_ralsei_shock_ch1;
    attackreadysprite = spr_ralseib_attackready_ch1;
    attacksprite = spr_ralseib_attack_ch1;
    itemsprite = spr_ralseib_item_ch1;
    itemreadysprite = spr_ralseib_itemready_ch1;
    spellreadysprite = spr_ralseib_spellready_ch1;
    spellsprite = spr_ralseib_spell_ch1;
    defeatsprite = spr_ralseib_defeat_ch1;
    victorysprite = spr_ralseib_victory_ch1;
    actreadysprite = spr_ralseib_actready_ch1;
    actsprite = spr_ralseib_act_ch1;
    victoryframes = sprite_get_number(victorysprite);
    mywidth = 52;
    myheight = 86;
}
