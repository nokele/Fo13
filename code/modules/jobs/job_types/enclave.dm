/////////////
// ENCLAVE //
/////////////

/datum/job/enclave
	department_flag = ENCLAVE
	faction = "Enclave"
	selection_color = "#aaaaf7"
	forbids = "Enclave crimes: Fraternizing with outsiders beyond what is absolutly necessary. Aiding Brotherhood members in any way no matter how small."
	enforces = "Enclave rules: Stay in uniform. Act mature and respectful. Obey orders and always remember you are representing the only true legitimate power in this land of savages. Wearing gasmasks outside the compound is encouraged but not required."
	objectivesList = list("Department of Defense advisory: Collect resources and produce more Patribots, attrition is depleting our reserves.","Department of Defense advisory: Establish checkpoints to show presence, they must not forget who is the legitimate goverment.", "Science Divison advisory: Capture human subjects for experiments, alive. We have some new neurotoxin grenades we wish to do final tests with before field deployment.")
	access = list(ACCESS_ENCLAVE)
	minimal_access = list(ACCESS_ENCLAVE)
	exp_type = EXP_TYPE_ENCLAVE
	exp_requirements = 0

/datum/outfit/job/enclave
	id =	/obj/item/card/id/dogtag/enclave
	ears =	/obj/item/radio/headset/headset_enclave
	box =	/obj/item/storage/survivalkit_aid
	backpack =	/obj/item/storage/backpack/enclave
	satchel =	/obj/item/storage/backpack/satchel/enclave
	shoes =	/obj/item/clothing/shoes/f13/enclave/serviceboots
	gloves =	/obj/item/clothing/gloves/f13/military
	belt =	/obj/item/storage/belt/military/assault/enclave
	r_pocket =	/obj/item/flashlight/seclite
	l_pocket =	/obj/item/melee/onehanded/knife/bayonet



/*---------------------- RESEARCH DIRECTOR ---------------------------*/
// The leader of the Enclave bunker, not a tactical expert, and relies
// on the Sergeants to handle their job, but has the highest rank and 
// is the mission commander.

/datum/job/enclave/director
	title = "Enclave Research Director"
	flag = F13USSCIENTIST
	total_positions = 1
	spawn_positions = 1
	description = "You are in command of the Enclave outpost here, conduct research and help rebuild America by using your brains rather than your, admittedly impressive, military resources.."
	forbids = "The Enclave forbids you from leaving the base alone while it is still habitable."
	supervisors = "the United States Government."
	selection_color = "#323232"
	exp_requirements = 180
	access = list(ACCESS_ENCLAVE, ACCESS_ENCLAVE_RD)
	minimal_access = list(ACCESS_ENCLAVE, ACCESS_ENCLAVE_RD)

	outfit = /datum/outfit/job/enclave/director

/datum/outfit/job/enclave/director
	name =	"Enclave Research Director"
	jobtype =	/datum/job/enclave/director
	head =	/obj/item/clothing/head/helmet/f13/remnant/envirosuit
	glasses =	/obj/item/clothing/glasses/meson
	mask =	/obj/item/clothing/mask/breath/medical
	neck =	/obj/item/storage/belt/holster/legholster/aep7
	gloves =	/obj/item/clothing/gloves/color/latex/nitrile
	uniform =	/obj/item/clothing/under/f13/enclave/science
	suit =	/obj/item/clothing/suit/armor/f13/environmentalsuit
	accessory =	/obj/item/clothing/accessory/armband/science
	belt =	/obj/item/storage/belt/medical
	suit_store =	/obj/item/tank/internals/oxygen

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/grenade/chem_grenade/cleaner = 1,
		/obj/item/storage/bag/money/small/ncrofficers = 1,
		/obj/item/clothing/head/helmet/f13/helmet/enclave/science = 1,
		/obj/item/reagent_containers/food/snacks/f13/mre/remnant = 1,
		)

/datum/outfit/job/enclave/director/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_HIGH, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_UNETHICAL_PRACTITIONER, src) // Brainwashing




/*--------------------- ENCLAVE SCIENTIST --------------------------*/
// Extremely well educated, the Enclave science teams have made
// great strides in biomedical research and are not slouches in 
// engineering either.

/datum/job/enclave/scientist
	title = "Enclave Scientist"
	flag = F13USSCIENTIST
	faction = "Enclave"
	total_positions = 2
	spawn_positions = 2
	description = "You're responsible for the maintenance of the base, the knowledge you've accumulated over the years is the only thing keeping the remnants alive. You've dabbled in enough to be considered a Professor in proficiency, but they call you Doctor. Support your dwindling forces and listen to the Lieutenant."
	forbids = "The Enclave forbids you from leaving the base alone while it is still habitable."
	enforces = "You must maintain the secrecy of organization."
	supervisors = "the United States Government."
	selection_color = "#323232"
	outfit = /datum/outfit/job/enclave/scientist
	access = list(ACCESS_ENCLAVE, ACCESS_ENCLAVE_RD)
	minimal_access = list(ACCESS_ENCLAVE, ACCESS_ENCLAVE_RD)

