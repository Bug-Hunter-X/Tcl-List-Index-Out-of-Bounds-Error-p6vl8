proc get_list_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    return -code error "Index out of range"
  }
  return [lindex $list $index]
}

#Improved error handling.  Instead of just returning an error code, provide more context:
proc get_list_element_improved {list index} {
    if {$index < 0 || $index >= [llength $list]} {
        error "Index $index out of range for list: $list"
    }
    return [lindex $list $index]
}

# Example usage with improved error handling:
set mylist {a b c d e}
puts [get_list_element_improved $mylist 2]  ;# Output: c
puts [get_list_element_improved $mylist 5]  ;# Error: Index 5 out of range for list: {a b c d e} 