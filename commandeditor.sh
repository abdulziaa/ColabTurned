#!/bin/bash
# Linux CLI Script to overwrite existing values in commands.dat

# Define variables with default values
servername=""
servermap=""
serverperspective="First"
serverwelcometext=""
serverpassword=""
serverbind=""
serverchatrate=""
servercycle=""
serverdecay=""
serverfilter=""
servergold=""
serverloadout=""
serverlog=""
servermaxplayers=""
servermode=""
serverowner=""
serverport=""
serverpve=""
serversync=""
servertimeout=""
serverwelcome=""

# Function to display usage instructions
usage() {
  echo "Usage: $0 [options]"
  echo "Options:"
  echo "  -n|--name             Server Name"
  echo "  -m|--map              Server Map"
  echo "  -p|--perspective      Server Perspective"
  echo "  -w|--welcome          Server Welcome Text"
  echo "  -pwd|--password       Server Password"
  echo "  -b|--bind             Server Bind"
  echo "  -cr|--chatrate        Server Chat Rate"
  echo "  -c|--cycle            Server Cycle"
  echo "  -d|--decay            Server Decay"
  echo "  -f|--filter           Server Filter"
  echo "  -g|--gold             Server Gold"
  echo "  -l|--loadout          Server Loadout"
  echo "  -log|--log            Server Log"
  echo "  -mp|--maxplayers      Server Max Players"
  echo "  -mode|--mode          Server Mode"
  echo "  -o|--owner            Server Owner"
  echo "  -port|--port          Server Port"
  echo "  -pve|--pve            Server PVE"
  echo "  -sync|--sync          Server Sync"
  echo "  -t|--timeout          Server Timeout"
  echo "  -wel|--welcome        Server Welcome"
  echo "  -h|--help             Display this help message"
}

# Parse command-line options
while [[ $# -gt 0 ]]; do
  case "$1" in
    -n|--name)
      shift
      servername="$1"
      ;;
    -m|--map)
      shift
      servermap="$1"
      ;;
    -p|--perspective)
      shift
      serverperspective="$1"
      ;;
    -w|--welcome)
      shift
      serverwelcometext="$1"
      ;;
    -pwd|--password)
      shift
      serverpassword="$1"
      ;;
    -b|--bind)
      shift
      serverbind="$1"
      ;;
    -cr|--chatrate)
      shift
      serverchatrate="$1"
      ;;
    -c|--cycle)
      shift
      servercycle="$1"
      ;;
    -d|--decay)
      shift
      serverdecay="$1"
      ;;
    -f|--filter)
      shift
      serverfilter="$1"
      ;;
    -g|--gold)
      shift
      servergold="$1"
      ;;
    -l|--loadout)
      shift
      serverloadout="$1"
      ;;
    -log|--log)
      shift
      serverlog="$1"
      ;;
    -mp|--maxplayers)
      shift
      servermaxplayers="$1"
      ;;
    -mode|--mode)
      shift
      servermode="$1"
      ;;
    -o|--owner)
      shift
      serverowner="$1"
      ;;
    -port|--port)
      shift
      serverport="$1"
      ;;
    -pve|--pve)
      shift
      serverpve="$1"
    ;;
    -sync|--sync)
      shift
      serversync="$1"
      ;;
    -t|--timeout)
      shift
      servertimeout="$1"
      ;;
    -wel|--welcome)
      shift
      serverwelcome="$1"
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Error: Unknown option '$1'"
      usage
      exit 1
      ;;
  esac
  shift
done

# Update commands.dat with new values
echo "Server Name: $servername"
echo "Server Map: $servermap"
echo "Server Perspective: $serverperspective"
echo "Server Welcome Text: $serverwelcometext"
echo "Server Password: $serverpassword"
echo "Server Bind: $serverbind"
echo "Server Chat Rate: $serverchatrate"
echo "Server Cycle: $servercycle"
echo "Server Decay: $serverdecay"
echo "Server Filter: $serverfilter"
echo "Server Gold: $servergold"
echo "Server Loadout: $serverloadout"
echo "Server Log: $serverlog"
echo "Server Max Players: $servermaxplayers"
echo "Server Mode: $servermode"
echo "Server Owner: $serverowner"
echo "Server Port: $serverport"
echo "Server PVE: $serverpve"
echo "Server Sync: $serversync"
echo "Server Timeout: $servertimeout"
echo "Server Welcome: $serverwelcome"

# Update commands.dat with new values
echo "Updating commands.dat..."
sed -i "s/^servername=.*/servername=$servername/" commands.dat
sed -i "s/^servermap=.*/servermap=$servermap/" commands.dat
sed -i "s/^serverperspective=.*/serverperspective=$serverperspective/" commands.dat
sed -i "s/^serverwelcometext=.*/serverwelcometext=$serverwelcometext/" commands.dat
sed -i "s/^serverpassword=.*/serverpassword=$serverpassword/" commands.dat
sed -i "s/^serverbind=.*/serverbind=$serverbind/" commands.dat
sed -i "s/^serverchatrate=.*/serverchatrate=$serverchatrate/" commands.dat
sed -i "s/^servercycle=.*/servercycle=$servercycle/" commands.dat
sed -i "s/^serverdecay=.*/serverdecay=$serverdecay/" commands.dat
sed -i "s/^serverfilter=.*/serverfilter=$serverfilter/" commands.dat
sed -i "s/^servergold=.*/servergold=$servergold/" commands.dat
sed -i "s/^serverloadout=.*/serverloadout=$serverloadout/" commands.dat
sed -i "s/^serverlog=.*/serverlog=$serverlog/" commands.dat
sed -i "s/^servermaxplayers=.*/servermaxplayers=$servermaxplayers/" commands.dat
sed -i "s/^servermode=.*/servermode=$servermode/" commands.dat
sed -i "s/^serverowner=.*/serverowner=$serverowner/" commands.dat
sed -i "s/^serverport=.*/serverport=$serverport/" commands.dat
sed -i "s/^serverpve=.*/serverpve=$serverpve/" commands.dat
sed -i "s/^serversync=.*/serversync=$serversync/" commands.dat
sed -i "s/^servertimeout=.*/servertimeout=$servertimeout/" commands.dat
sed -i "s/^serverwelcome=.*/serverwelcome=$serverwelcome/" commands.dat

echo "Successfully updated commands.dat with new values!"