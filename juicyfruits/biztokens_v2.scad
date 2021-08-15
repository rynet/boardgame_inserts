include <boardgame_insert_toolkit_lib.2.scad>;

// determines whether lids are output.
g_b_print_lid = false;

// determines whether boxes are output.
g_b_print_box = true; 

// Focus on one box
// g_isolated_print_box = ""; 

// Used to visualize how all of the boxes fit together. 
g_b_visualization = false;          
        
// this is the outer wall thickness. 
//Default = 1.5mm
g_wall_thickness = 2;

// The tolerance value is extra space put between planes of the lid and box that fit together.
// Increase the tolerance to loosen the fit and decrease it to tighten it.
//
// Note that the tolerance is applied exclusively to the lid.
// So if the lid is too tight or too loose, change this value ( up for looser fit, down for tighter fit ) and 
// you only need to reprint the lid.
// 
// The exception is the stackable box, where the bottom of the box is the lid of the box below,
// in which case the tolerance also affects that box bottom.
//
g_tolerance = 0.15;

// This adjusts the position of the lid detents downward. 
// The larger the value, the bigger the gap between the lid and the box.
g_tolerance_detents_pos = 0.1;

data =
[
    [   "jf_biztokens_v2",
        [
            [ BOX_SIZE_XYZ,                                     [62, 62, 30] ],
            [ BOX_LID,
                [
                    [ LID_SOLID_B, f],
                    [LID_FIT_UNDER_B, f],
                ]
            ],
            [ BOX_COMPONENT,
                [
                    //[CMP_NUM_COMPARTMENTS_XY,   [2,2]],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 58, 58, 28] ]
                    //[CMP_PADDING_HEIGHT_ADJUST_XY,          [-10, -10] ],
                ]
            ],                            
        ]
    ],
];

MakeAll();