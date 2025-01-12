GLOBAL_LIST_EMPTY(skills)

/singleton/hierarchy/skill
	var/ID = "none"                        // ID of this skill. Needs to be unique.
	name = "None"                          // Name of the skill. This is what the player sees.
	hierarchy_type = /singleton/hierarchy/skill // Don't mess with this without changing how Initialize works.
	var/desc = "Placeholder skill"         // Generic description of this skill.

   	// Names for different skill values, in order from 1 up.
	var/levels = list( 		"Unskilled"			= "Unskilled Description",
						"Basic"				= "Basic Description",
						"Trained"			= "Trained Description",
						"Experienced"		= "Experienced Description",
						"Master"			= "Professional Description",
						"Legend"			= "Legend Description",
						"Primaris"			= "Primaris Description",
						"Demigod"			= "Demigod Description")

	var/difficulty = SKILL_AVERAGE         //Used to compute how expensive the skill is
	var/default_max = SKILL_EXPERIENCED          //Makes the skill capped at this value in selection unless overriden at job level.
	var/prerequisites                      // A list of skill prerequisites, if needed.

/singleton/hierarchy/skill/proc/get_cost(level)
	switch(level)
		if(SKILL_BASIC, SKILL_TRAINED, SKILL_EXPERIENCED)
			return difficulty
		if(SKILL_MASTER)
			return 2*difficulty
		if(SKILL_LEGEND)
			return 2*difficulty
		if(SKILL_PRIMARIS)
			return 4*difficulty
		if(SKILL_DEMIGOD)
			return 5*difficulty
		else
			return 0

/singleton/hierarchy/skill/proc/update_special_effects(mob/mob, level)

/singleton/hierarchy/skill/Initialize()
	. = ..()
	if(is_hidden_category())
		if(!length(GLOB.skills))
			for(var/singleton/hierarchy/skill/C in children)
				GLOB.skills += C.get_descendents()
		else
			CRASH("Warning: multiple instances of /singleton/hierarchy/skill have been created!")

/singleton/hierarchy/skill/dd_SortValue()
	return ID

/singleton/hierarchy/skill/organizational
	name = "Organizational"
	ID	 = "1"

/singleton/hierarchy/skill/general
	name = "General"
	ID	 = "2"

/singleton/hierarchy/skill/service
	name = "Service"
	ID	 = "service"

/singleton/hierarchy/skill/security
	name = "Security"
	ID	 = "security"

/singleton/hierarchy/skill/engineering
	name = "Engineering"
	ID	 = "engineering"

/singleton/hierarchy/skill/research
	name = "Research"
	ID	 = "research"

/singleton/hierarchy/skill/medical
	name = "Medical"
	ID	 = "medical"

// ONLY SKILL DEFINITIONS BELOW THIS LINE
// Category: Organizational

/singleton/hierarchy/skill/organizational/bureaucracy
	ID = "bureaucracy" // do not change ID's on any skill ever.
	name = "Statecraft"
	desc = "This skill represents your ability to navigate the vast, labyrinthine bureaucracies of the Imperium, manage paperwork, and understand the intricate web of laws and regulations that govern all aspects of Imperial life."
	levels = list( "Unskilled"			= "You can usually fill out basic forms, though errors are common. Your understanding of Imperial law is vague at best, mostly based on hearsay or common knowledge.",
						"Basic"				= "You are familiar with the paperwork required for your duties and can handle it with moderate efficiency. Your understanding of the Lex Imperialis is sufficient for everyday tasks.",
						"Trained"			= "You can handle unfamiliar paperwork with ease and have a strong grasp of the laws and regulations pertinent to your role. You know how to navigate the cogitator-filled labyrinths of the Administratum.",
						"Experienced"		= "With your experience, you can generate clear and detailed reports, and you know how to navigate even complex bureaucratic processes. Your knowledge of Imperial law may be backed by formal legal training, allowing you to manage legal affairs effectively.",
						"Master"		= "You are a master of Imperial bureaucracy, capable of wielding paperwork as a tool to achieve your goals. Byzantine legal structures and red tape are no match for you. Your knowledge of Imperial law and regulations is vast, and you may even have the authority to represent noble houses or Imperial institutions in legal matters.")
	difficulty = SKILL_EASY
	default_max = SKILL_MASTER

