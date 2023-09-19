//difference(){
union(){
cylinder(h = 2.01, d = 23, $fn = 100);

difference() {
    translate([0, 0, 2]) cylinder(h = 2, d = 23, $fn = 1000);
    translate([0, 0, 2]) cylinder(h = 3, d = 20, $fn = 1000);
}

translate([0, 0, 2])
linear_extrude(2)
scale([0.04, 0.04, 0])
translate([-143, -180, 0])
import("lesnenky_logo_crop.svg");
}

union() {
translate([-5.7, -2, 0])
cube([11.4, 4, 1.5]);

translate([0, 2, -10])
rotate([90, 0, 0])
difference() {
    cylinder(h = 4, d = 23, $fn = 1000);
    translate([0, 0, -1])
    cylinder(h = 6, d = 20, $fn = 1000);
}
}
//}