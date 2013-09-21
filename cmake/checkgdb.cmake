execute_process(COMMAND ${EXECUTABLE} ${FILE} ${ARGS} RESULT_VARIABLE RESULT)
if (RESULT)
	if (GDBSCRIPT)
		execute_process(COMMAND gdb --command=${GDBSCRIPT} --args ${EXECUTABLE} ${FILE} ${ARGS} RESULT_VARIABLE GDB_RESULT)
	endif()
endif()