/singleton/hierarchy/skill/organizational/finance
	ID = "finance"
	name = "Stewardship"
	desc = "This skill covers your expertise in managing the vast resources of the Imperium, from personal wealth to administrating the finances of a planetary governor or noble house. It includes knowledge of trade, investment, and the economic engines of the Imperium."
	levels = list( "Unskilled"			= "You have a basic grasp of personal finance, able to handle simple transactions, but you are easily confused by anything more complex. Occasionally, you may find yourself swindled.<br>- You receive some starting money. The amount increases with skill.<br>- You can use the 'Appraise' verb to assess the value of objects.",
						"Basic"				= "You can manage basic financial transactions and keep reasonably accurate records, though complex investments and large sums can overwhelm you. Investment strategies are beyond your current expertise.",
						"Trained"			= "You are competent in managing accounts, handling ledgers, and processing transactions. You have a working knowledge of bonds, loans, and trade deals, though advanced financial schemes may still trip you up.",
						"Experienced"		= "You are familiar with most financial systems and entities, able to assess the value of assets with accuracy. Your investments are typically successful, and your judgment is trusted in financial dealings.<br>- You have a reduced penalty when trading with merchants.",
						"Master"		= "You are a financial master, capable of managing vast sums of Thrones with ease. Interstellar trade and complex financial instruments are like second nature to you. You make shrewd investments, often yielding significant returns, and likely have considerable experience managing the wealth of noble houses or Imperial institutions. <br>- The penalty for trading with merchants is reduced to almost nothing!")
	difficulty = SKILL_AVERAGE
	default_max = SKILL_MASTER

// Category: General

/singleton/hierarchy/skill/general/EVA
	ID = "EVA"
	name = "Void Maneuvering"
	desc = "Describes your knowledge and skill in operating space suits and surviving in the cold vacuum of space, essential for voidborn operations."
	levels = list( "Unskilled"			= "You’ve received basic void safety training. You know how to seal your suit and use internals, though your movements in a void environment are clumsy. Mistakes are likely, and exposure to vacuum could be fatal.<br>- You can remove hardsuits. Speed improves with skill.<br>- You will always be floored when re-entering gravity from space. This chance decreases with skill.<br>- You are likely to slip. The chance reduces as you gain experience.",
						"Basic"				= "You've undergone basic void operations training. Mistakes are uncommon, but your lack of hands-on experience still makes working in vacuum challenging.",
						"Trained"			= "You’re comfortable using a space suit regularly and don’t panic in emergencies. Checking internals is instinctive, and you can navigate void environments with ease.<br>- You can fully operate jetpacks.",
						"Experienced"		= "You’ve mastered the use of various space suits, including specialized models. Years of void experience have made you resistant to disorientation, and you maneuver expertly with a jetpack.<br>- You cannot slip anymore.",
						"Master"		= "You are as comfortable in the void as you are in atmosphere. Zero-gravity operations are second nature to you.<br>- You no longer get floored when re-entering gravity.<br>- You gain bonus speed in zero-G.")
	difficulty = SKILL_EASY
	default_max = SKILL_MASTER

/singleton/hierarchy/skill/general/EVA/mech
	ID = "exosuit"
	name = "Augmetic Armour Proficiency"
	desc = "Describes your proficiency in operating exosuits and advanced mechanized armor, used in void combat or heavy labor."
	levels = list( "Untrained"			= "You’re unfamiliar with exosuit controls. Using them would likely result in costly mistakes.",
						"Trained"			= "You are proficient with exosuit operation, able to control them without penalties. Safety protocols and proper use are second nature.")
	prerequisites = list(SKILL_EVA = SKILL_TRAINED)
	default_max = SKILL_TRAINED
	difficulty = SKILL_EASY

/singleton/hierarchy/skill/general/pilot
	ID = "pilot"
	name = "Helmsmanship"
	desc = "Describes your experience piloting spacecraft, ranging from short-range shuttles to larger Imperial vessels like corvettes."
	levels = list( "Unskilled"			= "You know the basics of spacecraft and can understand the different types, but have no practical experience piloting one. If you take the helm, you’ll need guidance to avoid disaster.<br>- Travel time decreases with skill.<br>- You can fly ships, but movement may be randomized.<br>- Ship collision with hazards increases as your skill improves.",
						"Basic"				= "You can pilot small, short-range craft safely. You lack formal training, but you won’t make major mistakes on shuttle missions.<br>- You can operate small shuttlecraft without error.<br>- You can avoid meteors when moving slowly in small craft.",
						"Trained"			= "You are a trained pilot, capable of flying larger vessels such as corvettes. You can perform basic maintenance and operate armed ships. Basic calculations for navigation are within your ability.<br>- You can fly large ships without error.<br>- You can mostly avoid meteors at slow speeds.",
						"Experienced"		= "You are an experienced pilot, able to handle most spacecraft and complex maneuvers. You are well-versed in ship mechanics and can perform difficult piloting tasks with confidence.<br>- You can somewhat avoid meteors at normal speeds in small craft.",
						"Master"		= "You are a master pilot, adept at navigating the dangers of space. Complex maneuvers and fleet coordination come naturally to you, and you can plot advanced bluespace jumps.<br>- You can mostly avoid meteors at normal speeds.<br>- Fewer meteors hit your ship while traversing meteor fields.")
	difficulty = SKILL_AVERAGE
	default_max = SKILL_MASTER

