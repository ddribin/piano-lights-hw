use <faceplate.scad>

$fn= $preview ? 32 : 64;

module midi_in_faceplate()
{
    midi_diamter = 19-1.6/2;
    midi_center_y = 10;
    pcb_top = 4.2 + 1.6;
    
    midi_coupler_x = 27.511;
    midi_in_x = 48.154;
    midi_y = pcb_top + midi_center_y;

    difference()
    {
        faceplate();
        translate([midi_coupler_x, midi_y, 0]) circle(d = midi_diamter);
        translate([midi_in_x, midi_y, 0]) circle(d = midi_diamter);
    }
}

linear_extrude(1.6) midi_in_faceplate();