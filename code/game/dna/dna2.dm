/**
* DNA 2: The Spaghetti Strikes Back
*
* @author N3X15 <nexisentertainment@gmail.com>
*/

// What each index means:
#define DNA_OFF_LOWERBOUND 0
#define DNA_OFF_UPPERBOUND 1
#define DNA_ON_LOWERBOUND  2
#define DNA_ON_UPPERBOUND  3

// Define block bounds (off-low,off-high,on-low,on-high)
// Used in setupgame.dm
#define DNA_DEFAULT_BOUNDS list(1,2049,2050,4095)
#define DNA_HARDER_BOUNDS  list(1,3049,3050,4095)
#define DNA_HARD_BOUNDS    list(1,3490,3500,4095)

// UI Indices (can change to mutblock style, if desired)
#define DNA_UI_HAIR_R      1
#define DNA_UI_HAIR_G      2
#define DNA_UI_HAIR_B      3
#define DNA_UI_BEARD_R     4
#define DNA_UI_BEARD_G     5
#define DNA_UI_BEARD_B     6
#define DNA_UI_SKIN_TONE   7
#define DNA_UI_SKIN_R      8
#define DNA_UI_SKIN_G      9
#define DNA_UI_SKIN_B      10
#define DNA_UI_EYES_R      11
#define DNA_UI_EYES_G      12
#define DNA_UI_EYES_B      13
#define DNA_UI_GENDER      14
#define DNA_UI_BEARD_STYLE 15
#define DNA_UI_HAIR_STYLE  16
#define DNA_UI_LENGTH      16 // Update this when you add something, or you WILL break shit.

#define DNA_SE_LENGTH 27
// For later:
//#define DNA_SE_LENGTH 50 // Was STRUCDNASIZE, size 27. 15 new blocks added = 42, plus room to grow.


// Defines which values mean "on" or "off".
//  This is to make some of the more OP superpowers a larger PITA to activate,
//  and to tell our new DNA datum which values to set in order to turn something
//  on or off.
var/global/list/dna_activity_bounds[DNA_SE_LENGTH]

// Used to determine what each block means
var/global/list/assigned_blocks[DNA_SE_LENGTH]

var/global/list/datum/dna/gene/dna_genes[0]

/////////////////
// GENE DEFINES
/////////////////
// Skip checking if it's already active.
// Used for genes that check for value rather than a binary on/off.
#define GENE_ALWAYS_ACTIVATE 1

/datum/dna
	// READ-ONLY, GETS OVERWRITTEN
	// DO NOT FUCK WITH THESE OR BYOND WILL EAT YOUR FACE
	var/uni_identity="" // Encoded UI
	var/struc_enzymes="" // Encoded SE
	var/unique_enzymes="" // MD5 of player name

	// Internal dirtiness checks
	var/dirtyUI=0
	var/dirtySE=0

	// Okay to read, but you're an idiot if you do.
	// BLOCK = VALUE
	var/list/SE[DNA_SE_LENGTH]
	var/list/UI[DNA_UI_LENGTH]

	// From old dna.
	var/b_type = "A+"  // Should probably change to an integer => string map but I'm lazy.
	var/real_name          // Stores the real name of the person who originally got this dna datum. Used primarily for genestealers,

	// New stuff
	var/species = SPECIES_HUMAN
	var/base_skin = ""
	var/list/body_markings = list()

// Make a copy of this strand.
// USE THIS WHEN COPYING STUFF OR YOU'LL GET CORRUPTION!
/datum/dna/proc/Clone()
	var/datum/dna/new_dna = new()
	new_dna.unique_enzymes=unique_enzymes
	new_dna.b_type=b_type
	new_dna.real_name=real_name
	new_dna.species=species
	new_dna.body_markings=body_markings.Copy()
	new_dna.base_skin = base_skin
	for(var/b=1;b<=DNA_SE_LENGTH;b++)
		new_dna.SE[b]=SE[b]
		if(b<=DNA_UI_LENGTH)
			new_dna.UI[b]=UI[b]
	new_dna.UpdateUI()
	new_dna.UpdateSE()
	return new_dna