/singleton/hierarchy/skill/general/vigor
	ID = "hauling"
	name = "Vigor"
	desc = "Represents your physical prowess in tasks requiring strength, dexterity, and endurance. Essential for soldiers, laborers, and anyone expected to endure grueling work."
	levels = list( "Unskilled"			= "You tire quickly from manual labor and lack the physical conditioning required for strenuous tasks. Prolonged work could be dangerous for you.<br>- You can pull objects but will tire out quickly. Your strength improves with skill.<br>- You can throw objects, and their speed, distance, and force increase with skill.<br>- You can sprint, and stamina consumption decreases as your skill improves.<br>- You can leap at distant targets, with leap range and reduced chance of falling increasing with skill.",
						"Basic"				= "You have some experience with physical labor and are in decent shape, but tasks requiring significant strength or endurance may still challenge you.<br>- You can throw large objects or people without being weakened.",
						"Trained"			= "You have the strength and dexterity for strenuous tasks, capable of performing manual labor for extended periods without tiring.",
						"Experienced"		= "You’re accustomed to physically demanding work and are in excellent shape. You may regularly engage in physical training or work in extreme conditions.",
						"Master"		= "You are in peak physical condition, highly adapted to heavy labor or combat. Extended periods of intense physical work are no challenge for you.")
	difficulty = SKILL_AVERAGE
	default_max = SKILL_MASTER

/singleton/hierarchy/skill/general/computer
	ID = "computer"
	name = "Machine Lore"
	desc = "Describes your knowledge of cogitators, sacred machine-spirits, and communication systems. While not required for basic cogitator use, this skill is essential for those maintaining telecommunications networks and programming within the Imperium. Handling AI is considered tech-heresy by the Adeptus Mechanicus, and is only done under strict Inquisitorial oversight."
	levels = list( "Unskilled"			= "You can operate basic cogitators and use common communication devices, but anything beyond that eludes you. You understand simple machine-spirit functions, like radio use and PDA systems, but cogitators are more complex than you realize.<br>- Basic interaction with cogitators and radios.",
						"Basic"				= "You know how to navigate cogitator systems and are familiar with basic machine-rites. You can handle minor repairs or program simple systems, but anything complex may lead to mistakes. Dealing with AIs is forbidden and dangerous.<br>- You can avoid triggering alarms when running unauthorized access programs, with a higher success rate as your skill improves.",
						"Trained"			= "You regularly maintain cogitators and repair telecommunication systems, performing necessary rites to calm their machine-spirits. While knowledge of AI programming is dangerous, you understand enough to cautiously interact with them in extreme cases.<br>- You can fully operate Network Monitors, E-mail Administration, and system management programs.",
						"Experienced"		= "You are adept with cogitator systems and have a deep understanding of telecommunication networks. Despite the Adeptus Mechanicus’ strictures, your knowledge of AI subversion and manipulation could be put to use in dire circumstances, though at great risk.<br>- Antagonist access programs can generate false logs to hide your activities.<br>- You can use advanced command lines on modular cogitators.",
						"Master"		= "You are a master of machine-lore and can manipulate cogitators with ease, handling systems most dare not approach. You can work with forbidden AI systems, though such activities are tech-heresy and must be hidden from the Mechanicus. Your skill with cogitators allows you to design and construct entire networks from scratch, or breach the most guarded systems.<br>- Your ability to manipulate AI systems is unparalleled, though highly dangerous.")
	difficulty = SKILL_AVERAGE
// Category: Service

