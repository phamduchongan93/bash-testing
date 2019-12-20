#!/bin/bash
bluetooth_device="98:52:3D:66:21:88"
bluetooth_name=$(echo -e "$bluetooth_device" | sed "s/:/_/g")
echo "$bluetooth_name"

option1 {
	sed -i "s/bluez_sink.$bluetooth_name.a2dp_sink/alsa_output.pci-0000_00_1f.3.analog-stereo/g" "input.txt"
}

option2 {
	sed -i "s/alsa_output.pci-0000_00_1f.3.analog-stereo/bluez_sink.$bluetooth_name.a2dp_sink/g" "input.txt"
}

if "$bluet
