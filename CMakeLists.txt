if(WIN32)
  set(SCRIPT_EXT "bat")
else()
  set(SCRIPT_EXT "sh")
endif()

foreach(case_num RANGE 1 12)
  foreach(ext ".in" ".out.orig")
    configure_file(
      "${CMAKE_CURRENT_SOURCE_DIR}/FAVPFMin/PFM_test_val_${case_num}${ext}"
      "${CMAKE_CURRENT_BINARY_DIR}/FAVPFMin/PFM_test_val_${case_num}${ext}"
      COPYONLY
    )
  endforeach()
  configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/FAVPFMin/run_pfm_test_val_${case_num}.${SCRIPT_EXT}"
    "${CMAKE_CURRENT_BINARY_DIR}/FAVPFMin/run_pfm_test_val_${case_num}.${SCRIPT_EXT}"
    COPYONLY
  )
endforeach()

foreach(case_num RANGE 1 24)
  foreach(ext ".in" ".out.orig")
    configure_file(
      "${CMAKE_CURRENT_SOURCE_DIR}/FAVPFMin/PFM_test_ver_${case_num}${ext}"
      "${CMAKE_CURRENT_BINARY_DIR}/FAVPFMin/PFM_test_ver_${case_num}${ext}"
      COPYONLY
    )
  endforeach()
  configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/FAVPFMin/run_pfm_test_ver_${case_num}.${SCRIPT_EXT}"
    "${CMAKE_CURRENT_BINARY_DIR}/FAVPFMin/run_pfm_test_ver_${case_num}.${SCRIPT_EXT}"
    COPYONLY
  )
endforeach()

foreach(case_num RANGE 1 1)
  foreach(ext ".in" ".out.orig" "_FAILURE.DAT" "_INITIATE.DAT")
    configure_file(
      "${CMAKE_CURRENT_SOURCE_DIR}/FAVPOSTin/POST_test_ver_${case_num}${ext}"
      "${CMAKE_CURRENT_BINARY_DIR}/FAVPOSTin/POST_test_ver_${case_num}${ext}"
      COPYONLY
    )
  endforeach()
  configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/FAVPOSTin/run_post_test_ver_${case_num}.${SCRIPT_EXT}"
    "${CMAKE_CURRENT_BINARY_DIR}/FAVPOSTin/run_post_test_ver_${case_num}.${SCRIPT_EXT}"
    @ONLY
  )
endforeach()

foreach(case_num RANGE 2 2)
  foreach(ext ".in" ".out.orig")
    configure_file(
      "${CMAKE_CURRENT_SOURCE_DIR}/FAVPOSTin/POST_test_ver_${case_num}${ext}"
      "${CMAKE_CURRENT_BINARY_DIR}/FAVPOSTin/POST_test_ver_${case_num}${ext}"
      COPYONLY
    )
  endforeach()
  configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/FAVPOSTin/run_post_test_ver_${case_num}.${SCRIPT_EXT}"
    "${CMAKE_CURRENT_BINARY_DIR}/FAVPOSTin/run_post_test_ver_${case_num}.${SCRIPT_EXT}"
    @ONLY
  )
endforeach()

foreach(flaw_file AFF54.dat BWRplate50.dat BWRsurf5.dat BWRweld50.dat PWRplate50.dat PWRsurf5.dat PWRweld50.dat Pzero.dat Szero.dat Wzero.dat)
  configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/FlawFiles/${flaw_file}"
    "${CMAKE_CURRENT_BINARY_DIR}/FlawFiles/${flaw_file}"
    COPYONLY
  )
endforeach()