///////////////////////////////////////
// UNIQUE IDENTITY
///////////////////////////////////////

// Create random UI.
/datum/dna/proc/ResetUI(defer=0)
	for(var/i=1,i<=DNA_UI_LENGTH,i++)
		switch(i)
			if(DNA_UI_SKIN_TONE)
				SetUIValueRange(DNA_UI_SKIN_TONE,rand(1,220),220,1) // Otherwise, it gets fucked
			else
				UI[i]=rand(0,4095)
	if(!defer)
		UpdateUI()

/datum/dna/proc/ResetUIFrom(mob/living/carbon/human/character)
	// INITIALIZE!
	ResetUI(1)
	// Hair
	// FIXME:  Species-specific defaults pls
	if(!character.head_hair_style)
		character.head_hair_style = "Bald"
	var/hair = GLOB.hair_styles_list.Find(character.head_hair_style)

	// Facial Hair
	if(!character.facial_hair_style)
		character.facial_hair_style = "Shaved"
	var/beard	= GLOB.facial_hair_styles_list.Find(character.facial_hair_style)

	var/list/head_color = rgb2num(character.head_hair_color)

	SetUIValueRange(DNA_UI_HAIR_R,    head_color[1],    255,    1)
	SetUIValueRange(DNA_UI_HAIR_G,    head_color[2],    255,    1)
	SetUIValueRange(DNA_UI_HAIR_B,    head_color[3],    255,    1)

	var/list/face_color = rgb2num(character.facial_hair_color)

	SetUIValueRange(DNA_UI_BEARD_R,   face_color[1],  255,    1)
	SetUIValueRange(DNA_UI_BEARD_G,   face_color[2],  255,    1)
	SetUIValueRange(DNA_UI_BEARD_B,   face_color[3],  255,    1)

	var/list/eye_color = rgb2num(character.eye_color)

	SetUIValueRange(DNA_UI_EYES_R,    eye_color[1],    255,    1)
	SetUIValueRange(DNA_UI_EYES_G,    eye_color[2],    255,    1)
	SetUIValueRange(DNA_UI_EYES_B,    eye_color[3],    255,    1)

	var/list/skin_color = rgb2num(character.skin_color)
	SetUIValueRange(DNA_UI_SKIN_R,    skin_color[1],    255,    1)
	SetUIValueRange(DNA_UI_SKIN_G,    skin_color[2],    255,    1)
	SetUIValueRange(DNA_UI_SKIN_B,    skin_color[3],    255,    1)

	SetUIValueRange(DNA_UI_SKIN_TONE, 35-character.skin_tone, 220,    1) // Value can be negative.

	SetUIState(DNA_UI_GENDER,         character.gender!=MALE,        1)

	SetUIValueRange(DNA_UI_HAIR_STYLE,  hair,  length(GLOB.hair_styles_list),       1)
	SetUIValueRange(DNA_UI_BEARD_STYLE, beard, length(GLOB.facial_hair_styles_list),1)

	body_markings.Cut()
	base_skin = character.base_skin
	for(var/obj/item/organ/external/E in character.organs)
		E.base_skin = base_skin
		if(length(E.markings))
			body_markings[E.organ_tag] = E.markings.Copy()

	UpdateUI()

// Set a DNA UI block's raw value.
/datum/dna/proc/SetUIValue(block,value,defer=0)
	if (block<=0) return
	ASSERT(value>0)
	ASSERT(value<=4095)
	UI[block]=value
	dirtyUI=1
	if(!defer)
		UpdateUI()

// Get a DNA UI block's raw value.
/datum/dna/proc/GetUIValue(block)
	if (block<=0) return 0
	return UI[block]

