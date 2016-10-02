class FLList
	attr_accessor :arr
	def initialize()
		@arr = Array.new()
	end
	def isEmpty()
		if (@arr.length == 0) then
			return true
		else
			return false
		end
	end
	def contains(value)
		return @arr.include?(value)
	end
	def insert(value)
		@arr.push(value)
	end
	def insert(value, at)
		@arr.insert(at, value)
	end
	def remove(value)
		if (@arr.include?(value)) then
			@arr.delete(value)
		end
	end
	def removeAt(at)
		if ((at >= 0) and (at < @arr.length)) then
			@arr.delete_at(at)
		end
	end
	def to_a()
		ret = Array.new()
		for e in @arr do
			ret.push(e)
		end
		return ret
	end
	def to_s()
		str = ""
		for e in @arr do
			str = str + e.to_s() + " "
		end
		return str.strip()
	end
	private :arr, :arr=
end