/singleton/hierarchy/skill/service/botany
	ID = "botany"
	name = "Botany"
	desc = "Reflects your expertise in growing and maintaining plants, from food crops to xenoflora used in oxygen production or alchemical ingredients for the Imperium."
	levels = list( "Unskilled"			= "You know next to nothing about plants. You might plant or harvest, but you're just as likely to kill the plant instead of tending to it.",
						"Basic"				= "You’ve done basic gardening. You can water, weed, fertilize, and harvest crops, and recognize pests. You're likely growing food or oxygen for a small colony.<br>- You can safely plant and weed common plants.<br>- You can identify pests and weeds.",
						"Trained"			= "You are skilled in botany, capable of growing food crops and oxygen-producing flora. You can work with more exotic plant species and manipulate their genes.<br>- You can safely plant and weed xenoflora.<br>- You can operate xenoflora machines. Sample degradation decreases with skill.",
						"Experienced"		= "You are a botanist or agri-worker responsible for hydroponics systems or botanical research. You excel at hybridizing plants and creating custom strains for specialized purposes.",
						"Master"		= "You are a master botanist, able to cultivate even the most exotic or dangerous flora. You can manipulate plant genes with precision, avoiding sample degradation, and grow life-sustaining crops for the Imperium's worlds.")
	difficulty = SKILL_EASY
	default_max = SKILL_MASTER

/singleton/hierarchy/skill/service/cooking
	ID = "cooking"
	name = "Cooking"
	desc = "Describes your skill in preparing meals and drinks for crew, soldiers, or even the aristocracy. This includes mixing alcohol and preparing exotic or hazardous foods."
	levels = list( "Unskilled"			= "You know very little about cooking. You stick to ration packs or vending machines, and the microwave seems like forbidden tech.",
						"Basic"				= "You can prepare simple meals and drinks, enough to keep yourself and others fed. Things like nutrient paste, simple stews, or basic mixed drinks are within your grasp.<br>- You can safely use the blender.",
						"Trained"			= "You can follow most recipes and prepare standard meals for a crew or group. Your cooking is dependable, and you have some experience serving in mess halls or small gatherings.<br>- You can operate drink dispensers efficiently.",
						"Experienced"		= "You are a professional cook, capable of feeding entire starship crews or garrisons. You can handle complicated recipes and drinks without issue, and your meals keep morale high.",
						"Master"		= "You are a master chef, skilled at preparing exotic foods and drinks, even those that would be hazardous if done incorrectly. You can manage a large kitchen staff and cater for high-ranking Imperial officials or special events.")
	difficulty = SKILL_EASY
	default_max = SKILL_MASTER
// Category: Security

/singleton/hierarchy/skill/security/combat
	ID = "combat"
	name = "Blade Lore"
	default_max = SKILL_DEMIGOD
	desc = "This skill covers your training in melee combat, from hand-to-hand fighting to the use of blades and other close-combat weapons. It determines your proficiency in parrying, attacking, and the damage dealt with martial weapons."
	levels = list( "Unskilled"			= "You can throw a punch or swing a weapon, but you're uncoordinated and easily thrown off balance. Serious combat is beyond you, and panic or hesitation may take over.<br>- You can disarm, grab, and hit, but success depends on the skill gap.<br>- Your chance of falling over when tackled reduces with higher skill.",
						"Basic"				= "You have some experience with fistfights or basic melee training. You can defend yourself if forced into a fight, and you can use simple weapons like a stun baton competently.",
						"Trained"			= "You've undergone formal close-combat training, allowing you to handle most unskilled opponents. While melee combat isn't your focus, you know how to hold your own.<br>- You can parry with weapons, with success increasing at higher levels.<br>- You can execute grappling techniques like pinning and dislocating.<br>- You can leap into grabs without falling over, if your species allows.",
						"Experienced"		= "You’re a capable combatant, trained in martial arts or as part of a military unit. You think quickly and act strategically in combat, and your familiarity with melee weapons is apparent.",
						"Master"			= "You are a melee specialist, proficient in various martial techniques. Whether it’s with a blade, fist, or club, you fight with lethal precision, and regular training keeps you at the top of your game.",
						"Legend"			= "Few can match your prowess in close combat. Your name is known in the Imperium, feared by your enemies. You parry and counterstrike with ruthless efficiency, facing down multiple foes with ease.",
						"Primaris"			= "You are beyond the capability of most mortals. Whether due to genetic augmentation or extraordinary skill, your reflexes and combat ability are nearly superhuman.",
						"Demigod"			= "You are a living legend, a force of destruction on the battlefield. Be it Astartes, Eldar Exarch, or the finest of the Adeptus Custodes, only the greatest champions reach this level. Your power in combat is enough to turn the tide of a war.<br>- You are nearly unstoppable, with unmatched speed, strength, and ferocity.")
	difficulty = SKILL_AVERAGE