// Set a DNA UI block's value, given a value and a max possible value.
// Used in hair and facial styles (value being the index and maxvalue being the len of the hairstyle list)
/datum/dna/proc/SetUIValueRange(block,value,maxvalue,defer=0)
	if (block<=0) return
	if (value==0) value = 1   // FIXME: hair/beard/eye RGB values if they are 0 are not set, this is a work around we'll encode it in the DNA to be 1 instead.
	ASSERT(maxvalue<=4095)
	var/range = (4095 / maxvalue)
	if(value)
		SetUIValue(block,round(value * range),defer)

// Getter version of above.
/datum/dna/proc/GetUIValueRange(block,maxvalue)
	if (block<=0) return 0
	var/value = GetUIValue(block)
	return round(1 +(value / 4096)*maxvalue)

// Is the UI gene "on" or "off"?
// For UI, this is simply a check of if the value is > 2050.
/datum/dna/proc/GetUIState(block)
	if (block<=0) return
	return UI[block] > 2050


// Set UI gene "on" (1) or "off" (0)
/datum/dna/proc/SetUIState(block,on,defer=0)
	if (block<=0) return
	var/val
	if(on)
		val=rand(2050,4095)
	else
		val=rand(1,2049)
	SetUIValue(block,val,defer)

// Get a hex-encoded UI block.
/datum/dna/proc/GetUIBlock(block)
	return EncodeDNABlock(GetUIValue(block))

// Do not use this unless you absolutely have to.
// Set a block from a hex string.  This is inefficient.  If you can, use SetUIValue().
// Used in DNA modifiers.
/datum/dna/proc/SetUIBlock(block,value,defer=0)
	if (block<=0) return
	return SetUIValue(block,hex2num(value),defer)

// Get a sub-block from a block.
/datum/dna/proc/GetUISubBlock(block,subBlock)
	return copytext(GetUIBlock(block),subBlock,subBlock+1)

// Do not use this unless you absolutely have to.
// Set a block from a hex string.  This is inefficient.  If you can, use SetUIValue().
// Used in DNA modifiers.
/datum/dna/proc/SetUISubBlock(block,subBlock, newSubBlock, defer=0)
	if (block<=0) return
	var/oldBlock=GetUIBlock(block)
	var/newBlock=""
	for(var/i=1, i<=length(oldBlock), i++)
		if(i==subBlock)
			newBlock+=newSubBlock
		else
			newBlock+=copytext(oldBlock,i,i+1)
	SetUIBlock(block,newBlock,defer)

///////////////////////////////////////
// STRUCTURAL ENZYMES
///////////////////////////////////////

// "Zeroes out" all of the blocks.
/datum/dna/proc/ResetSE()
	for(var/i = 1, i <= DNA_SE_LENGTH, i++)
		SetSEValue(i,rand(1,1024),1)
	UpdateSE()

// Set a DNA SE block's raw value.
/datum/dna/proc/SetSEValue(block,value,defer=0)
	if (block<=0) return
	ASSERT(value>=0)
	ASSERT(value<=4095)
	SE[block]=value
	dirtySE=1
	if(!defer)
		UpdateSE()

// Get a DNA SE block's raw value.
/datum/dna/proc/GetSEValue(block)
	if (block<=0) return 0
	return SE[block]

// Set a DNA SE block's value, given a value and a max possible value.
// Might be used for species?
/datum/dna/proc/SetSEValueRange(block,value,maxvalue)
	if (block<=0) return
	ASSERT(maxvalue<=4095)
	var/range = round(4095 / maxvalue)
	if(value)
		SetSEValue(block, value * range - rand(1,range-1))

// Getter version of above.
/datum/dna/proc/GetSEValueRange(block,maxvalue)
	if (block<=0) return 0
	var/value = GetSEValue(block)
	return round(1 +(value / 4096)*maxvalue)

// Is the block "on" (1) or "off" (0)? (Un-assigned genes are always off.)
/datum/dna/proc/GetSEState(block)
	if (block<=0) return 0
	var/list/BOUNDS=GetDNABounds(block)
	var/value=GetSEValue(block)
	return (value > BOUNDS[DNA_ON_LOWERBOUND])

