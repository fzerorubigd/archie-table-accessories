include <archie-base.scad>;

depth = 130;
box = 160;
height = 30;

difference() {
    difference() {
        base_box(box, depth, height);
        translate([70,65,6]) cylinder(24,50,50);
    }
    translate([-1,(depth-30)/2,6]) cube([30,30,24]);
}
