/obj/item/book/manual/solgov_law
	name = "Sol Central Government Law"
	desc = "A brief overview of SolGov Law."
	icon_state = "bookSolGovLaw"
	author = "The Sol Central Government"
	title = "Sol Central Government Law"

/obj/item/book/manual/solgov_law/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wiki_url]/index.php?title=Sol_Central_Government_Law" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}


/obj/item/book/manual/military_law
	name = "The Sol Code of Military Justice"
	desc = "A brief overview of military law."
	icon_state = "bookSolGovLaw"
	author = "The Sol Central Government"
	title = "The Sol Code of Military Justice"

/obj/item/book/manual/military_law/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wiki_url]/index.php?title=Sol_Code_of_Uniform_Justice" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/book/manual/sol_sop
	name = "Standard Operating Procedure"
	desc = "SOP aboard the Dauntless."
	icon_state = "booksolregs"
	author = "The Sol Central Government"
	title = "Standard Operating Procedure"

/obj/item/book/manual/sol_sop/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wiki_url]/index.php?title=Standard_Operating_Procedure" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/folder/nt/rd

/obj/item/folder/envelope/captain
	desc = "A thick envelope. The SCG crest is stamped in the corner, along with 'TOP SECRET - TORCH UMBRA'."

/obj/item/folder/envelope/captain/Initialize()
	..()
	return INITIALIZE_HINT_LATELOAD

/obj/item/folder/envelope/captain/LateInitialize(mapload)
	var/obj/overmap/visitable/torch = map_sectors["[z]"]
	var/memo = {"
	<tt><center><b>[SPAN_COLOR("red", "SECRET - CODE WORDS: TORCH")]</b>
	<h3>SOL CENTRAL GOVERNMENT EXPEDITIONARY COMMAND</h3>
	<img src = sollogo.png>
	</center>
	<b>FROM:</b> ADM William Lau<br>
	<b>TO:</b> Commanding Officer of Dauntless<br>
	<b>SUBJECT:</b> Standing Orders<br>
	<hr>
	Captain.<br>
	Your orders are to visit the following star systems. Keep in mind that your supplies are limited; ration exploration time accordingly.
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[GLOB.using_map.system_name]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<br>
	Priority targets are artifacts of uncontacted alien species and signal sources of unknown origin.<br>
	None of these systems are claimed by any entity recognized by the SCG, so you have full salvage rights on any derelicts discovered.<br>
	Investigate and mark any prospective colony worlds as per usual procedures.<br>
	There is no SCG presence in that area. In case of distress calls, you will be the only vessel available; do not ignore them. We cannot afford any more PR backlash.<br>
	The current docking code is: [torch.docking_codes]<br>
	Report all findings via bluespace comm buoys during inter-system jumps.<br>

	<i>ADM Lau.</i></tt>
	<i>This paper has been stamped with the stamp of SCG Expeditionary Command.</i>
	"}
	new/obj/item/paper(src, memo, "Standing Orders")
	new/obj/item/paper/umbra(src)

/obj/item/folder/envelope/rep
	desc = "A thick envelope. The SCG crest is stamped in the corner, along with 'TOP SECRET - TORCH UMBRA'."

/obj/item/folder/envelope/rep/Initialize()
	. = ..()
	new/obj/item/paper/umbra(src)

/obj/item/paper/umbra
	name = "UMBRA Protocol"
	info = {"
	<tt><center><b><span style='color: red'>TOP SECRET - CODE WORDS: TORCH UMBRA</span></b>
	<h3>OFFICE OF THE SECRETARY GENERAL OF SOL CENTRAL GOVERNMENT</h3>
	<img src = sollogo.png>
	</center>
	<b>FROM:</b> Johnathan Smitherson, Special Aide of the Secretary General<br>
	<b>TO:</b> Commanding Officer of the Dauntless<br>
	<b>CC:</b> Special Representative aboard the Dauntless<br>
	<b>SUBJECT:</b> UMBRA protocol<br>
	<hr>
	This is a small addendum to the usual operating procedures. Unlike the rest of SOP, this is not left to the Commanding Officer's discretion and is mandatory. As unconventional as this is, we felt it is essential for smooth operation of this mission.<br>
	Procedure can be initiated only by transmission from SCG Expeditionary Command via secure channel. The sender may not introduce themselves, but you shouldn't have trouble confirming the transmission source, I believe.<br>
	The signal to initiate the procedure are codewords 'GOOD NIGHT WORLD' used in this order as one phrase. You do not need to send acknowledgement.
	<li>Information about this expedition's findings is to be treated as secret and vital to SCG's national security, and is protected under codeword UMBRA. Only SCG government employees and Skrell citizens aboard the Dauntless are allowed access to this information on a need-to-know basis.</li>
	<li>The secrecy of this information is to be applied retroactively. Any non-cleared personnel who were exposed to such information are to be secured and transferred to DIA on arrival at home port.</li>
	<li>Any devices capable of transmitting or receiving data at interstellar range are to be confiscated from private possession.</li>
	<li>Disregard any systems remaining in your flight plan and set course for Sol, Neptune orbit. You will be contacted upon your arrival. Do not make stops in ports on the way unless absolutely necessary.</li>
	<br>
	While drastic, I assure you this is a simple precaution, lest any issues. Just keep the option open, and carry on with your normal duties.
	<i>Regards, John.</i></tt>
	<i>This paper has been stamped with the stamp of Office of the General Secretary of SCG.</i>
	"}

/obj/item/paper/newrust
	name = "note - RUST Wiring Updates (Mandatory Reading)"
	info = {"
	<div style="text-align: center;">
<h1>RUST Wiring Updates</h1>
</div>
<h2></h2>
<p>Boys at the Observatory decided to upgrade the wiring of our fusion engine room. To adapt, we will need to adjust our normal procedures.</p>
<ul>
<li>You do NOT need to bypass the SMES in this antechamber. It is no longer irrelevant, it is the only thing separating RUST output from the main power grid.</li>
<li>If you are running a standard setup, you SHOULD NOT run the gyrotron after the Hydrogen to Helium reaction starts. This was always a bad idea, as it isn't necessary and the gyrotron will eat 1.25 MW of power at the highest settings, but now it is on a subgrid that will struggle if that much power is being drained constantly.</li>
</ul>
<p><i>Chief Petty Officer Meng Jiao</i></p>
"}
