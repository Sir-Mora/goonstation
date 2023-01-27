ABSTRACT_TYPE(/obj/item/clothing/head/headband/plant)
/obj/item/clothing/head/headband/plant
	name = "flower"
	desc = "you probably shouldn't be seeing this!!"
	icon = 'icons/obj/clothing/item_hats.dmi'
	wear_image_icon = 'icons/mob/clothing/head.dmi'
	inhand_image_icon = 'icons/mob/inhand/hand_headgear.dmi'

/obj/item/clothing/head/headband/plant/rafflesia
	name = "rafflesia"
	desc = "Usually reffered to as corpseflower due to its horrid odor, perfect for masking the smell of your stinky head."
	icon_state = "rafflesiahat"
	item_state = "rafflesiahat"

/obj/item/clothing/head/headband/plant/gardenia
	name = "gardenia"
	desc = "A delicate flower from the Gardenia shrub native to Earth, trimmed for you to wear. These white flowers are known for their strong and sweet floral scent."
	icon_state = "flower_gard"
	item_state = "flower_gard"

/obj/item/clothing/head/headband/plant/bird_of_paradise
	name = "bird of paradise"
	desc = "Bird of Paradise flowers, or Crane Flowers, are named for their resemblance to the ACTUAL birds of the same name. Both look great sitting on your head either way."
	icon_state = "flower_bop"
	item_state = "flower_bop"

/obj/item/clothing/head/headband/plant/hydrangea
	name = "hydrangea"
	desc = "Hydrangeas are popular ornamental flowers due to their colourful, pastel flower arrangements; this one has been trimmed nicely for wear as an accessory."
	icon_state = "flower_hyd"
	item_state = "flower_hyd"

/obj/item/clothing/head/headband/plant/hydrangea/pink
	name = "pink hydrangea"
	icon_state = "flower_hyd-pink"
	item_state = "flower_hyd-pink"

/obj/item/clothing/head/headband/plant/hydrangea/blue
	name = "blue hydrangea"
	icon_state = "flower_hyd-blue"
	item_state = "flower_hyd-blue"

/obj/item/clothing/head/headband/plant/hydrangea/purple
	name = "purple hydrangea"
	icon_state = "flower_hyd-purple"
	item_state = "flower_hyd-purple"

/obj/item/clothing/head/headband/plant/lavender
	name = "lavender"
	desc = "Lavender is usually used as an ingredient or as a source of essential oil; you can tuck a sprig behind your ear for that garden aesthetic too."
	icon_state = "flower_lav"
	item_state = "flower_lav"

	New()
		src.create_reagents(100)
		..()
