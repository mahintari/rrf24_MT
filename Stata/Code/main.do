/*******************************************************************************
							Template Main do-file							   
*******************************************************************************/

	* Set version
	version 18

	
	* Add file paths to DataWork folder and the Github folder for RRF2024
	if "`c(username)'" == "wb576945" {
        global onedrive "C:\Users\wb576945\OneDrive - WBG\rrf2024\DataWork"
		global github 	"C:\WBG\github\rrf24_MT"
    }
	
	
	* Set globals for sub-folders 
	global data 	"${onedrive}/Data"
	global code 	"${github}/Stata/Code"
	global outputs 	"${github}/Stata/Outputs"
	
	sysdir set PLUS "${code}/ado"


	/* Install packages 
	local user_commands	ietoolkit iefieldkit winsor sumstats estout keeporder grc1leg2 //Add required user-written commands

	foreach command of local user_commands {
	   capture which `command'
	   if _rc == 111 {
		   ssc install `command'
	   }
	}
	*/

	* Run do files 
	* Switch to 0/1 to not-run/run do-files 
	if (1) do "${code}/01-processing-data.do"


* End of do-file!	