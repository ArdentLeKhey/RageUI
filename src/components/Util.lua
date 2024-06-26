---
--- @author Dylan MALANDAIN, Kalyptus
--- @version 1.0.0
--- File created at [24/05/2021 09:57]
---

function math.round(value, numDecimalPlaces)
	if numDecimalPlaces then
		local power = 10^numDecimalPlaces
		return math.floor((value * power) + 0.5) / (power)
	else
		return math.floor(value + 0.5)
	end
end

function string.starts(String, Start)
    return string.sub(String, 1, string.len(Start)) == Start
end

local up_trans = {
	["é"] = "É",
	["è"] = "È",
	["â"] = "Â",
	["ê"] = "Ê",
	["î"] = "Î",
	["ô"] = "Ô",
	["û"] = "Û",
	["ä"] = "Ä",
	["ë"] = "Ë",
	["ï"] = "Ï",
	["ö"] = "Ö",
	["ü"] = "Ü",
	["à"] = "À",
	["æ"] = "Æ",
	["ç"] = "Ç",
	["œ"] = "Œ",
	["ù"] = "Ù",
}

local old_upper = string.upper
function string.upper(str)
	local res = old_upper(str)
	for k, v in pairs(up_trans) do
		res = string.gsub(res, k, v)
	end
	return res
end

function string.FirstUp(str)
	return string.upper(string.sub(str, 1, 1)) .. string.sub(str, 2)
end