/singleton/hierarchy/skill/security/combat/get_cost(level)
	switch(level)
		if(SKILL_BASIC)
			return difficulty
		if(SKILL_TRAINED)
			return 2*difficulty
		if(SKILL_EXPERIENCED)
			return 2*difficulty
		if(SKILL_MASTER)
			return 4*difficulty
		if(SKILL_LEGEND)
			return 4*difficulty
		if(SKILL_PRIMARIS)
			return 6*difficulty
		if(SKILL_DEMIGOD)
			return 6*difficulty
		else
			return 0

/singleton/hierarchy/skill/security/guns
	ID = "weapons"
	name = "Gun Lore"
	default_max = SKILL_DEMIGOD
	desc = "This skill reflects your expertise with a variety of weapons used across the Imperium. A low level implies basic knowledge of common firearms or melee tools, while a high level grants proficiency with advanced weapons such as pulse rifles, bolt weapons, and unconfigured grenades. Special agents, soldiers, and Adeptus Astartes excel in this skill."
	levels = list( "Unskilled"			= "You can recognize a weapon and pull the trigger, but your aim is erratic. Recoil control and weapon handling are foreign concepts, and you may forget basic safety protocols.<br>- You might fire your weapon randomly.",
						"Basic"				= "You can handle weapons safely and use simple firearms or close combat weapons. Your aim is fair, but stress can cause mistakes. You’re comfortable with lasguns and autoguns, though not yet instinctive.<br>- You can use firearms, but their accuracy and spread are tied to your skill.",
						"Trained"			= "You have formal weapons training or real combat experience. Your aim and weapon handling are reliable, and you can operate most standard Imperial weapons. Under fire, you keep your composure, executing trained combat reflexes.<br>- You have a chance to automatically unsafety your weapon in combat.",
						"Experienced"		= "Your experience in combat situations has refined your skills. Your handling of firearms is instinctive, and you can adapt to various ranged weapons quickly. Tactical reloads and firing under pressure are second nature.<br>- You will automatically unsafety weapons when firing.<br>- You can perform speed reloads, with time decreasing as your skill improves.",
						"Master"		= "You are highly skilled, with exceptional accuracy and weapon control. Whether it's a lasgun, bolter, or plasma weapon, your shots are deadly precise. Advanced tactics and sniper techniques are well within your repertoire.<br>- You gain additional accuracy with sniper rifles.<br>- You can automatically eject shells from bolt-action weapons.",
						"Legend"			= "Your proficiency with firearms is legendary. Every shot you take is calculated and hits with lethal precision, even under the most difficult conditions. Few can match your combat prowess.<br>- You have pinpoint accuracy with all ranged weapons.",
						"Primaris"			= "You have ascended beyond mortal limits, either through genetic augmentation or countless years of combat. Your aim is flawless, and your understanding of firearms is unrivaled across the Imperium.<br>- Your shots never miss, and you can master any weapon placed in your hands.",
						"Demigod"			= "Your mastery of ranged combat is mythic, bending the will of battle itself. You control the battlefield with surgical precision, capable of shifting the outcome of entire engagements with your skill.<br>- Your shots are near-perfect, and your presence in combat is overwhelming.")
	difficulty = SKILL_AVERAGE
/singleton/hierarchy/skill/security/guns/get_cost(level)
	switch(level)
		if(SKILL_BASIC)
			return difficulty
		if(SKILL_TRAINED)
			return 2*difficulty
		if(SKILL_EXPERIENCED)
			return 2*difficulty
		if(SKILL_MASTER)
			return 4*difficulty
		if(SKILL_LEGEND)
			return 4*difficulty
		if(SKILL_PRIMARIS)
			return 6*difficulty
		if(SKILL_DEMIGOD)
			return 6*difficulty
		else
			return 0

