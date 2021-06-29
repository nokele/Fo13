/obj/machinery/vending/autodrobe
	name = "\improper AutoDrobe"
	desc = "A vending machine for costumes."
	icon_state = "theater"
	icon_deny = "theater-deny"
	product_slogans = "Dress for success!;Suited and booted!;It's show time!;Why leave style up to fate? Use AutoDrobe!"
	vend_reply = "Thank you for using AutoDrobe!"
	products = list(/obj/item/clothing/suit/chickensuit = 1,
						/obj/item/clothing/head/chicken = 1,
						/obj/item/clothing/under/costume/gladiator = 1,
						/obj/item/clothing/head/helmet/gladiator = 1,
						/obj/item/clothing/under/rank/captain/suit = 1,
						/obj/item/clothing/head/flatcap = 1,
						/obj/item/clothing/suit/toggle/labcoat/mad = 1,
						/obj/item/clothing/under/dress/skirt = 1,
						/obj/item/clothing/head/beret = 1,
						/obj/item/clothing/accessory/waistcoat = 1,
						/obj/item/clothing/under/suit/black = 1,
						/obj/item/clothing/head/that = 1,
						/obj/item/clothing/under/costume/kilt = 1,
						/obj/item/clothing/head/beret = 1,
						/obj/item/clothing/accessory/waistcoat = 1,
						/obj/item/clothing/glasses/monocle =1,
						/obj/item/clothing/head/bowler = 1,
						/obj/item/cane = 1,
						/obj/item/clothing/under/rank/civilian/dutch = 2,
						/obj/item/clothing/under/suit/sl = 1,
						/obj/item/clothing/mask/fakemoustache = 1,
						/obj/item/clothing/suit/apron = 1,
						/obj/item/clothing/under/suit/waiter = 1,
						/obj/item/clothing/suit/jacket/miljacket = 1,
						/obj/item/clothing/under/costume/pirate = 1,
						/obj/item/clothing/suit/pirate = 1,
						/obj/item/clothing/head/pirate = 1,
						/obj/item/clothing/head/bandana = 1,
						/obj/item/clothing/head/bandana = 1,
						/obj/item/clothing/under/costume/soviet = 1,
						/obj/item/clothing/head/ushanka = 1,
						/obj/item/clothing/suit/chaplain/holidaypriest = 1,
						/obj/item/clothing/head/wizard/marisa/fake = 1,
						/obj/item/clothing/suit/wizrobe/marisa/fake = 1,
						/obj/item/clothing/under/dress/sundress = 1,
						/obj/item/staff = 3,
						/obj/item/clothing/under/rank/captain/suit/skirt = 1,
						/obj/item/clothing/mask/rat/bat = 1,
						/obj/item/clothing/mask/rat/bee = 1,
						/obj/item/clothing/mask/rat/bear = 1,
						/obj/item/clothing/mask/rat/raven = 1,
						/obj/item/clothing/mask/rat/jackal = 1,
						/obj/item/clothing/mask/rat/fox = 1,
						/obj/item/clothing/mask/frog = 1,
						/obj/item/clothing/mask/rat/tribal = 1,
						/obj/item/clothing/mask/rat = 1,
						/obj/item/clothing/suit/apron/overalls = 1,
						/obj/item/clothing/head/rabbitears =1,
						/obj/item/clothing/head/sombrero = 1,
						/obj/item/clothing/head/sombrero/green = 1,
						/obj/item/clothing/suit/poncho = 1,
						/obj/item/clothing/suit/poncho/green = 1,
						/obj/item/clothing/suit/poncho/red = 1,
						/obj/item/clothing/under/rank/civilian/janitor/maid = 1,
						/obj/item/clothing/gloves/evening = 1,
						/obj/item/clothing/suit/whitedress = 1,
						/obj/item/clothing/head/cueball = 1,
						/obj/item/clothing/under/suit/white_on_white = 1,
						/obj/item/clothing/under/costume/sailor = 1,
						/obj/item/clothing/ears/headphones = 2,
						/obj/item/clothing/head/wig/random = 3,
						/obj/item/clothing/suit/ran = 2,
						/obj/item/clothing/head/ran = 2)
	contraband = list(/obj/item/clothing/suit/judgerobe = 1,
						/obj/item/clothing/head/powdered_wig = 1,
						/obj/item/gun/magic/wand = 2,
						/obj/item/clothing/glasses/sunglasses/garb = 2,
						/obj/item/clothing/glasses/sunglasses/blindfold = 1,
						/obj/item/clothing/mask/muzzle = 2,
						/obj/item/clothing/under/syndicate/camo/cosmetic = 3)
	premium = list(/obj/item/clothing/suit/pirate/captain = 1,
					/obj/item/clothing/head/pirate/captain = 1)

	refill_canister = /obj/item/vending_refill/autodrobe
	default_price = PRICE_ALMOST_CHEAP
	extra_price = PRICE_ALMOST_EXPENSIVE
	payment_department = ACCOUNT_SRV

/obj/machinery/vending/autodrobe/Initialize()
	. = ..()
	cost_multiplier_per_dept = list("[ACCESS_THEATRE]" = 0)

/obj/machinery/vending/autodrobe/canLoadItem(obj/item/I,mob/user)
	return (I.type in products)

/obj/item/vending_refill/autodrobe
	machine_name = "AutoDrobe"
	icon_state = "refill_costume"
