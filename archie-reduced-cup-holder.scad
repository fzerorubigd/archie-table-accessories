include <archie-base.scad>;

depth = 40;
box = 30;
height = 30;
dm = 100 + 2*depth;
thick = 5; 
$fn = 100;

union() {
    difference() {
        translate([depth-10,-depth/2,0]) base_box(box, depth, height);
        translate([0,0,thick]) cylinder(h=height-thick+1,d=dm-2*thick);
    }
    difference() {
        cylinder(h=height,d=dm);
        translate([0,0,thick]) cylinder(h=height-thick+1,d=dm-2*thick);
    }
}
