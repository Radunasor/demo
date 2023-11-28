set(PROJECT_NAME_UPPER ${PROJECT_NAME})
string(TOUPPER ${PROJECT_NAME_UPPER} PROJECT_NAME_UPPER)

# ##REPO IMPL URL OPT###
set(URL_CHOICES "FIRST" "SECOND")
set(URL_VALUES 1 2)
set(${PROJECT_NAME_UPPER}_URL "FIRST" CACHE STRING "Set repo url impl")
set_property(CACHE ${PROJECT_NAME_UPPER}_URL PROPERTY STRINGS ${URL_CHOICES})

# Map log levels to corresponding integer values
list(FIND URL_CHOICES ${${PROJECT_NAME_UPPER}_URL} URL_INDEX)

if(URL_INDEX EQUAL -1)
    message(FATAL_ERROR "Invalid url index specified: ${PROJECT_NAME_UPPER}_URL}")
endif()

if(URL_INDEX EQUAL 0)
    set(IMPL_URL "https://github.com/Radunasor/impl1.git")
elseif(URL_INDEX EQUAL 1)
    set(IMPL_URL "https://github.com/Radunasor/impl2.git")
endif()