/datum/outfit/job/enclave/scientist
	name =	"Enclave Scientist"
	jobtype =	/datum/job/enclave/scientist
	head =	/obj/item/clothing/head/helmet/f13/remnant/envirosuit
	neck =	/obj/item/storage/belt/holster/legholster/aep7
	glasses =	/obj/item/clothing/glasses/meson
	mask =	/obj/item/clothing/mask/breath/medical
	gloves =	/obj/item/clothing/gloves/color/latex/nitrile
	uniform =	/obj/item/clothing/under/f13/enclave/science
	suit =	/obj/item/clothing/suit/armor/f13/environmentalsuit
	accessory =	/obj/item/clothing/accessory/armband/science
	belt =	/obj/item/storage/belt/medical
	suit_store =	/obj/item/tank/internals/oxygen

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/grenade/chem_grenade/cleaner = 1,
		/obj/item/storage/bag/money/small/ncr = 1,
		/obj/item/clothing/head/helmet/f13/helmet/enclave/science = 1,
		/obj/item/reagent_containers/food/snacks/f13/mre/remnant = 1,
		)

/datum/outfit/job/enclave/scientist/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_MEDICALEXPERT, src)
	ADD_TRAIT(H, TRAIT_SURGERY_HIGH, src)
	ADD_TRAIT(H, TRAIT_CHEMWHIZ, src)
	ADD_TRAIT(H, TRAIT_UNETHICAL_PRACTITIONER, src) // Brainwashing



/*-------------------- INTELLIGENCE SPECIALIST ---------------------*/
// Serving as a bridge between the Science and Army branches and perform
// various clandestine operations. 

/datum/job/enclave/intel
	title = "Intelligence Specialist"
	flag = F13USMEDIC
	faction = "Enclave"
	total_positions = 2
	spawn_positions = 2
	description = "You are a US Secret Service Operative broadly tasked with ensuring the continued existence of your current post, you're free to assist the scientists, go completely undercover within another organisation, or simply act as a Paramedic for local forces."
	supervisors = "The United States Secret Service"
	outfit = /datum/outfit/job/enclave/intel
	loadout_options = list(
		/datum/outfit/loadout/observationist,
		/datum/outfit/loadout/infiltrator,
		/datum/outfit/loadout/engineer,
		/datum/outfit/loadout/medic,
		)



/datum/outfit/job/enclave/intel
	name =	"Intelligence Specialist"
	jobtype =	/datum/job/enclave/intel
	head =	/obj/item/clothing/head/helmet/f13/remnant/intel
	glasses = /obj/item/clothing/glasses/night/polarizing
	uniform =	/obj/item/clothing/under/f13/enclave/intel
	suit =	/obj/item/clothing/suit/armor/f13/combat/swat
	suit_store =	/obj/item/gun/ballistic/automatic/pistol/n99/enclave
	accessory =	/obj/item/clothing/accessory/ncr/SPC
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 3,
		/obj/item/suppressor = 1,
		/obj/item/clothing/head/helmet/riot/vaultsec = 1,
		/obj/item/storage/firstaid/regular = 1,
		/obj/item/storage/bag/money/small/ncr = 1,
		/obj/item/reagent_containers/food/snacks/f13/mre/remnant = 1,
		)

/datum/outfit/job/enclave/intel/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_SURGERY_LOW, src)
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)


/datum/outfit/loadout/observationist
	name = "Observationist"
	backpack_contents = list(
		/obj/item/encryptionkey/headset_vault = 1,
		/obj/item/jammer = 1,
		/obj/item/binoculars = 1,
		/obj/item/clothing/mask/infiltrator = 1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 2,
		)

/datum/outfit/loadout/infiltrator
	name = "Infiltrator"
	backpack_contents = list(
		/obj/item/encryptionkey/headset_town = 1,
		/obj/item/card/id/syndicate = 1,
		/obj/item/clothing/mask/infiltrator = 1,
		/obj/item/flashlight/emp = 1,
		/obj/item/melee/classic_baton/telescopic = 1,
		)