/singleton/hierarchy/skill/security/forensics
	ID = "forensics"
	name = "Mortis Investigation"
	desc = "Describes your skill at performing forensic examinations and uncovering critical evidence in the grim reality of the Imperium. Conducting autopsies requires surgical skill."
	levels = list( "Unskilled"			= "You know that Arbites or Inquisitors investigate crimes, but the intricate details are beyond you. Contaminating a scene seems bad, though you're unclear on the specifics.",
						"Basic"				= "You can collect evidence carefully, understanding the importance of preserving a scene. You’ve likely been involved in basic investigations or assisted in battlefield operations.",
						"Trained"			= "You are adept at identifying key forensic details—fibers, fingerprints, and blood spatter. You've worked in high-pressure environments, examining scenes under duress.<br>- You can easily detect fingerprints.<br>- You no longer risk contaminating evidence.",
						"Experienced"		= "With significant experience in investigations, you can uncover obscure evidence like partial prints, xenos spore traces, or ballistic residues. Your eye for detail is honed to a razor’s edge.",
						"Master"		= "Your expertise in forensics is unmatched. Whether in the field or working for a major investigatory body, you leave no stone unturned. Forensic trails yield to your skill, even hidden blood stains cannot escape your scrutiny.")
	difficulty = SKILL_AVERAGE
	default_max = SKILL_MASTER
// Category: Engineering

/singleton/hierarchy/skill/engineering/construction
	ID = "construction"
	name = "Fabrication"
	desc = "Your ability to construct various fortifications, including barricades, bulkheads, and hab furnishings. Complex devices, such as power generators or void shields, require additional expertise in sacred technologies, typically the domain of the Adeptus Mechanicus. A low level of this skill is common among servitors and menials, while higher levels are expected from Imperial engineers and Tech-Priests."
	levels = list( "Unskilled"			= "You can dismantle furniture, tear down makeshift defenses, pry open malfunctioning airlocks, and handle basic tools with minimal skill.<br>- You can attempt to construct items beyond your expertise, relying on improvisation.",
						"Basic"				= "You can assemble basic defenses like barricades, repair minor breaches, and lay hab flooring. You handle standard tools safely, such as a las-cutter.<br>- You can construct items from steel, ferrocrete, and wood.<br>- You can inspect simple tech-prayers on circuit boards to understand basic machine functions.",
						"Trained"			= "You can reliably build, repair, and dismantle standard Imperial structures, though occasional errors may occur. You handle more advanced materials and tasks.<br>- You can construct items from Ceramite, Plasteel, and Adamantium.<br>- You can safely use a melta-cutter to deconstruct reinforced structures.<br>- You can inspect complex circuit boards to understand necessary components.",
						"Experienced"		= "You can repair starship hull breaches, reroute power conduits, and manage structural repairs in hives or spires. You are proficient with advanced materials.<br>- You can fabricate complex parts such as weapon assemblies and components housing machine spirits.",
						"Master"		= "You are a master Imperial engineer or Tech-Priest, capable of rebuilding entire installations or voidships with remarkable precision. Your ability to repair battle damage and rebuild critical systems is unrivaled.")
	difficulty = SKILL_AVERAGE

/singleton/hierarchy/skill/engineering/electrical
	ID = "electrical"
	name = "Electro Arcana"
	desc = "Describes your knowledge of sacred circuitry and the arcane rites required to appease machine spirits and maintain Imperial electronics."
	levels = list( "Unskilled"			= "You know that electricity is dangerous and can identify obvious malfunctions, but fixing them requires help from a skilled technician.<br>- Wires shift unpredictably when accessing machine panels.",
						"Basic"				= "You can perform basic wiring and repairs, using tools like plasma generators or printers. You're careful enough to avoid major mistakes.<br>- Some wires may be duplicated in hacking panels.",
						"Trained"			= "You can confidently build and repair electrical systems, troubleshooting engine issues and managing power grids. Machine spirits respond well to your touch.<br>- You can hack machines safely.",
						"Experienced"		= "You handle complex electrical systems and advanced tech like APCs and monitoring systems. Diagnosing electrical issues is second nature.<br>- You can place remote signaling devices.",
						"Master"		= "You are a master of arcane electronics, capable of designing and modifying systems. You handle even singularities and high-tech devices like void shields with ease.<br>- You can examine most wires in hacking panels.")
	difficulty = SKILL_AVERAGE
/singleton/hierarchy/skill/engineering/atmos
	ID = "atmos"
	name = "Aethiric Systems"
	desc = "Describes your knowledge of atmospheric control, piping, and gas dynamics aboard Imperial installations."
	levels = list( "Unskilled"			= "You understand the basics—red monitors mean lethal atmosphere, and some gases are toxic. You can use basic safety tools like fire extinguishers and inflatable barriers.<br>- RPD dispenses random pipes, decreasing with skill.",
						"Basic"				= "You can read air monitors, handle piping, and manage gas tanks. You understand pressure management and can seal breaches with competence.<br>- You can recompress pipes with the RPD.",
						"Trained"			= "You manage atmospheric systems efficiently, able to detect and resolve issues like gas leaks and breaches. Your skill keeps installations running smoothly.<br>- You can use the RPD safely.",
						"Experienced"		= "You can handle complex atmospherics, diagnosing issues quickly. Breaches, fires, and gas leaks are resolved with speed and precision.<br>- You can dispense a larger selection of pipes from the RPD.",
						"Master"		= "You can modify and optimize atmospheric systems to suit any environment. Emergencies like fires or depressurization are no match for your expertise, and you're known for preventing disasters before they occur.")
	difficulty = SKILL_EASY
