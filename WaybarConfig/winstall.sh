#!/bin/bash
echo "Transformation begins. Join the Autobots"
# Check if "waybar" directory exists in the current directory
if [ -d "waybar" ]; then
# Check if "waybar" directory exists under .config
if [ -d "$HOME/.config/waybar" ]; then
# If it exists, delete it
echo "First, deleting $HOME/.config/waybar directory..."
rm -rf "$HOME/.config/waybar"
fi
# Copy "waybar" directory
echo "Copying waybar directory to $HOME/.config/..."
cp -r "waybar" "$HOME/.config/"
echo "Copying completed."


# Check if Waybar service is running
if pgrep -x "waybar" > /dev/null; then
# If it's running, stop it
echo "Stopping Waybar service..."
pkill -x "waybar"
sleep 1 # Wait for a moment to ensure the stopping process is complete
fi


# Start Waybar service
echo "Starting Waybar service..."
waybar & # Run in the background
else
# If "waybar" directory is not found, display error message
echo "Error: 'waybar' directory not found in this location. Operation canceled."
exit 1
fi

