/obj/item/organ/external/chest/astartes
	name = "upper body"
	organ_tag = BP_CHEST
	icon_name = "torso"
	max_damage = 200
	min_broken_damage = 150
	w_class = ITEM_SIZE_HUGE //Used for dismembering thresholds, in addition to storage. Humans are w_class 6, so it makes sense that chest is w_class 5.
	cavity_max_w_class = ITEM_SIZE_NORMAL
	body_part = UPPER_TORSO
	vital = 1
	amputation_point = "spine"
	joint = "neck"
	dislocated = -1
	parent_organ = null
	encased = "ribcage"
	artery_name = "aorta"
	cavity_name = "thoracic"
	arterial_bleed_severity = 0.75
	limb_flags = ORGAN_FLAG_GENDERED_ICON | ORGAN_FLAG_HEALS_OVERKILL | ORGAN_FLAG_CAN_BREAK
	can_be_printed = FALSE

/obj/item/organ/external/groin/astartes
	name = "lower body"
	organ_tag = BP_GROIN
	icon_name = "groin"
	max_damage = 200
	min_broken_damage = 150
	w_class = ITEM_SIZE_LARGE
	cavity_max_w_class = ITEM_SIZE_SMALL
	body_part = LOWER_TORSO
	parent_organ = BP_CHEST
	amputation_point = "lumbar"
	joint = "hip"
	dislocated = -1
	artery_name = "iliac artery"
	cavity_name = "abdominal"
	encased = "lower ribcage"
	arterial_bleed_severity = 0.75
	can_be_printed = FALSE
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_GENDERED_ICON | ORGAN_FLAG_CAN_BREAK

/obj/item/organ/external/arm/astartes
	organ_tag = BP_L_ARM
	name = "left arm"
	icon_name = "l_arm"
	max_damage = 100
	min_broken_damage = 60
	w_class = ITEM_SIZE_NORMAL
	body_part = ARM_LEFT
	parent_organ = BP_CHEST
	joint = "left elbow"
	dislocated = -1
	amputation_point = "left shoulder"
	tendon_name = "palmaris longus tendon"
	artery_name = "basilic vein"
	arterial_bleed_severity = 0.5
	can_be_printed = FALSE
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_GRASP | ORGAN_FLAG_HAS_TENDON | ORGAN_FLAG_CAN_BREAK

/obj/item/organ/external/arm/right/astartes
	organ_tag = BP_R_ARM
	name = "right arm"
	icon_name = "r_arm"
	max_damage = 100
	min_broken_damage = 60
	w_class = ITEM_SIZE_NORMAL
	body_part = ARM_RIGHT
	joint = "right elbow"
	dislocated = -1
	amputation_point = "right shoulder"
	can_be_printed = FALSE
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_GRASP | ORGAN_FLAG_HAS_TENDON | ORGAN_FLAG_CAN_BREAK

/obj/item/organ/external/leg/astartes
	organ_tag = BP_L_LEG
	name = "left leg"
	icon_name = "l_leg"
	max_damage = 100
	min_broken_damage = 60
	w_class = ITEM_SIZE_NORMAL
	body_part = LEG_LEFT
	icon_position = LEFT
	parent_organ = BP_GROIN
	joint = "left knee"
	dislocated = -1
	amputation_point = "left hip"
	tendon_name = "cruciate ligament"
	artery_name = "femoral artery"
	arterial_bleed_severity = 0.5
	can_be_printed = FALSE
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_STAND | ORGAN_FLAG_HAS_TENDON | ORGAN_FLAG_CAN_BREAK

/obj/item/organ/external/leg/right/astartes
	organ_tag = BP_R_LEG
	name = "right leg"
	icon_name = "r_leg"
	max_damage = 100
	min_broken_damage = 60
	w_class = ITEM_SIZE_NORMAL
	body_part = LEG_RIGHT
	icon_position = RIGHT
	joint = "right knee"
	dislocated = -1
	amputation_point = "right hip"
	can_be_printed = FALSE
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_STAND | ORGAN_FLAG_HAS_TENDON | ORGAN_FLAG_CAN_BREAK
  
/obj/item/organ/external/foot/astartes
	organ_tag = BP_L_FOOT
	name = "left foot"
	icon_name = "l_foot"
	max_damage = 60
	min_broken_damage = 30
	w_class = ITEM_SIZE_SMALL
	body_part = FOOT_LEFT
	icon_position = LEFT
	parent_organ = BP_L_LEG
	joint = "left ankle"
	dislocated = -1
	amputation_point = "left ankle"
	tendon_name = "Achilles tendon"
	arterial_bleed_severity = 0.5
	can_be_printed = FALSE
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_STAND | ORGAN_FLAG_HAS_TENDON | ORGAN_FLAG_CAN_BREAK

/obj/item/organ/external/foot/right/astartes
	organ_tag = BP_R_FOOT
	name = "right foot"
	icon_name = "r_foot"
	max_damage = 60
	min_broken_damage = 30
	body_part = FOOT_RIGHT
	icon_position = RIGHT
	parent_organ = BP_R_LEG
	joint = "right ankle"
	dislocated = -1
	amputation_point = "right ankle"
	can_be_printed = FALSE
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_STAND | ORGAN_FLAG_HAS_TENDON | ORGAN_FLAG_CAN_BREAK
  
/obj/item/organ/external/hand/astartes
	organ_tag = BP_L_HAND
	name = "left hand"
	icon_name = "l_hand"
	max_damage = 60
	min_broken_damage = 30
	w_class = ITEM_SIZE_SMALL
	body_part = HAND_LEFT
	parent_organ = BP_L_ARM
	joint = "left wrist"
	dislocated = -1
	amputation_point = "left wrist"
	tendon_name = "carpal ligament"
	arterial_bleed_severity = 0.5
	can_be_printed = FALSE
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_GRASP | ORGAN_FLAG_FINGERPRINT | ORGAN_FLAG_HAS_TENDON | ORGAN_FLAG_CAN_BREAK

/obj/item/organ/external/hand/right/astartes
	organ_tag = BP_R_HAND
	name = "right hand"
	icon_name = "r_hand"
	max_damage = 60
	min_broken_damage = 30
	body_part = HAND_RIGHT
	parent_organ = BP_R_ARM
	joint = "right wrist"
	dislocated = -1
	amputation_point = "right wrist"
	arterial_bleed_severity = 0.5
	can_be_printed = FALSE
	limb_flags = ORGAN_FLAG_CAN_AMPUTATE | ORGAN_FLAG_CAN_GRASP | ORGAN_FLAG_FINGERPRINT | ORGAN_FLAG_HAS_TENDON | ORGAN_FLAG_CAN_BREAK

/obj/item/organ/external/head/astartes
	organ_tag = BP_HEAD
	icon_name = "head"
	name = "head"
	slot_flags = SLOT_BELT
	max_damage = 150
	min_broken_damage = 70
	w_class = ITEM_SIZE_NORMAL
	cavity_max_w_class = ITEM_SIZE_SMALL
	body_part = HEAD
	parent_organ = BP_CHEST
	joint = "jaw"
	amputation_point = "neck"
	dislocated = -1
	encased = "skull"
	artery_name = "carotid artery"
	cavity_name = "cranial"
	arterial_bleed_severity = 0.75
	can_be_printed = FALSE
