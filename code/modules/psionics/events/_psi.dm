/datum/event/psi
	startWhen = 30
	endWhen = 120

/datum/event/psi/announce()
	priority_announcement.Announce( \
		"A localized disruption within the local warp has been detected. All Pysker crewmembers \
		are advised to cease any sensitive activities and report to medical personnel in case of damage.", \
		"Inquisitorial Array Automated Message" \
		)

/datum/event/psi/end()
	priority_announcement.Announce( \
		"The warp disturbance has ended and baseline normality has been re-asserted. \
		Anything you still can't cope with is therefore your own problem.", \
		"Inquisitorial Array Automated Message" \
	)

/datum/event/psi/tick()
	for(var/thing in SSpsi.processing)
		apply_psi_effect(thing)

/datum/event/psi/proc/apply_psi_effect(datum/psi_complexus/psi)
	return
