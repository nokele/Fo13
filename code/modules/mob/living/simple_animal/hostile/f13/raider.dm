/mob/living/simple_animal/hostile/raider
	name = "Raider"
	desc = "Another murderer churned out by the wastes."
	icon = 'icons/fallout/mobs/npc/raiders.dmi'
	icon_state = "raidermelee"
	icon_living = "raidermelee"
	icon_dead = "raidermelee_dead"
	icon_gib = "syndicate_gib"
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	speak_chance = 0
	turns_per_move = 5
	response_help_simple = "pokes"
	response_disarm_simple = "shoves"
	response_harm_simple = "hits"
	speed = 1
	maxHealth = 140
	health = 140
	harm_intent_damage = 8
	melee_damage_lower = 25
	melee_damage_upper = 50
	attack_verb_simple = "punches"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	a_intent = INTENT_HARM
	loot = list(/obj/effect/mob_spawn/human/corpse/raidermelee, /obj/item/melee/onehanded/knife/survival)
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("raider")
	check_friendly_fire = 1
	status_flags = CANPUSH
	del_on_death = 1
	healable = 1
	ranged = 0

/mob/living/simple_animal/hostile/raider/thief

/mob/living/simple_animal/hostile/raider/thief/movement_delay()
	return -2

/mob/living/simple_animal/hostile/raider/thief/AttackingTarget()
	if(ishuman(target))
		var/mob/living/carbon/human/H = target
		var/back_target = H.back
		if(back_target)
			H.dropItemToGround(back_target, TRUE)
			src.transferItemToLoc(back_target, src, TRUE)
		var/belt_target = H.belt
		if(belt_target)
			H.dropItemToGround(belt_target, TRUE)
			src.transferItemToLoc(belt_target, src, TRUE)
		var/shoe_target = H.shoes
		if(shoe_target)
			H.dropItemToGround(shoe_target, TRUE)
			src.transferItemToLoc(shoe_target, src, TRUE)
	retreat_distance = 50
	addtimer(CALLBACK(src, .proc/undo_retreat), 5 MINUTES)

/mob/living/simple_animal/hostile/raider/thief/proc/undo_retreat()
	retreat_distance = null

/mob/living/simple_animal/hostile/raider/thief/death(gibbed)
	for(var/obj/I in contents)
		src.dropItemToGround(I)
	. = ..()

/mob/living/simple_animal/hostile/raider/ranged
	icon_state = "raiderranged"
	icon_living = "raiderranged"
	loot = list(/obj/effect/mob_spawn/human/corpse/raiderranged, /obj/effect/spawner/lootdrop/f13/npc_raider)
	ranged = 1
	maxHealth = 115
	health = 115
	retreat_distance = 4
	minimum_distance = 6
	projectiletype = /obj/item/projectile/bullet/c9mm/op
	projectilesound = 'sound/f13weapons/ninemil.ogg'


/mob/living/simple_animal/hostile/raider/ranged/Aggro()
	..()
	summon_backup(15)
	say("HURRY, HURRY, HURRY!!!")

/mob/living/simple_animal/hostile/raider/legendary
	loot = list(/obj/effect/mob_spawn/human/corpse/raiderranged, /obj/item/melee/onehanded/knife/survival, /obj/item/reagent_containers/food/snacks/kebab/human)
	name = "Legendary Raider"
	desc = "Another murderer churned out by the wastes - this one seems a bit faster than the average..."
	color = "#FFFF00"
	maxHealth = 450
	health = 450
	speed = 1.2
	obj_damage = 300
	aggro_vision_range = 15

/mob/living/simple_animal/hostile/raider/ranged/legendary
	name = "Legendary Raider"
	desc = "Another murderer churned out by the wastes, wielding a decent pistol and looking very strong"
	color = "#FFFF00"
	icon_state = "raiderranged"
	icon_living = "raiderranged"
	loot = list(/obj/effect/mob_spawn/human/corpse/raiderranged, /obj/item/gun/ballistic/revolver/m29)
	ranged = 1
	maxHealth = 600
	health = 600
	retreat_distance = 1
	minimum_distance = 2
	projectiletype = /obj/item/projectile/bullet/m44
	projectilesound = 'sound/f13weapons/44mag.ogg'
	extra_projectiles = 1
	aggro_vision_range = 15
	obj_damage = 300

