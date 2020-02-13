#!/bin/bash
agreed=
while [ -z "${agreed}" ] ; do
    cat << EOF

********************************************************************************
Do you accept the Pivotal Database license agreement? [yes|no]
********************************************************************************

EOF
    read reply leftover
        case $reply in
           [yY] | [yY][eE][sS])
                agreed=1
                ;;
           [nN] | [nN][oO])
                cat << EOF

********************************************************************************
You must accept the license agreement in order to install Greenplum Database
********************************************************************************
                             
                   **************************************** 
                   *          Exiting installer           *
                   **************************************** 

EOF
                exit 1
                ;;
        esac
done

installPath=/usr/local/greenplum-db-5.16.0
defaultinstallPath=${installPath}
user_specified_installPath=

while [ -z "${user_specified_installPath}" ] ; do
	cat <<-EOF
	
		********************************************************************************
		Provide the installation path for Greenplum Database or press ENTER to 
		accept the default installation path: $defaultinstallPath
		********************************************************************************
	
	EOF

    read user_specified_installPath leftover

    if [ -z "${user_specified_installPath}" ] ; then
        user_specified_installPath=${installPath}
    fi

    if [ -n "${leftover}" ] ; then
	    cat <<-EOF
			
			********************************************************************************
			WARNING: Spaces are not allowed in the installation path.  Please specify
			         an installation path without an embedded space.
			********************************************************************************
			
		EOF
        user_specified_installPath=
        continue
    fi

    pathVerification=
	while [ -z "${pathVerification}" ] ; do
	    cat <<-EOF
			
			********************************************************************************
			Install Greenplum Database into ${user_specified_installPath}? [yes|no]
			********************************************************************************
			
		EOF
	
	    read pathVerification leftover
	
	    case $pathVerification in
	        [yY] | [yY][eE][sS])
	            pathVerification=1
                installPath=${user_specified_installPath}
	            ;;
	        [nN] | [nN][oO])
	            user_specified_installPath=
	           ;;
	    esac
	done
done
