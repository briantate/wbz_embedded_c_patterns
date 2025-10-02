# The following functions contains all the flags passed to the different build stages.

set(PACK_REPO_PATH "/Users/briantate/.mchp_packs" CACHE PATH "Path to the root of a pack repository.")

function(wbz_c_pattern_project_default_default_XC32_assemble_rule target)
    set(options
        "-g"
        "${ASSEMBLER_PRE}"
        "-mprocessor=WBZ451"
        "-Wa,--defsym=__MPLAB_BUILD=1${MP_EXTRA_AS_POST},--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--gdwarf-2"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CX-BZ_DFP/1.4.243/WBZ451")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "__DEBUG=1")
endfunction()
function(wbz_c_pattern_project_default_default_XC32_assembleWithPreprocess_rule target)
    set(options
        "-x"
        "assembler-with-cpp"
        "-g"
        "${MP_EXTRA_AS_PRE}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CX-BZ_DFP/1.4.243/WBZ451"
        "-mprocessor=WBZ451"
        "-Wa,--defsym=__MPLAB_BUILD=1${MP_EXTRA_AS_POST},--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default")
endfunction()
function(wbz_c_pattern_project_default_default_XC32_compile_rule target)
    set(options
        "-g"
        "${CC_PRE}"
        "-x"
        "c"
        "-c"
        "-mprocessor=WBZ451"
        "-ffunction-sections"
        "-fdata-sections"
        "-O1"
        "-Werror"
        "-Wall"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CX-BZ_DFP/1.4.243/WBZ451")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/mcc"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/packs/CMSIS"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/packs/CMSIS/CMSIS/Core/Include"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/packs/WBZ451_DFP"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/include"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F"
        PRIVATE "${PACK_REPO_PATH}/ARM/CMSIS/6.2.0/CMSIS/Core/Include")
endfunction()
function(wbz_c_pattern_project_default_default_XC32_compile_cpp_rule target)
    set(options
        "-g"
        "${CC_PRE}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-mprocessor=WBZ451"
        "-frtti"
        "-fexceptions"
        "-fno-check-new"
        "-fenforce-eh-specs"
        "-ffunction-sections"
        "-O1"
        "-fno-common"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CX-BZ_DFP/1.4.243/WBZ451")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/mcc"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/config/default"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/packs/CMSIS"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/packs/CMSIS/CMSIS/Core/Include"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/packs/WBZ451_DFP"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/include"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../wbz452_curiosity_cfg/src/third_party/rtos/FreeRTOS/Source/portable/GCC/SAM/ARM_CM4F"
        PRIVATE "${PACK_REPO_PATH}/ARM/CMSIS/6.2.0/CMSIS/Core/Include")
endfunction()
function(wbz_c_pattern_project_default_dependentObject_rule target)
    set(options
        "-mprocessor=WBZ451"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CX-BZ_DFP/1.4.243/WBZ451")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
endfunction()
function(wbz_c_pattern_project_default_link_rule target)
    set(options
        "-g"
        "${MP_EXTRA_LD_PRE}"
        "${DEBUGGER_OPTION_TO_LINKER}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-mprocessor=WBZ451"
        "-mno-device-startup-code"
        "-Wl,--defsym=__MPLAB_BUILD=1${MP_EXTRA_LD_POST},--script=${wbz_c_pattern_project_default_LINKER_SCRIPT},--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=_min_heap_size=512,--gc-sections,-Map=mem.map,--report-mem,-DVECTOR_REGION=boot_rom,--memorysummary,memoryfile.xml"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CX-BZ_DFP/1.4.243/WBZ451"
        "")
    list(REMOVE_ITEM options "")
    target_link_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "XPRJ_default=default")
endfunction()