/mob/living/simple_animal/hostile/raider/ranged/sulphiteranged
	icon_state = "metal_raider"
	icon_living = "metal_raider"
	loot = list(/obj/effect/mob_spawn/human/corpse/raiderrangedsulphite, /obj/item/gun/ballistic/automatic/pistol/m1911/custom)
	ranged = 1
	maxHealth = 180
	health = 180
	projectiletype = /obj/item/projectile/bullet/c45/op
	projectilesound = 'sound/weapons/gunshot.ogg'

/mob/living/simple_animal/hostile/raider/ranged/boss
	name = "Raider Boss"
	icon_state = "raiderboss"
	icon_living = "raiderboss"
	maxHealth = 170
	health = 170
	extra_projectiles = 3
	projectiletype = /obj/item/projectile/bullet/c45/op
	loot = list(/obj/effect/mob_spawn/human/corpse/raiderboss, /obj/item/gun/ballistic/automatic/smg/greasegun)

/mob/living/simple_animal/hostile/raider/ranged/boss/Aggro()
	..()
	summon_backup(15)
	say("KILL 'EM, FELLAS!")

// Skulls
/mob/living/simple_animal/hostile/raider/skull
	name = "Skulls hangaround"
	desc = "Want to join the gang but haven't killed enough people yet, sniffs glue in their spare time. You might be their ticket in."
	icon_state = "skulls"
	icon_living = "skulls"
	loot = list(/obj/effect/mob_spawn/human/corpse/skulls, /obj/item/melee/onehanded/knife/hunting, /obj/item/crafting/wonderglue)

/mob/living/simple_animal/hostile/raider/skull/Aggro()
	..()
	summon_backup(15)
	say("My first kill! COME WATCH BOYS!!")


/mob/living/simple_animal/hostile/raider/ranged/skull
	name = "Skulls member"
	desc = "Full member of the gang called the Skulls. Permanent state of aggression due to glue sniffing and head trauma."
	icon_state = "skullsmember"
	icon_living = "skullsmember"
	loot = list(/obj/effect/mob_spawn/human/corpse/skullsmember, /obj/item/gun/ballistic/revolver/colt6520, /obj/item/ammo_box/c10mm/improvised)
	projectiletype = /obj/item/projectile/bullet/c10mm/ap
	projectilesound = 'sound/f13weapons/10mm_fire_02.ogg'

/mob/living/simple_animal/hostile/raider/ranged/skull/Aggro()
	..()
	summon_backup(15)
	say("Gnnh...head hurts..wait...you ain't one of the boys...time TO DIE!!")

/mob/living/simple_animal/hostile/raider/ranged/boss/skull
	name = "Esteban the Killer"
	desc = "Leader of the independent gang called the Skulls. Got a macho image and low impulse control."
	icon_state = "skullsboss"
	icon_living = "skullsboss"
	loot = list(/obj/effect/mob_spawn/human/corpse/skullsboss, /obj/item/gun/ballistic/automatic/smg/greasegun, /obj/item/clothing/mask/cigarette/cigar/havana)
	projectilesound = 'sound/weapons/gunshot.ogg'

/mob/living/simple_animal/hostile/raider/ranged/boss/skull/Aggro()
	..()
	summon_backup(15)
	say("You DARE disrespect me!? Hijo de puta! Time to die!")

// Lurkers
/mob/living/simple_animal/hostile/raider/lurkers/club/Aggro()
	..()
	summon_backup(15)
	say("Duzman! Keeli!")

/mob/living/simple_animal/hostile/raider/thief/lurkerbeggar/Aggro()
	..()
	say("Gabba he sheeni!")

/mob/living/simple_animal/hostile/raider/legendary/lurker/Aggro()
	..()
	summon_backup(15)
	say("Faga di mutti!!")

/mob/living/simple_animal/hostile/raider/thief/lurkerbeggar
	name = "Lurkers beggar"
	desc = "The Lurkers tribe are very violent to outsiders and speak a homebrew language, making peaceful interactions difficult."
	icon_state = "lurkersbeggar"
	icon_living = "lurkersbeggar"
	icon_dead = "lurkersbeggar_dead"
	del_on_death = 0
	loot = null

/mob/living/simple_animal/hostile/raider/thief/lurkerbeggar/fem
	icon_state = "lurkersbeggarfem"
	icon_living = "lurkersbeggarfem"
	icon_dead = "lurkersbeggarfem_dead"
	death_sound = 'sound/voice/scream/scream_f3.ogg'

