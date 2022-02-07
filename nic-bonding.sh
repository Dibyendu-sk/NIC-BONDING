echo -e "\e[96m##############################################---for bond interface---#################################################################\e[0m"

file1=/etc/sysconfig/network-scripts/ifcfg-bond0

if [ -f "$file1" ]
then
        echo -e "\e[1;96mThe file already exist.\e[0m"
else
        touch $file1
        arr1=(DEVICE TYPE NAME BONDING_MASTER BOOTPROTO ONBOOT IPADDR NETMASK GATEWAY BONDING_OPTS)
        n=`echo ${#arr1[@]}`

        a=0
        # -lt is less than operator

        file1=/etc/sysconfig/network-scripts/ifcfg-bond0
        line1=`wc -l $file1 | awk '{print $1}'`

        if [[ $line1 == 0 ]]
        then
                echo -e "\e[1;100mEnter the configuration for $file1\e[0m"
                echo
                while [ $a -lt $n ]
                do
                        # Print the values
                        read -p "${arr1[$a]} = " val
                        echo "${arr1[$a]}=$val">>$file1

                        # increment the value
                        a=`expr $a + 1`
                done
                echo -e "\e[1;30;102mfile updated.\e[0m"
        else
                echo -e "\e[1;92mfile is already been updated.\e[0m"

        fi
fi

echo -e "\e[96m####################################################---for slave interface1---#########################################################\e[0m"

file2=/etc/sysconfig/network-scripts/ifcfg-enp0s3

true > $file2 # FOR CLEARING THE CONTENTS OF THE FILE because the file(ifcfg-enp0s3) is already exist and we have to upadate it.

line2=`wc -l $file2 | awk '{print $1}'`

arr2=(TYPE BOOTPROTO DEVICE ONBOOT HWADDR MASTER SLAVE)
n2=`echo ${#arr2[@]}`
b=0

if [[ $line2 == 0 ]]
then
        echo -e "\e[1;100mEnter the configuration for $file2\e[0m"
        echo

        while [ $b -lt $n2 ]
        do
                # Print the values
                read -p "${arr2[$b]} = " val2
                echo "${arr2[$b]}=$val2">>$file2

                # increment the value
                b=`expr $b + 1`
        done
        echo -e "\e[1;30;102mfile updated.\e[0m"
else
        echo -e "\e[1;92mfile is already been updated.\e[0m"

fi

echo -e "\e[96m####################################################---for slave interface2---#########################################################\e[0m"

file3=/etc/sysconfig/network-scripts/ifcfg-enp0s8

if [ -f "$file3" ]
then
        echo -e "\e[1;96mThe file already exist.\e[0m"
else
        touch $file3
        line3=`wc -l $file3 | awk '{print $1}'`

        arr3=(TYPE BOOTPROTO DEVICE ONBOOT HWADDR MASTER SLAVE)
        n3=`echo ${#arr3[@]}`
        c=0

        if [[ $line3 == 0 ]]
        then
                echo -e "\e[1;100mEnter the configuration for $file3\e[0m"
                echo

                while [ $c -lt $n3 ]
                do
                        # Print the values
                        read -p "${arr3[$c]} = " val3
                        echo "${arr3[$c]}=$val3">>$file3

                        # increment the value
                        c=`expr $c + 1`
                done
                echo -e "\e[1;30;102mfile updated.\e[0m"
        else
                echo -e "\e[1;92mfile is already been updated.\e[0m"

        fi
fi

sleep 1
echo -e "\e[1;30;103mConfiguration completed.\e[0m"
sleep 1
echo -e "\e[1;30;106mNow restart your NetworkManager and type ifconfig in terminal to verify.\e[0m"
