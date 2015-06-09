set(CTEST_PROJECT_NAME "agat-demo-0")
set(CTEST_NIGHTLY_START_TIME "01:00:00 UTC")
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")

test_start(Experimental)
ctest_update(SOURCE “${CTEST_SOURCE_DIRECTORY}”)
ctest_configure(BUILD “${CTEST_BINARY_DIRECTORY}”)
ctest_submit(PARTS Update Configure Notes)
ctest_build(BUILD “${CTEST_BINARY_DIRECTORY}”)
ctest_submit(PARTS Build)
ctest_test(BUILD “${CTEST_BINARY_DIRECTORY}”)
ctest_submit(PARTS Test)

set(CTEST_PROJECT_NAME "agat-demo-0")
set(CTEST_NIGHTLY_START_TIME "01:00:00 UTC")

set(CTEST_DROP_METHOD "http")
set(CTEST_DROP_SITE "cdash.agat")
set(CTEST_DROP_LOCATION "/CDash/submit.php?project=agat-demo-0")
set(CTEST_DROP_SITE_CDASH TRUE)

ctest_submit()
