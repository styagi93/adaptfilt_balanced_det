set masters [get_service_paths master]

set master [lindex $masters 0]

open_service master $master





set filename [file join {C:\Users\saurabhg\Desktop\binary_dump\file11.bin}]
master_read_to_file $master $filename 0x0000 2097152