/datum/outfit/loadout/engineer
	name = "Combat Engineer"
	backpack_contents = list(
		/obj/item/storage/belt/utility = 1,
		/obj/item/grenade/plastic = 1,
		/obj/item/stack/sheet/mineral/sandbags = 10,
		/obj/item/stack/sheet/metal = 20,
		/obj/item/clothing/gloves/color/yellow = 1,
		/obj/item/ammo_box/magazine/m10mm_adv/simple = 2,
		)

/datum/outfit/loadout/medic
	name = "Field Medic"
	backpack_contents = list(
		/obj/item/storage/firstaid/ancient = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 1,
		/obj/item/gun/ballistic/shotgun/police = 1,
		/obj/item/ammo_box/shotgun/buck = 1,
		/obj/item/clothing/accessory/armband/medblue = 1,
		/obj/item/clothing/mask/surgical = 1,
		/obj/item/clothing/gloves/color/latex/nitrile = 1,
		)

/*--------------------- ENCLAVE SERGEANT -----------------------*/
// The highest ranking military Enclave personell are the two
// Sergeants, each leading a squad.

/datum/job/enclave/armor
	title = "Enclave Sergeant"
	flag = F13USSGT
	total_positions = 2
	spawn_positions = 2
	description = "Entrusted with both the now rare advanced armor and command of a squad, your nation relies on you doing your job."
	supervisors = "the Director and the United States Government."
	selection_color = "#323232"
	exp_requirements = 180
	outfit = /datum/outfit/job/enclave/armor
	loadout_options = list(
		/datum/outfit/loadout/hammer,
		/datum/outfit/loadout/support,
		)


/datum/outfit/job/enclave/armor
	name = "Enclave Sergeant"
	jobtype = /datum/job/enclave/armor
	head =	/obj/item/clothing/head/helmet/f13/remnant/sergeant
	neck =	/obj/item/storage/belt/holster/legholster
	mask =	/obj/item/clothing/mask/gas/enclave
	uniform =	/obj/item/clothing/under/f13/enclave
	suit =	/obj/item/clothing/suit/armor/f13/enclave/sergeant
	accessory =	/obj/item/clothing/accessory/enclave/sgt
	belt =	/obj/item/storage/belt/military/assault/enclave
	gloves =	/obj/item/clothing/gloves/f13/military
	shoes =	/obj/item/clothing/shoes/f13/enclave/serviceboots
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/clothing/head/helmet/f13/remnant/peacekeeper = 1,
		/obj/item/storage/bag/money/small/ncrofficers = 1,
		/obj/item/reagent_containers/food/snacks/f13/mre/remnant = 1,
		)

/datum/outfit/job/enclave/armor/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_PA_WEAR, src)

/datum/outfit/loadout/hammer
	name = "Hammer."
	suit_store = /obj/item/twohanded/sledgehammer/supersledge
	backpack_contents = list(
		/obj/item/gun/energy/laser/plasma/glock = 1,
		/obj/item/stock_parts/cell/ammo/ec = 3,
		/obj/item/book/granter/trait/bigleagues = 1,
		)

/datum/outfit/loadout/support
	name = "Support Gunner"
	suit_store = /obj/item/gun/ballistic/automatic/g11
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m473 = 4,
		/obj/item/gun/ballistic/revolver/ballisticfist = 1,
		/obj/item/ammo_box/shotgun/buck = 1,
		)


/*-------------------- ENCLAVE CORPORAL -----------------------*/
// NCO

/datum/job/enclave/corporal
	title = "Enclave Corporal"
	flag = F13USCORPORAL
	total_positions = 2
	spawn_positions = 2
	description = "You are a member of a dying breed, true Americans, but you will do what you can to help revitalize the nation, and protect her from all enemies, foreign and domestic."
	supervisors = "You report to the Sergeants directly."
	selection_color = "#323232"
	outfit = /datum/outfit/job/enclave/corporal
	loadout_options = list(
		/datum/outfit/loadout/corporalskirmisher,
		/datum/outfit/loadout/marksman,
		)



/datum/outfit/job/enclave/corporal
	name = "Enclave Corporal"
	jobtype = /datum/job/enclave/corporal
	head =	/obj/item/clothing/head/helmet/f13/remnant/corporal
	mask =	/obj/item/clothing/mask/gas/enclave
	neck =	/obj/item/storage/belt/holster/legholster/aep7
	uniform =	/obj/item/clothing/under/f13/enclave
	suit =	/obj/item/clothing/suit/armor/f13/enclave/corporal
	shoes =	/obj/item/clothing/shoes/f13/enclave/serviceboots
	gloves =	/obj/item/clothing/gloves/f13/military
	accessory =	/obj/item/clothing/accessory/ncr/CPL
	belt =	/obj/item/storage/belt/military/assault/enclave
	backpack_contents = list(
		/obj/item/grenade/smokebomb = 1,
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/clothing/head/helmet/f13/remnant/peacekeeper = 1,
		/obj/item/storage/bag/money/small/ncr = 1,
		/obj/item/reagent_containers/food/snacks/f13/mre/remnant = 1,
		)

