# cmake files support debug production
include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(wbz_c_pattern_project_default_library_list )

# Handle files with suffix s, for group default-XC32
if(wbz_c_pattern_project_default_default_XC32_FILE_TYPE_assemble)
add_library(wbz_c_pattern_project_default_default_XC32_assemble OBJECT ${wbz_c_pattern_project_default_default_XC32_FILE_TYPE_assemble})
    wbz_c_pattern_project_default_default_XC32_assemble_rule(wbz_c_pattern_project_default_default_XC32_assemble)
    list(APPEND wbz_c_pattern_project_default_library_list "$<TARGET_OBJECTS:wbz_c_pattern_project_default_default_XC32_assemble>")
endif()

# Handle files with suffix S, for group default-XC32
if(wbz_c_pattern_project_default_default_XC32_FILE_TYPE_assembleWithPreprocess)
add_library(wbz_c_pattern_project_default_default_XC32_assembleWithPreprocess OBJECT ${wbz_c_pattern_project_default_default_XC32_FILE_TYPE_assembleWithPreprocess})
    wbz_c_pattern_project_default_default_XC32_assembleWithPreprocess_rule(wbz_c_pattern_project_default_default_XC32_assembleWithPreprocess)
    list(APPEND wbz_c_pattern_project_default_library_list "$<TARGET_OBJECTS:wbz_c_pattern_project_default_default_XC32_assembleWithPreprocess>")
endif()

# Handle files with suffix [cC], for group default-XC32
if(wbz_c_pattern_project_default_default_XC32_FILE_TYPE_compile)
add_library(wbz_c_pattern_project_default_default_XC32_compile OBJECT ${wbz_c_pattern_project_default_default_XC32_FILE_TYPE_compile})
    wbz_c_pattern_project_default_default_XC32_compile_rule(wbz_c_pattern_project_default_default_XC32_compile)
    list(APPEND wbz_c_pattern_project_default_library_list "$<TARGET_OBJECTS:wbz_c_pattern_project_default_default_XC32_compile>")
endif()

# Handle files with suffix cpp, for group default-XC32
if(wbz_c_pattern_project_default_default_XC32_FILE_TYPE_compile_cpp)
add_library(wbz_c_pattern_project_default_default_XC32_compile_cpp OBJECT ${wbz_c_pattern_project_default_default_XC32_FILE_TYPE_compile_cpp})
    wbz_c_pattern_project_default_default_XC32_compile_cpp_rule(wbz_c_pattern_project_default_default_XC32_compile_cpp)
    list(APPEND wbz_c_pattern_project_default_library_list "$<TARGET_OBJECTS:wbz_c_pattern_project_default_default_XC32_compile_cpp>")
endif()

add_executable(wbz_c_pattern_project_default_image_1IWOXFWX ${wbz_c_pattern_project_default_library_list})

set_target_properties(wbz_c_pattern_project_default_image_1IWOXFWX PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${wbz_c_pattern_project_default_output_dir})
set_target_properties(wbz_c_pattern_project_default_image_1IWOXFWX PROPERTIES OUTPUT_NAME "default")
set_target_properties(wbz_c_pattern_project_default_image_1IWOXFWX PROPERTIES SUFFIX ".elf")

target_link_libraries(wbz_c_pattern_project_default_image_1IWOXFWX PRIVATE ${wbz_c_pattern_project_default_default_XC32_FILE_TYPE_link})


# Add the link options from the rule file.
wbz_c_pattern_project_default_link_rule(wbz_c_pattern_project_default_image_1IWOXFWX)

# Add bin2hex target for converting built file to a .hex file.
string(REGEX REPLACE [.]elf$ .hex wbz_c_pattern_project_default_image_name_hex ${wbz_c_pattern_project_default_image_name})
add_custom_target(wbz_c_pattern_project_default_Bin2Hex ALL
    COMMAND ${MP_BIN2HEX} \"${wbz_c_pattern_project_default_output_dir}/${wbz_c_pattern_project_default_image_name}\"
    BYPRODUCTS ${wbz_c_pattern_project_default_output_dir}/${wbz_c_pattern_project_default_image_name_hex}
    COMMENT "Convert built file to .hex")
add_dependencies(wbz_c_pattern_project_default_Bin2Hex wbz_c_pattern_project_default_image_1IWOXFWX)




# The following code exposes targets created in this project so they
# may be consumed by other projects

if(enable_dependent_codewbz_c_pattern_project_default_1IWOXFWX)
    add_custom_command(
        OUTPUT ${wbz_c_pattern_project_default_output_dir}/${sourceFileNamewbz_c_pattern_project_default_1IWOXFWX}.c
        COMMAND ${MP_BIN2HEX} --image ${wbz_c_pattern_project_default_full_path_to_image} --image-generated-c ${sourceFileNamewbz_c_pattern_project_default_1IWOXFWX}.c --image-generated-h ${sourceFileNamewbz_c_pattern_project_default_1IWOXFWX}.h --image-copy-mode ${modewbz_c_pattern_project_default_1IWOXFWX} --image-offset ${addresswbz_c_pattern_project_default_1IWOXFWX}
        WORKING_DIRECTORY ${wbz_c_pattern_project_default_output_dir}
        DEPENDS wbz_c_pattern_project_default_image_1IWOXFWX)
    add_custom_target(
        wbz_c_pattern_project_default_processed_fileimage_1IWOXFWX 
        DEPENDS ${wbz_c_pattern_project_default_output_dir}/${sourceFileNamewbz_c_pattern_project_default_1IWOXFWX}.c
        )
    add_library(
        wbz_c_pattern_project_default_processed_file_objectimage_1IWOXFWX
        OBJECT
        EXCLUDE_FROM_ALL
        ${wbz_c_pattern_project_default_output_dir}/${sourceFileNamewbz_c_pattern_project_default_1IWOXFWX}.c)
    add_dependencies(wbz_c_pattern_project_default_processed_file_objectimage_1IWOXFWX wbz_c_pattern_project_default_processed_fileimage_1IWOXFWX)
    add_library(
        wbz_c_pattern_project_default_dependent_image_1IWOXFWX
        INTERFACE
        EXCLUDE_FROM_ALL)
    target_link_libraries(wbz_c_pattern_project_default_dependent_image_1IWOXFWX
    INTERFACE    
 wbz_c_pattern_project_default_processed_file_objectimage_1IWOXFWX)
endif()


