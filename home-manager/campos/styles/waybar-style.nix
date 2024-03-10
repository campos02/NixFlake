''
* {
  border: none;
  border-radius: 0;
  font-family: Roboto,'Font Awesome 6', 'SFNS Display',  Helvetica, Arial, sans-serif;
  font-size: 13px;
  min-height: 0;
}

window#waybar {
  background: rgba(43, 48, 59, 0.5);
  border-bottom: 3px solid rgba(100, 114, 125, 0.5);
  color: #e3e4e9;
}

window#waybar.hidden {
  opacity: 0.0;
}

#mode {
  background: #64727D;
  border-bottom: 3px solid #cad3f5;
}

#workspaces,
#custom-notification,
#disk,
#battery,
#clock,
#cpu,
#memory,
#temperature,
#backlight,
#network,
#pulseaudio,
#custom-media,
#tray,
#mode,
#idle_inhibitor {
  border-radius: 5px;
  padding: 0 10px;
  margin: 3 2 6px;
  background-color: #45484b;
}

#workspaces {
  padding: 0 5px;
}

#workspaces button {
  color: #90929a;
}

#workspaces button.active {
  color: #e3e4e9;
}

#workspaces button.urgent {
  background-color: #eb4d4b;
}

#battery.charging {
  color: #cad3f5;
  background-color: #26A65B;
}

@keyframes blink {
  to {
    background-color: #cad3f5;
  }
}

#battery.critical:not(.charging) {
  background: #f53c3c;
  color: #cad3f5;
  animation-name: blink;
  animation-duration: 0.5s;
  animation-timing-function: linear;
  animation-iteration-count: infinite;
  animation-direction: alternate;
}

#network.disconnected {
  background: #f53c3c;
}

#pulseaudio.muted {
  background: #eed49f;
  color: #000000;
}

#custom-media {
  background: #66cc99;
  color: #2a5c45;
}

.custom-spotify {
  background: #66cc99;
}

.custom-vlc {
  background: #ffa000;
}

#temperature {
  background: #f0932b;
}

#temperature.critical {
  background: #eb4d4b;
}

#idle_inhibitor.activated {
  background-color: #ecf0f1;
  color: #2d3436;
}
''