# OpenRAM SRAM configuration file

# Technology to use in $OPENRAM_TECH
tech_name = "freepdk45"

# A word size of 32 bits (full word)
word_size = 32 

# Since the used memory was 1024 bytes and each word is 4 byte, we need 256 words.
num_words = 256

# 1 word per row
words_per_row = 1 

# Number of memory banks (More banks give higher parallelism and better performance but at the cost of increased area and power consumption)
num_banks = 1 # Default value

# Number of ports (read/write)
num_rw_ports = 1  

# Process corners to characterize
process_corners = [ "TT" ]
# Voltage corners to characterize
supply_voltages = [ 3.3 ]
# Temperature corners to characterize
temperatures = [ 25 ]

# Output directory for OpenRAM compiler
output_path = "sram_output_freepdk45"  
