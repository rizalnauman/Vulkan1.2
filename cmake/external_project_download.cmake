cmake_minimum_required(VERSION 3.3)

include(ExternalProject)

project(${external_project_name}-download NONE)

# Setup the ExternalProject_Add call
ExternalProject_Add(external_${external_project_name}
  PREFIX				${external_project_cmake_files_dir}
  SOURCE_DIR 			${external_project_src_dir}
  UPDATE_COMMAND 		""
  URL					${external_project_url}
  DOWNLOAD_DIR			${external_project_download_dir}
  CONFIGURE_COMMAND 	""
  BUILD_COMMAND 		""
  INSTALL_COMMAND 		""
  TEST_COMMAND 			""
  BUILD_BYPRODUCTS 		${external_project_byproducts}
)