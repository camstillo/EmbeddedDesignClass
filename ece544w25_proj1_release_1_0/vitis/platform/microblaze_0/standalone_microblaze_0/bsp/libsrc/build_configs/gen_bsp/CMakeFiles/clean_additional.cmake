# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "A:\\ECE544_GitHub\\ece544w25_proj1_release_1_0\\vitis\\platform\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\sleep.h"
  "A:\\ECE544_GitHub\\ece544w25_proj1_release_1_0\\vitis\\platform\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\xiltimer.h"
  "A:\\ECE544_GitHub\\ece544w25_proj1_release_1_0\\vitis\\platform\\microblaze_0\\standalone_microblaze_0\\bsp\\include\\xtimer_config.h"
  "A:\\ECE544_GitHub\\ece544w25_proj1_release_1_0\\vitis\\platform\\microblaze_0\\standalone_microblaze_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
