cmake_minimum_required(VERSION 3.25)
project(Digital_Book C)

set(CMAKE_C_STANDARD 90)

add_executable(Digital_Book main.c display_manager.c encoding_manager.c font_manager.c fb.c freetype.c ascii.c utf-8.c utf-16le.c utf-16be.c draw.c main.c)
