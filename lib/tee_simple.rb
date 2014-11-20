require "tee_simple/version"

module TeeSimple
	def self.install(fn)
		return if $stdout_tee

		$stdout_tee = if fn.kind_of?(String)
			File.open(fn,'w')
		elsif defined?(fn.write)
			fn
		end

		$stdout.instance_exec(fn) do
			break if defined? write_origin
			alias :write_origin :write 
			def write s
				write_origin s
				$stdout_tee.write s
			end
		end

		$stderr.instance_exec(fn) do
			break if defined? write_origin
			alias :write_origin :write 
			def write s
				write_origin s
				$stdout_tee.write s
			end
		end

		if fn.kind_of?(String)
			at_exit { $stdout_tee.close unless $stdout_tee.closed? }
		elsif defined?(fn.write)
		end

		true
	end
end
