cmake_minimum_required(VERSION 3.23)
project(C_Standard_Lib_ASM C ASM_NASM)

set(CMAKE_C_STANDARD 11)

set(C_SOURCES main.c)
set(ASM_SOURCES asm/my_strlen.asm
                asm/my_strcpy.asm)

if(APPLE)
    set(CMAKE_ASM_NASM_OBJECT_FORMAT macho64)
endif()

set(ALL_SOURCES ${C_SOURCES} ${ASM_SOURCES})
add_executable(MyStrlen ${ALL_SOURCES})