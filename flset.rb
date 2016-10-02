#!/usr/bin/ruby

class FLSet
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
		if (not self.contains(value)) then
			@arr.push(value)
		end
	end
	def remove(value)
		if (@arr.include?(value)) then
			@arr.delete(value)
		end
	end
	def subtract(anotherSet)
		raise "Invalid param" if (not(anotherSet.is_a? FLSet))
		ret = Set.new()
		if (anotherSet.isEmpty() or self.isEmpty()) then
			return self
		else
			for elem in @arr do
				if (not anotherSet.contains(elem)) then
					ret.insert(elem)
				end
			end
		end
		return ret
	end
	def intersect(anotherSet)
		raise "Invalid param" if (not(anotherSet.is_a? FLSet))
		ret = Set.new()
		if (anotherSet.isEmpty() or self.isEmpty()) then
			return ret
		else
			for elem in @arr do
				if (anotherSet.contains(elem)) then
					ret.insert(elem)
				end
			end
		end
		return ret
	end
	def union(anotherSet)
		raise "Invalid param" if (not(anotherSet.is_a? FLSet))
		ret = Set.new()
		for elem in @arr do
			ret.insert(elem)
		end
		for elem in anotherSet.to_a() do
			ret.insert(elem)
		end
		return ret
	end
	def exclusiveOr(anotherSet)
		raise "Invalid param" if (not(anotherSet.is_a? FLSet))
		ret = Set.new()
		for elem in @arr do
			if (not anotherSet.contains(elem)) then
				ret.insert(elem)
			end
		end
		for elem in anotherSet.to_a() do
			if (not self.contains(elem)) then
				ret.insert(elem)
			end
		end
		return ret
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
