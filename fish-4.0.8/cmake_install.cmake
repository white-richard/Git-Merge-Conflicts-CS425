# Install script for directory: /home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM MESSAGE_NEVER PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/fish"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/fish_indent"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/fish_key_reader"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/fish/conf.d" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/fish/completions" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/fish/functions" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/fish" TYPE FILE MESSAGE_NEVER FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/etc/config.fish")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/completions" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/functions" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/groff" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/man/man1" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/tools" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/tools/web_config" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/tools/web_config/js" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/tools/web_config/sample_prompts" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/tools/web_config/themes" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish" TYPE FILE MESSAGE_NEVER FILES
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/share/config.fish"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/share/__fish_build_paths.fish"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/vendor_completions.d" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/vendor_functions.d" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/vendor_conf.d" TYPE DIRECTORY MESSAGE_NEVER FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  EXECUTE_PROCESS(COMMAND mkdir -p $ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/pkgconfig OUTPUT_QUIET ERROR_QUIET)
                         execute_process(COMMAND chmod 755 $ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/pkgconfig OUTPUT_QUIET ERROR_QUIET)
                        
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkgconfig" TYPE FILE MESSAGE_NEVER FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/fish.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/completions" TYPE DIRECTORY MESSAGE_NEVER FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/share/completions/" FILES_MATCHING REGEX "/[^/]*\\.fish$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/functions" TYPE DIRECTORY MESSAGE_NEVER FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/share/functions/" FILES_MATCHING REGEX "/[^/]*\\.fish$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish" TYPE DIRECTORY MESSAGE_NEVER FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/share/groff")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/man/man1" TYPE DIRECTORY MESSAGE_NEVER FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/man/man1/" FILES_MATCHING REGEX "/[^/]*\\.1$" REGEX "/realpath\\.1$" EXCLUDE)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/tools" TYPE PROGRAM MESSAGE_NEVER FILES
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/share/tools/create_manpage_completions.py"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/share/tools/deroff.py"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fish/tools/" TYPE DIRECTORY MESSAGE_NEVER FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/share/tools/web_config" FILES_MATCHING REGEX "/[^/]*\\.png$" REGEX "/[^/]*\\.css$" REGEX "/[^/]*\\.html$" REGEX "/[^/]*\\.py$" REGEX "/[^/]*\\.js$" REGEX "/[^/]*\\.theme$" REGEX "/[^/]*\\.fish$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE OPTIONAL MESSAGE_NEVER FILES
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/man/man1/fish.1"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/man/man1/fish_indent.1"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/man/man1/fish_key_reader.1"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/man/man1/fish-doc.1"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/man/man1/fish-tutorial.1"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/man/man1/fish-language.1"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/man/man1/fish-interactive.1"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/man/man1/fish-completions.1"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/man/man1/fish-prompt-tutorial.1"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/man/man1/fish-for-bash-users.1"
    "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/man/man1/fish-faq.1"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/fish" TYPE DIRECTORY OPTIONAL MESSAGE_NEVER FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/user_doc/html/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/fish" TYPE FILE MESSAGE_NEVER FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/CHANGELOG.rst")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/de/LC_MESSAGES" TYPE FILE MESSAGE_NEVER RENAME "fish.mo" FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/de.gmo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/en/LC_MESSAGES" TYPE FILE MESSAGE_NEVER RENAME "fish.mo" FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/en.gmo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/fr/LC_MESSAGES" TYPE FILE MESSAGE_NEVER RENAME "fish.mo" FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/fr.gmo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/pl/LC_MESSAGES" TYPE FILE MESSAGE_NEVER RENAME "fish.mo" FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/pl.gmo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/pt_BR/LC_MESSAGES" TYPE FILE MESSAGE_NEVER RENAME "fish.mo" FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/pt_BR.gmo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/sv/LC_MESSAGES" TYPE FILE MESSAGE_NEVER RENAME "fish.mo" FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/sv.gmo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/locale/zh_CN/LC_MESSAGES" TYPE FILE MESSAGE_NEVER RENAME "fish.mo" FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/zh_CN.gmo")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/applications" TYPE FILE MESSAGE_NEVER FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/fish.desktop")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pixmaps" TYPE FILE MESSAGE_NEVER FILES "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/doc_src/python_docs_theme/static/fish.png")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/richw/.code/SWE_425/GitHub-Introduction-CS425/fish-4.0.8/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
