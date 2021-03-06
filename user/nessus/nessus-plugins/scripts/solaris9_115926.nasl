#
# (C) Tenable Network Security
#
#

if ( ! defined_func("bn_random") ) exit(0);
if(description)
{
 script_id(13568);
 script_version ("$Revision: 1.3 $");
 name["english"] = "Solaris 9 (sparc) : 115926-08";
 
 script_name(english:name["english"]);
 
 desc["english"] = "
The remote host is missing Sun Security Patch number 115926-08
( NSPR 4.1.6 / NSS 3.3.10 / JSS 3.1.3).

You should install this patch for your system to be up-to-date.

Solution : http://sunsolve.sun.com/pub-cgi/findPatch.pl?patchId=115926&rev=08
Risk factor : High";


 script_description(english:desc["english"]);
 
 summary["english"] = "Check for patch 115926-08"; 
 script_summary(english:summary["english"]);
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2004 Tenable Network Security");
 family["english"] = "Solaris Local Security Checks";
 script_family(english:family["english"]);
 
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Solaris/showrev");
 exit(0);
}



include("solaris.inc");

e =  solaris_check_patch(release:"5.9", arch:"sparc", patch:"115926-08", obsoleted_by:"117724-10", package:"SUNWjss SUNWjssx SUNWpr SUNWprx SUNWtls SUNWtlsu SUNWtlsx");

if ( e < 0 ) security_hole(0);
