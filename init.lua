function OnModInit()
	local shader_file = "data/shaders/post_final.frag"
	local file = ModTextFileGetContent( shader_file )
	file = string.gsub( file, "uniform float low_health_indicator_alpha;", "uniform float low_health_indicator_alpha ;\r\nuniform vec4 low_health_indicator_alpha_proper;" )
	file = string.gsub( file, "%* low_health_indicator_alpha;", "* low_health_indicator_alpha_proper[0];" )
	file = string.gsub( file, "uniform float damage_flash_interpolation;", "uniform float damage_flash_interpolation ;\r\nuniform vec4 damage_flash_interpolation_proper;" )
	file = string.gsub( file, "damage_flash_interpolation %*", "damage_flash_interpolation_proper[0] *" )
	ModTextFileSetContent( shader_file, file )
end