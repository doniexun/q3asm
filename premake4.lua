solution "Quake3asm compiler"
	configurations { "Release", "Debug" }
	platforms {"native", "x32", "x64"}
	configuration "Release"
		flags      
		{
			"OptimizeSpeed", "OptimizeSize", "EnableSSE"
		}
	
	configuration "Debug"
		flags
		{
			"Symbols", "ExtraWarnings", "FatalWarnings"
		}

project "q3asm"
	targetname  "q3asm"
	language    "C"
	kind        "ConsoleApp"
	targetdir   "bin"
	
	files
	{
		"q3asm.c", "cmdlib.c",
	}
