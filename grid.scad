


thick = 0.060;
length = 50;
nozzle = 0.4;
play = 0.2;



grid();



module grid() {
    
    num = floor(length / (4 * nozzle) );
    
    for (L = [0:num]) {
        
        translate([2*L-num, 0, 0] * 2*nozzle)
        cube([nozzle + play, length, thick], center = true);
        
        translate([0, 2*L-num, 0] * 2*nozzle)
        cube([length, nozzle + play, thick], center = true);
    }
}

