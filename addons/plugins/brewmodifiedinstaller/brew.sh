# Define color variables
GREEN="\033[1;32m"
RED="\033[1;31m"
BLUE="\033[1;34m"
YELLOW="\033[1;33m"
CYAN="\033[1;36m"
RESET="\033[0m"

brew() {
    if [[ $1 == "install" ]]; then
        if command brew install "$2"; then
            echo -e "${GREEN}✨ $2 installed successfully! ${RESET}"
            echo -e "${BLUE}Where do you want to add $2? ${RESET}"
            echo -e "${YELLOW}1${RESET}: ${CYAN}tool${RESET}"
            echo -e "${YELLOW}2${RESET}: ${CYAN}lib${RESET}"
            echo -e "${YELLOW}3${RESET}: ${CYAN}other${RESET}"
            echo -e "${YELLOW}n${RESET}: ${CYAN}none${RESET}"
            echo -n "Enter your choice: "
            read option

            case $option in
                1)
                    echo "$2" >> ~/.config/requirements/toollist.txt
                    echo -e "${GREEN}✔️ $2 added to toollist 👍${RESET}"
                    ;;
                2)
                    echo "$2" >> ~/.config/requirements/liblist.txt
                    echo -e "${GREEN}✔️ $2 added to liblist 👍${RESET}"
                    ;;
                3)
                    echo -n "Specify the type for $2: "
                    read type
                    echo "$2" >> "$~/.config/requirements/{type}list.txt"
                    echo -e "${GREEN}✔️ $2 added to ${type}list 👍${RESET}"
                    ;;
                n|N)
                    echo -e "${RED}❌ $2 not added to any list.${RESET}"
                    ;;
                *)
                    echo -e "${RED}❌ Invalid option. $2 not added to any list.${RESET}"
                    ;;
            esac
        else
            echo -e "${RED}❌ brew install $2 failed. Package may not be found or another error occurred.${RESET}"
        fi
    else
        command brew "$@"
    fi
}