// Set a block "on" or "off".
/datum/dna/proc/SetSEState(block,on,defer=0)
	if (block<=0) return
	var/list/BOUNDS=GetDNABounds(block)
	var/val
	if(on)
		val=rand(BOUNDS[DNA_ON_LOWERBOUND],BOUNDS[DNA_ON_UPPERBOUND])
	else
		val=rand(1,BOUNDS[DNA_OFF_UPPERBOUND])
	SetSEValue(block,val,defer)

// Get hex-encoded SE block.
/datum/dna/proc/GetSEBlock(block)
	return EncodeDNABlock(GetSEValue(block))

// Do not use this unless you absolutely have to.
// Set a block from a hex string.  This is inefficient.  If you can, use SetUIValue().
// Used in DNA modifiers.
/datum/dna/proc/SetSEBlock(block,value,defer=0)
	if (block<=0) return
	var/nval=hex2num(value)
	//testing("SetSEBlock([block],[value],[defer]): [value] -> [nval]")
	return SetSEValue(block,nval,defer)

/datum/dna/proc/GetSESubBlock(block,subBlock)
	return copytext(GetSEBlock(block),subBlock,subBlock+1)

// Do not use this unless you absolutely have to.
// Set a sub-block from a hex character.  This is inefficient.  If you can, use SetUIValue().
// Used in DNA modifiers.
/datum/dna/proc/SetSESubBlock(block,subBlock, newSubBlock, defer=0)
	if (block<=0) return
	var/oldBlock=GetSEBlock(block)
	var/newBlock=""
	for(var/i=1, i<=length(oldBlock), i++)
		if(i==subBlock)
			newBlock+=newSubBlock
		else
			newBlock+=copytext(oldBlock,i,i+1)
	//testing("SetSESubBlock([block],[subBlock],[newSubBlock],[defer]): [oldBlock] -> [newBlock]")
	SetSEBlock(block,newBlock,defer)


/proc/EncodeDNABlock(value)
	return pad_left(num2hex(value & 0xF), 3, "0")


/datum/dna/proc/UpdateUI()
	src.uni_identity=""
	for(var/block in UI)
		uni_identity += EncodeDNABlock(block)
	//testing("New UI: [uni_identity]")
	dirtyUI=0

/datum/dna/proc/UpdateSE()
	//var/oldse=struc_enzymes
	struc_enzymes=""
	for(var/block in SE)
		struc_enzymes += EncodeDNABlock(block)
	//testing("Old SE: [oldse]")
	//testing("New SE: [struc_enzymes]")
	dirtySE=0

// BACK-COMPAT!
//  Just checks our character has all the crap it needs.
/datum/dna/proc/check_integrity(mob/living/carbon/human/character)
	if(character)
		if(length(UI) != DNA_UI_LENGTH)
			ResetUIFrom(character)

		if(length(struc_enzymes)!= 3*DNA_SE_LENGTH)
			ResetSE()

		if(length(unique_enzymes) != 32)
			unique_enzymes = md5(character.real_name)
	else
		if(length(uni_identity) != 3*DNA_UI_LENGTH)
			uni_identity = "00600200A00E0110148FC01300B0095BD7FD3F4"
		if(length(struc_enzymes)!= 3*DNA_SE_LENGTH)
			struc_enzymes = "43359156756131E13763334D1C369012032164D4FE4CD61544B6C03F251B6C60A42821D26BA3B0FD6"

// BACK-COMPAT!
//  Initial DNA setup.  I'm kind of wondering why the hell this doesn't just call the above.
/datum/dna/proc/ready_dna(mob/living/carbon/human/character)
	ResetUIFrom(character)

	ResetSE()

	unique_enzymes = md5(character.real_name)
	GLOB.reg_dna[unique_enzymes] = character.real_name
