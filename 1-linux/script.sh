#!/bin/bash

# Function to check if script is executed with appropriate privileges
check_privileges() {
    if [ "$(id -u)" != "0" ]; then
        echo "Error: This script must be run as root."
        exit 1
    fi
}

# Function to print the home directory
print_home_directory() {
    echo "Home Directory: $HOME"
}

# Function to list all usernames from the passwd file
list_usernames() {
    echo -e "\nList of Usernames:"
    cut -d: -f1 /etc/passwd
}

# Function to count the number of users
count_users() {
    user_count=$(grep -c "/bin/bash\|/bin/sh" /etc/passwd)
    echo -e "\nNumber of Users: $user_count"
}

# Function to find the home directory of a specific user
find_home_directory() {
    read -p "Enter username to find home directory: " username
    home_dir=$(grep "^$username:" /etc/passwd | cut -d: -f6)
    echo "Home directory of $username: $home_dir"
}

# Function to list users with specific UID range
list_users_by_uid_range() {
    read -p "Enter UID range (e.g., 1000-1010): " uid_range
    echo -e "\nUsers within UID range $uid_range:"
    while IFS=: read -r user _ uid _; do
        if [ "$uid" -ge "$(echo "$uid_range" | cut -d- -f1)" ] && [ "$uid" -le "$(echo "$uid_range" | cut -d- -f2)" ]; then
            echo "$user"
        fi
    done < /etc/passwd
}

# Function to find users with standard shells like /bin/bash or /bin/sh
find_users_with_standard_shells() {
    echo -e "\nUsers with standard shells (/bin/bash or /bin/sh):"
    grep -E "/bin/bash|/bin/sh" /etc/passwd | cut -d: -f1
}

# Function to replace "/" character with "\" character in /etc/passwd file
replace_slash_with_backslash() {
    sed 's/\//\\/g' /etc/passwd > /tmp/passwd_modified
    echo -e "\n/etc/passwd file with '/' replaced by '\': /tmp/passwd_modified"
}

# Function to print the private IP
print_private_ip() {
    private_ip=$(hostname -I)
    echo -e "\nPrivate IP: $private_ip"
}

# Function to print the public IP
print_public_ip() {
    public_ip=$(curl -s ifconfig.me)
    echo -e "\nPublic IP: $public_ip"
}

# Function to switch to john user and print home directory
switch_to_john_user() {
    su - john -c "echo 'Switched to user john'"
    echo -e "\nHome Directory of John: $(grep "^john:" /etc/passwd | cut -d: -f6)"
}

# Main function
main() {
    check_privileges
    print_home_directory
    list_usernames
    count_users
    find_home_directory
    list_users_by_uid_range
    find_users_with_standard_shells
    replace_slash_with_backslash
    print_private_ip
    print_public_ip
    switch_to_john_user
}

# Execute main function
main
