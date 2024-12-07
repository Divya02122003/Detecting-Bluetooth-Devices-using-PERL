use strict;
use warnings;

sub detect_bluetooth {
    print("Detect Bluetooth device (Y or N):\n");
    chomp(my $entry = <STDIN>);

    if (lc($entry) eq "y") {  # Make the input case-insensitive
        print("Searching...\n");
        sleep(1);

        # Run PowerShell command
        my @bluetooth_output = qx(powershell -Command "Get-PnpDevice -Class Bluetooth");
        
        # Check if the command executed successfully
        if ($? != 0) {
            die "Error running PowerShell command. Exit status: $?\n";
        }

        # Process and display the output
        if (@bluetooth_output) {
            print("Detected Bluetooth Devices:\n");
            foreach my $line (@bluetooth_output) {
                print $line;
            }
        } else {
            print("No Bluetooth devices detected.\n");
        }
    } else {
        print("No Bluetooth detection selected.\n");
    }
}

# Call the function to test
detect_bluetooth();


	
	
	
		 