$fa = 1;
$fs = 0.4;

width = 9;
height = 220;
gap = 1;
thickness = 2;
bodyWidth = width + 2 * thickness;

difference(){
    // основа
    cube([height + 2*thickness, bodyWidth, 3 * thickness + gap]);

    // верхний вырез
    translate([thickness, thickness, 2 * thickness])
    cube([height, width, gap + thickness]);
    
    // щель
    translate([thickness, 0, 2 * thickness])
    cube([height, width, gap]);
}
