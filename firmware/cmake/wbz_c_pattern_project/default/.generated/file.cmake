# The following variables contains the files used by the different stages of the build process.
set(wbz_c_pattern_project_default_default_XC32_FILE_TYPE_assemble)
set_source_files_properties(${wbz_c_pattern_project_default_default_XC32_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${wbz_c_pattern_project_default_default_XC32_FILE_TYPE_assemble})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(wbz_c_pattern_project_default_default_XC32_FILE_TYPE_assembleWithPreprocess)
set_source_files_properties(${wbz_c_pattern_project_default_default_XC32_FILE_TYPE_assembleWithPreprocess} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${wbz_c_pattern_project_default_default_XC32_FILE_TYPE_assembleWithPreprocess})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(wbz_c_pattern_project_default_default_XC32_FILE_TYPE_compile
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/bsp/bsp.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/exceptions.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/freertos_hooks.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/initialization.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/interrupts.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/libc_syscalls.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/peripheral/clk/plib_clk.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/peripheral/cmcc/plib_cmcc.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/peripheral/evsys/plib_evsys.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/peripheral/gpio/plib_gpio.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/peripheral/nvic/plib_nvic.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/startup_xc32.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/stdio/xc32_monitor.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/tasks.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/main.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/croutine.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/event_groups.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/list.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F/port.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/queue.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/stream_buffer.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/timers.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/wireless_sensor.c")
set_source_files_properties(${wbz_c_pattern_project_default_default_XC32_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(wbz_c_pattern_project_default_default_XC32_FILE_TYPE_compile_cpp)
set_source_files_properties(${wbz_c_pattern_project_default_default_XC32_FILE_TYPE_compile_cpp} PROPERTIES LANGUAGE CXX)
set(wbz_c_pattern_project_default_default_XC32_FILE_TYPE_link)

# The linker script used for the build.
set(wbz_c_pattern_project_default_LINKER_SCRIPT "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default/WBZ451.ld")
set(wbz_c_pattern_project_default_image_name "default.elf")
set(wbz_c_pattern_project_default_image_base_name "default")

# The output directory of the final image.
set(wbz_c_pattern_project_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/wbz_c_pattern_project")

# The full path to the final image.
set(wbz_c_pattern_project_default_full_path_to_image ${wbz_c_pattern_project_default_output_dir}/${wbz_c_pattern_project_default_image_name})
