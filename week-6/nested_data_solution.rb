# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

# nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES


number_array = [5, [10, 15], [20,25,30], 35]
number_array.each do |x|
	if x.is_a?(Array)
		x.each do |s|
			p s
		end
	else
		p x
 	end			
end

number_array.flatten.each do |x|
	p x
end
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]