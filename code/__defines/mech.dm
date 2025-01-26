/// Flags for mech propulsion.
// (left and right turns by 90 degrees)
#define PF_SIDE_STRAFE (1<<0)
// reverse direction
#define PF_STRAIGHT_STRAFE (1<<1)
// all 90 angles or reverse direction
#define PF_OMNI_STRAFE PF_SIDE_STRAFE | PF_STRAIGHT_STRAFE

/// Flags for the mech itself
#define MF_STRAFING (1<<0)

/// Delay multiplier applied when doing movement using strafing
#define STRAFING_DELAY_MULTIPLIER 1.5