/singleton/hierarchy/skill/engineering/engines
	ID = "engines"
	name = "Astro Engineering"
	desc = "Describes your understanding of the sacred engines that power voidships and space stations, such as plasma reactors, singularity drives, or warp cores."
	levels = list( "Unskilled"			= "You understand that engine malfunctions are catastrophic, but beyond that, the technology is largely a mystery. Setting up an engine without guidance would result in fatal mistakes.<br>- You read engine monitors with a 40% error rate. This decreases with skill.",
						"Basic"				= "You understand the core principles of engine operation and can maintain simpler systems like plasma reactors. Mistakes are still possible, but you can handle basic tasks.",
						"Trained"			= "You can manage engines confidently, ensuring they operate smoothly. You're familiar with radiation shielding and can handle minor malfunctions on your own.<br>- You can fully read plasma reactor and gravitic singularity monitors.",
						"Experienced"		= "You’ve honed your skills across various engines and systems, setting them up quickly and reliably. You can troubleshoot advanced problems without oversight.<br>- You can assess the integrity of singularities directly.",
						"Master"		= "The engine is your domain, and you understand every nuance of its operation. You can optimize or rebuild engines from scratch, handling even singularities and warp cores with ease.")
	difficulty = SKILL_AVERAGE

// Category: Research

/singleton/hierarchy/skill/research/devices
	ID = "devices"
	name = "Tech Devices"
	desc = "Describes your ability to assemble and repair complex devices, such as cogitators, servitors, and advanced machine spirits."
	levels = list( "Unskilled"			= "You understand basic technology use but must rely on others to fix malfunctions. Advanced repairs are beyond you.",
						"Basic"				= "You can repair simple technology and construct basic servitors or cogitators. You’re comfortable with standard equipment and can resolve minor issues without help.",
						"Trained"			= "You are skilled in constructing or repairing servitors and exosuits. You can handle advanced tech like augmetics and mind-machine interfacing (MMI) safely.<br>- You can attach robotic limbs and perform basic cybernetics if trained in Anatomy.",
						"Experienced"		= "You’ve built and reverse-engineered complex machines. You’re proficient with advanced lathes and analyzers, designing custom devices for specific needs.",
						"Master"		= "You are a master of techcraft, able to design, build, and modify machinery to your will. No machine spirit is beyond your understanding, and you can repair even the most advanced devices with ease.")
	difficulty = SKILL_EASY
/singleton/hierarchy/skill/research/science
	ID = "science"
	name = "Data Scrutiny"
	desc = "Describes your ability to analyze data using the sacred processes and methodologies of the Adeptus Mechanicus."
	levels = list( "Unskilled"			= "You understand basic science and have heard of the Mechanicus' methods from scholam teachings. True understanding of their practices remains distant.",
						"Basic"				= "You follow Mechanicus discoveries and have a broad understanding of Imperial research. Your laboratory skills are sufficient to design simple experiments.<br>- You can detect flora, fauna, and atmosphere when scanning exoplanets.",
						"Trained"			= "You are skilled in research, designing experiments, and analyzing data. You can work with Mechanicus technologies and dissect xenofauna with care.<br>- You can determine atmospheric composition and detect artificial structures on exoplanets.<br>- You can perform surgery on xeno slimes.",
						"Experienced"		= "Your experience allows you to formulate research questions and investigate unknown phenomena. You consistently publish valuable findings.",
						"Master"		= "You are a recognized authority in your field, coordinating research teams and making significant discoveries. Your research attracts attention from influential Imperial figures.")
	difficulty = SKILL_AVERAGE
// Category: Medical