/mob/living/simple_animal/hostile/raider/lurkers
	name = "Lurkers tribal"
	desc = "The Lurkers tribe are very violent to outsiders and speak a homebrew language, making peaceful interactions difficult."
	icon_state = "lurkers"
	icon_living = "lurkers"
	icon_dead = "lurkers_dead"
	retreat_distance = 0
	minimum_distance = 0
	melee_damage_lower = 40
	melee_damage_upper = 40
	healable = 1
	loot = list(/obj/item/twohanded/spear/scrapspear)
	death_sound = 'sound/voice/scream/scream_m1.ogg'
	del_on_death = 0

/mob/living/simple_animal/hostile/raider/lurkers/club
	name = "Lurkers clubman"
	icon_state = "lurkersmember"
	icon_living = "lurkersmember"
	icon_dead = "lurkersmember_dead"
	melee_damage_lower = 50
	melee_damage_upper = 50
	loot = list(/obj/item/stack/ore/silver = 10)

/mob/living/simple_animal/hostile/raider/lurkers/gunner
	name = "Lurkers tribal gunner"
	icon_state = "lurkersshotty"
	icon_living = "lurkersshotty"
	icon_dead = "lurkersshotty_dead"
	ranged = 1
	maxHealth = 115
	health = 115
	retreat_distance = 3
	minimum_distance = 4
	loot = list(/obj/item/gun/ballistic/shotgun/hunting)
	projectiletype = /obj/item/projectile/bullet/shotgun_slug
	projectilesound = 'sound/f13weapons/shotgun.ogg'

/mob/living/simple_animal/hostile/raider/legendary/lurker/shaman
	name = "Lurkers shaman"
	desc = "The Lurkers shamans are old but strong and armed with crab clubs."
	icon_state = "lurkersshaman"
	icon_living = "lurkersshaman"
	icon_dead = "lurkersshaman_dead"
	del_on_death = 0
	loot = list(/obj/item/clothing/gloves/ring/silver, /obj/item/reagent_containers/pill/patch/bitterdrink = 2)

/mob/living/simple_animal/hostile/raider/legendary/lurker/chieftain
	name = "Lurkers chieftain"
	desc = "The Lurkers chieftains are usually very short and stocky for some reason."
	icon_state = "lurkerschief"
	icon_living = "lurkerschief"
	icon_dead = "lurkerschief_dead"
	projectiletype = /obj/item/projectile/bullet/shotgun_slug
	projectilesound = 'sound/f13weapons/shotgun.ogg'
	del_on_death = 0
	ranged = 1
	maxHealth = 600
	health = 600
	retreat_distance = 1
	minimum_distance = 2
	loot = list(/obj/item/gun/ballistic/shotgun/automatic/combat/auto5, /obj/item/clothing/head/f13/hairband)


// Raider Characters

/mob/living/simple_animal/hostile/raider/unique/gourmet
	name = "The Aspiring Chef"
	desc = "Corpulent and jovial, too bad Mr. Gourmet is a merciless murderer and cannibal."
	icon_state = "gourmet"
	icon_living = "gourmet"
	icon_dead = "gourmet_dead"
	maxHealth = 280
	health = 280
	speed = 2
	ranged = 1
	retreat_distance = 1
	minimum_distance = 2
	extra_projectiles = 3
	projectiletype = /obj/item/projectile/bullet/c10mm
	loot = list(/obj/item/gun/ballistic/automatic/smg/smg10mm/worn, /obj/item/melee/onehanded/knife/cosmic)
	projectilesound = 'sound/f13weapons/10mm_fire_03.ogg'

/mob/living/simple_animal/hostile/raider/unique/gourmet/Aggro()
	..()
	say("Wonderful! You will be perfect alongside the mushroom stew. Enchanté!")


/mob/living/simple_animal/hostile/raider/unique/hammertime
	name = "Joe Hammertime"
	desc = "Thin, twitching, a massive Turbo abuser, Joe lies in bed all day and only gets up to look for a fix, or to brain passers-by, hoping to rob their corpses. "
	icon_state = "hammertime"
	icon_living = "hammertime"
	icon_dead = "hammertime_dead"
	maxHealth = 220
	health = 220
	environment_smash = 1
	wander = 1
	melee_damage_lower = 50
	melee_damage_upper = 50
	loot = list(/obj/item/clothing/head/helmet/f13/motorcycle, /obj/item/twohanded/sledgehammer)

