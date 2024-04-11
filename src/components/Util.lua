---
--- @author Dylan MALANDAIN, Kalyptus
--- @version 1.0.0
--- File created at [24/05/2021 09:57]
---

function math.round(num, numDecimalPlaces)
	return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

function string.starts(String, Start)
	return string.sub(String, 1, string.len(Start)) == Start
end

---@param value number
---@param min number
---@param max number
---@return number
function math.clamp(value, min, max)
	return math.max(min, math.min(value, max))
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


---@diagnostic disable-next-line: duplicate-set-field
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
