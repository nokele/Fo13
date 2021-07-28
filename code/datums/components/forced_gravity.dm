/datum/component/forced_gravity
	var/gravity
	var/ignore_space = FALSE	//If forced gravity should also work on space turfs

/datum/component/forced_gravity/Initialize(forced_value = 1)
	if(!isatom(parent))
		return COMPONENT_INCOMPATIBLE
	RegisterSignal(COMSIG_ATOM_HAS_GRAVITY, .proc/gravity_check)
	if(isturf(parent))
		RegisterSignal(COMSIG_TURF_HAS_GRAVITY, .proc/turf_gravity_check)

	gravity = forced_value

/datum/component/forced_gravity/proc/gravity_check(turf/location, list/gravs)
	if(!ignore_space && isspaceturf(location))
		return
	gravs += gravity

/datum/component/forced_gravity/proc/turf_gravity_check(atom/checker, list/gravs)
	return gravity_check(parent, gravs)