/mob/living/simple_animal/hostile/raider/unique/hammertime/Aggro()
	..()
	say("Got any caps? Eh, never mind, I'll just search your corpse.")

/obj/effect/mob_spawn/human/corpse/raider
	name = "Raider"
	uniform = /obj/item/clothing/under/f13/rag
	suit = /obj/item/clothing/suit/armor/f13/raider/iconoclast
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/f13/leather
	head = /obj/item/clothing/head/helmet/f13/firefighter

/mob/living/simple_animal/hostile/raider/old/Aggro()
	..()
	summon_backup(15)
	say("HURRY, HURRY, HURRY!!!")

/mob/living/simple_animal/hostile/raider/old/firefighter
	icon_state = "firefighter_raider"
	icon_living = "firefighter_raider"
	icon_dead = "firefighter_raider"
	icon_gib = "firefighter_raider"
	retreat_distance = 0
	minimum_distance = 0
	melee_damage_lower = 50
	melee_damage_upper = 50
	loot = list(/obj/effect/mob_spawn/human/corpse/raider, /obj/item/twohanded/fireaxe)
	healable = 1
	ranged = 0

/mob/living/simple_animal/hostile/raider/old/tribal
	icon_state = "tribal_raider"
	icon_living = "tribal_raider"
	icon_dead = "tribal_raider"
	icon_gib = "tribal_raider"
	retreat_distance = 0
	minimum_distance = 0
	melee_damage_lower = 40
	melee_damage_upper = 40
	loot = list(/obj/effect/mob_spawn/human/corpse/raider/tribal, /obj/item/twohanded/spear)
	healable = 1
	ranged = 0

/obj/effect/mob_spawn/human/corpse/raider/tribal
	uniform = /obj/item/clothing/under/f13/raiderrags
	suit = /obj/item/clothing/suit/armor/f13/tribal
	shoes = /obj/item/clothing/shoes/f13/rag
	mask = /obj/item/clothing/mask/facewrap
	head = /obj/item/clothing/head/helmet/f13/fiend

/mob/living/simple_animal/hostile/raider/old/baseball
	icon_state = "baseball_raider"
	icon_living = "baseball_raider"
	icon_dead = "baseball_raider"
	icon_gib = "baseball_raider"
	retreat_distance = 1
	minimum_distance = 1
	melee_damage_lower = 40
	melee_damage_upper = 40
	maxHealth = 200
	health = 200
	loot = list(/obj/effect/mob_spawn/human/corpse/raider/baseball, /obj/item/twohanded/baseball)
	healable = 1
	ranged = 0

/obj/effect/mob_spawn/human/corpse/raider/baseball
	uniform = /obj/item/clothing/under/f13/mechanic
	suit = /obj/item/clothing/suit/armor/f13/raider/yankee
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/f13/leather/fingerless
	head = /obj/item/clothing/head/helmet/f13/raider/yankee

/mob/living/simple_animal/hostile/raider/biker
	icon_state = "biker_raider"
	icon_living = "biker_raider"
	icon_dead = "biker_raider"
	icon_gib = "biker_raider"
	retreat_distance = 4
	minimum_distance = 4
	melee_damage_lower = 20
	melee_damage_upper = 20
	maxHealth = 200
	health = 200
	loot = list(/obj/effect/mob_spawn/human/corpse/raider/biker, /obj/item/gun/ballistic/revolver/thatgun)
	healable = 1
	ranged = 1
	projectiletype = /obj/item/projectile/bullet/a556/match
	projectilesound = 'sound/f13weapons/magnum_fire.ogg'
	casingtype = /obj/item/ammo_casing/a556

/obj/effect/mob_spawn/human/corpse/raider/biker
	uniform = /obj/item/clothing/under/f13/ncrcf
	suit = /obj/item/clothing/suit/armor/f13/combatrusted
	shoes = /obj/item/clothing/shoes/f13/explorer
	gloves = /obj/item/clothing/gloves/f13/leather/fingerless
	head = /obj/item/clothing/head/helmet/f13/raidercombathelmet
	neck = /obj/item/clothing/neck/mantle/brown
