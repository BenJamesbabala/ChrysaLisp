%include 'inc/func.inc'
%include 'inc/task.inc'

	fn_function sys/mail_mymail, no_debug_enter
		;outputs
		;r0 = mail address
		;trashes
		;r1-r2

		static_call sys_task, mailbox, {}, {r0, r1}
		static_jmp sys_mail, read, {r0}, {r0}

	fn_function_end