/singleton/hierarchy/skill/medical/medical
	ID = "medical"
	name = "Medicae"
	desc = "Covers your knowledge of human anatomy and battlefield medicine. At lower levels, this skill offers basic understanding of common treatments and medical devices, while higher levels allow mastery of advanced medical technologies, such as body scanners or gene-sequencers. Vital in any warzone or hive sprawl, Medicae skills keep the Emperor's forces fighting."
	levels = list( "Unskilled"			= "You can apply basic first aid—bandages, ointments, and autoinjectors. You know when someone needs a medicae but might struggle to distinguish between unconscious and dead at a glance.<br>- You can use basic first aid supplies, including autoinjectors.",
						"Basic"				= "You’ve completed Militarum Medicae training. You can stop bleeding, perform CPR, apply splints, and handle basic medical tools. You understand basic emergency treatments and can stabilize a patient.<br>- You can use Health Analyzers, Defibrillators, IVs, and Syringes.<br>- You can interpret Body Scanner readouts with limited accuracy.",
						"Trained"			= "You are an experienced Medicae, capable of treating most battlefield injuries and illnesses. Your quick thinking in emergencies keeps patients alive. You can use complex medical devices and recognize alien infections.<br>- You can operate Sleepers and Body Scanners with confidence.<br>- You can perform basic surgery if you also have Trained Anatomy.",
						"Experienced"		= "As a senior Medicae, you can diagnose and treat a wide range of injuries and illnesses. You’re adept at using all medical equipment, and no scanner reading escapes your notice.<br>- You can safely perform all surgical steps with Experienced Anatomy.",
						"Master"		= "You are an expert Medicae, having seen nearly every injury and illness imaginable. Your skill with medicine is unparalleled, and in emergencies, you can handle nearly any medical task—even under extreme pressure.")
	difficulty = SKILL_AVERAGE
/singleton/hierarchy/skill/medical/anatomy
	ID = "anatomy"
	name = "Biologis-Vitalis"
	desc = "Grants deep knowledge of human and xenos anatomy. High skill in this is necessary to perform surgery. This skill also aids in autopsies and understanding alien biology."
	levels = list( "Unskilled"			= "You have a rough idea of the locations of organs and bones. You know that severe injuries may require surgery but lack the knowledge to assist effectively.",
						"Basic"				= "You’ve studied anatomy enough to assist in surgery and perform basic procedures. You can recognize internal injuries and even conduct autopsies if required. Surgery is possible in emergencies, though unadvised.<br>- You can perform basic surgery if you also have Trained Medicine.",
						"Trained"			= "You can diagnose broken bones, shrapnel wounds, and internal damage with ease. You handle basic surgeries competently and know how to treat common injuries. Cybernetic procedures are also within your grasp if trained.<br>- You can perform cybernetic surgeries if you have Trained Complex Devices.",
						"Experienced"		= "You can perform most surgeries reliably, including complex operations. While highly skilled in human anatomy, you are also proficient with several xenos species. You excel in handling organ damage and repairing delicate systems.<br>- You can perform all surgery steps safely if you also have Experienced Medicine.",
						"Master"		= "You are a master surgeon, able to handle any case, no matter how severe. From brain surgery to organ transplants, nothing escapes your expertise. Your understanding of anatomy is so refined that even disguised xenos would struggle to evade your detection.<br>- The penalty for operating in less-than-ideal environments is reduced.")
	difficulty = SKILL_AVERAGE
	default_max = SKILL_MASTER
/singleton/hierarchy/skill/medical/chemistry
	ID = "chemistry"
	name = "Biologis-Chemica"
	desc = "Your expertise in creating chemicals, medicines, and compounds. This skill doesn't include the medical understanding of how chemicals affect the body, so Medicae skill is also needed for medical chemists."
	levels = list( "Unskilled"			= "You know that chemists work with chemicals to create useful or dangerous substances. You have a basic grasp of chemical reactions from scholam lessons.",
						"Basic"				= "You can create basic chemicals like space cleaner or anti-toxin, with some safety training. Accidents are less likely, but still possible.<br>- You can safely use the industrial grinder but lose some ingredients.",
						"Trained"			= "You can measure reagents and mix chemicals accurately. You can produce most common compounds without much loss. Complex chemical reactions are within your ability.<br>- You can fully operate the chem dispenser.",
						"Experienced"		= "You’re proficient in creating complex chemicals, either for medical purposes or weaponization. Whether producing grenades or refining medicines, you work efficiently.<br>- You can examine containers to detect reagents.",
						"Master"		= "You are a master chemist, able to produce custom mixes and rare compounds with ease. Your understanding of chemistry allows for creative innovation, and your work is likely known across the Imperium.<br>- You can examine containers for all reagent details.")
	difficulty = SKILL_AVERAGE
	default_max = SKILL_MASTER
