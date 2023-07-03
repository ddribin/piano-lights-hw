include <faceplate.scad>

$fn= $preview ? 32 : 64;

module midi_out_faceplate()
{
  midi_coupler_x =  27.5;
  midi_out_x = 48.2;
  
  // Dimenions from GCT USB4125 datasheet
  usb_w = 8.94;
  usb_h = 3.16;
  
  // The PCB X,Y is to center of USB port
  // The edge is W/2 to the left of the center
  usb_x_pcb = 72.85;
  usb_x_pcb_offset = -usb_w/2.0;
  usb_x = usb_x_pcb + usb_x_pcb_offset;
  echo(str("usb_x: ", usb_x));
  
  difference()
  {
    faceplate();
    
    translate([midi_coupler_x, midi_y, 0])
      circle(d = midi_diameter);
    
    translate([midi_out_x, midi_y, 0])
      circle(d = midi_diameter);

    translate([usb_x, pcb_top, 0])
      offset(delta = 0.2)
      square([usb_w, usb_h]);
  }
}

// Flip it because of where PCB (0,0) is
rotate([0, 180, 0])
  translate([-faceplate_w, 0, 0])
  midi_out_faceplate();

text_top = faceplate_h - pcb_top;
text_bottom = faceplate_h - 1.3;
text_h = abs(text_bottom - text_top);
text_center = text_bottom - text_h/2;
echo(str("Text top: ", text_top));
echo(str("Text bottom: ", text_bottom));
echo(str("Text center: ", text_center));