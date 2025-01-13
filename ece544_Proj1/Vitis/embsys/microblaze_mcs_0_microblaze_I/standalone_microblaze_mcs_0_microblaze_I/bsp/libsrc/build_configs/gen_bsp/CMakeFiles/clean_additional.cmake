# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "A:\\ECE544_GitHub\\ece544_Proj1\\Vitis\\embsys\\microblaze_mcs_0_microblaze_I\\standalone_microblaze_mcs_0_microblaze_I\\bsp\\include\\sleep.h"
  "A:\\ECE544_GitHub\\ece544_Proj1\\Vitis\\embsys\\microblaze_mcs_0_microblaze_I\\standalone_microblaze_mcs_0_microblaze_I\\bsp\\include\\xiltimer.h"
  "A:\\ECE544_GitHub\\ece544_Proj1\\Vitis\\embsys\\microblaze_mcs_0_microblaze_I\\standalone_microblaze_mcs_0_microblaze_I\\bsp\\include\\xtimer_config.h"
  "A:\\ECE544_GitHub\\ece544_Proj1\\Vitis\\embsys\\microblaze_mcs_0_microblaze_I\\standalone_microblaze_mcs_0_microblaze_I\\bsp\\lib\\libxiltimer.a"
  )
endif()