/datum/outfit/job/enclave/corporal/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)

/datum/outfit/loadout/corporalskirmisher
	name = "Skirmisher"
	suit_store = /obj/item/gun/ballistic/automatic/assault_rifle/r91c
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle/assault = 3,
		)

/datum/outfit/loadout/marksman
	name = "Marksman"
	suit_store = /obj/item/gun/ballistic/automatic/assault_rifle/r91m
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle/assault = 3,
		)

/*--------------------- ENCLAVE PRIVATE ------------------------*/
// Soldier.

/datum/job/enclave/soldier
	title = "Enclave Private"
	flag = F13USPRIVATE
	total_positions = 4
	spawn_positions = 4
	description = "You are a member of a dying breed, true Americans, but you will do what you can to help revitalize the nation, and protect her from all enemies, foreign and domestic."
	supervisors = "The Corporals, alongside the Sergeants."
	selection_color = "#323232"
	outfit = /datum/outfit/job/enclave/soldier
	loadout_options = list(
		/datum/outfit/loadout/rifleman,
		/datum/outfit/loadout/skirmisher,
		)



/datum/outfit/job/enclave/soldier
	name =	"Enclave Private"
	jobtype =	/datum/job/enclave/soldier
	head =	/obj/item/clothing/head/helmet/f13/remnant/peacekeeper
	mask =	/obj/item/clothing/mask/gas/enclave
	neck =	/obj/item/storage/belt/holster/legholster/aep7
	uniform =	/obj/item/clothing/under/f13/enclave
	suit =	/obj/item/clothing/suit/armor/f13/enclave/private
	accessory =	/obj/item/clothing/accessory/enclave/soldier
	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak = 2,
		/obj/item/storage/bag/money/small/ncr = 1,
		/obj/item/reagent_containers/food/snacks/f13/mre/remnant = 1,
		)

/datum/outfit/loadout/rifleman
	name = "Rifleman"
	suit_store = /obj/item/gun/ballistic/automatic/assault_rifle/r91a1
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m556/rifle = 2,
		)

/datum/outfit/loadout/skirmisher
	name = "Skirmisher"
	suit_store = /obj/item/gun/ballistic/automatic/smg/smg10mm
	backpack_contents = list(
		/obj/item/ammo_box/magazine/m10mm_adv/ext = 2,
		/obj/item/book/granter/trait/trekking = 1,
		)

// OFFICER  Admin/Event Role

/datum/job/enclave/officer
	title = "Enclave Officer"
	flag = F13USLT
	faction = "Enclave"
	total_positions = 0
	spawn_positions = 0
	description = "You are the officer in charge of commanding the remnants of the Enclave forces in the area."
	supervisors = "the United States Government."
	selection_color = "#323232"
	exp_requirements = 300
	exp_type = EXP_TYPE_ENCLAVE
	outfit = /datum/outfit/job/enclave/officer

/datum/outfit/job/enclave/officer
	name =	"Enclave Officer"
	jobtype =	/datum/job/enclave/officer
	head =	/obj/item/clothing/head/helmet/f13/remnant/officer
	glasses = /obj/item/clothing/glasses/night
	mask =	/obj/item/clothing/mask/gas/enclave
	neck =	/obj/item/storage/belt/holster/legholster/aep7
	uniform =	/obj/item/clothing/under/f13/enclave_officer
	accessory =	/obj/item/clothing/accessory/enclave
	suit =	/obj/item/clothing/suit/armor/f13/enclave/officercoat
	gloves =	/obj/item/clothing/gloves/f13/military

	backpack_contents = list(
		/obj/item/reagent_containers/hypospray/medipen/stimpak/super = 2,
		/obj/item/grenade/flashbang = 1,
		/obj/item/stock_parts/cell/ammo/ec = 3,
		/obj/item/gun/energy/laser/plasma/glock/extended = 1,
		/obj/item/storage/bag/money/small/wastelander = 1,
		)

/datum/outfit/job/enclave/officer/pre_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	ADD_TRAIT(H, TRAIT_HARD_YARDS, src)
	ADD_TRAIT(H, TRAIT_PA_WEAR, src)

/datum/outfit/job/wasteland/enclavelt/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	if(visualsOnly)
		return
	if(H.mind)
		var/obj/effect/proc_holder/spell/terrifying_presence/S = new /obj/effect/proc_holder/spell/terrifying_presence
		H.mind.AddSpell(S)
