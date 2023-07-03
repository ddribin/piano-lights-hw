include <faceplate.scad>

$fn= $preview ? 32 : 64;

module midi_in_faceplate()
{
  midi_coupler_x = 27.5;
  midi_in_x = 48.2;

  // JST XH connector has exact dimensions of 12.mm x 6.1mm (WxH)
  jst_w = 12.4;
  jst_h = 6.1;
  jst_x = 66.6;
  
  difference()
  {
    faceplate();
    
    translate([midi_coupler_x, midi_y, 0])
      circle(d = midi_diameter);
    
    translate([midi_in_x, midi_y, 0])
      circle(d = midi_diameter);
    
    translate([jst_x, pcb_top, 0])
      offset(delta = 0.2)
      square([jst_w, jst_h]);
  }
}

midi_in_faceplate();