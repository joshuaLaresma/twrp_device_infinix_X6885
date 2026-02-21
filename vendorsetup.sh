#!/bin/bash

# --- COLOR PALETTE ---
RED='\033[1;31m'
D_RED='\033[0;31m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
GRAY='\033[0;90m'
PURPLE='\033[1;35m'
NC='\033[0m'

# --- ELEGANT ANIMATION FUNCTIONS ---

fade_wipe() {
    local color="$1"
    local dim_color="$2"
    shift 2
    local lines=("$@")

    for line in "${lines[@]}"; do
        echo -e "${dim_color}${line}${NC}"
        sleep 0.05
    done
    echo -ne "\033[$((${#lines[@]}))A"
    for line in "${lines[@]}"; do
        echo -e "${color}${line}${NC}"
        sleep 0.02
    done
}

slide_header() {
    local color="$1"
    shift
    local lines=("$@")
    for line in "${lines[@]}"; do
        echo -ne "${color}"
        for ((i=0; i<${#line}; i++)); do
            echo -ne "${line:$i:1}"
            sleep 0.002
        done
        echo -e "${NC}"
    done
}

typewriter() {
    local text="$1"
    for ((i=0; i<${#text}; i++)); do
        echo -ne "${text:$i:1}"
        sleep 0.02
    done
}

clear

# --- HEADER 1: GRAYRAVENS ---
G_HEADER=(
" ██████╗ ██████╗  █████╗ ██╗   ██╗██████╗  █████╗ ██╗   ██╗███████╗███╗   ██╗"
"██╔════╝ ██╔══██╗██╔══██╗╚██╗ ██╔╝██╔══██╗██╔══██╗██║   ██║██╔════╝████╗  ██║"
"██║  ███╗██████╔╝███████║ ╚████╔╝ ██████╔╝███████║██║   ██║█████╗  ██╔██╗ ██║"
"██║   ██║██╔══██╗██╔══██║  ╚██╔╝  ██╔══██╗██╔══██║╚██╗ ██╔╝██╔══╝  ██║╚██╗██║"
"╚██████╔╝██║  ██║██║  ██║   ██║   ██║  ██║██║  ██║ ╚████╔╝ ███████╗██║ ╚████║"
" ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═══╝"
"                          P  R  O  J  E  C  T    T  E  A  M                  "
)
fade_wipe "${RED}" "${D_RED}" "${G_HEADER[@]}"

echo ""

# --- HEADER 2: SHADOWBYTE PJKT ---
S_HEADER=(
"███████╗██╗  ██╗ █████╗ ██████╗  ██████╗ ██╗     ██╗██████╗ ██╗   ██╗████████╗███████╗"
"██╔════╝██║  ██║██╔══██╗██╔══██╗██╔═══██╗██║     ██║██╔══██╗╚██╗ ██╔╝╚══██╔══╝██╔════╝"
"███████╗███████║███████║██║  ██║██║   ██║██║ █╗ ██║ ██████╔╝ ╚████╔╝    ██║   █████╗  "
"╚════██║██╔══██║██╔══██║██║  ██║██║   ██║██║███╗██║ ██╔══██╗  ╚██╔╝     ██║   ██╔══╝  "
"███████║██║  ██║██║  ██║██████╔╝╚██████╔╝╚███╔███╔╝ ██████╔╝   ██║      ██║   ███████║"
"╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝  ╚══╝╚══╝  ╚═════╝    ╚═╝      ╚═╝   ╚══════╝"
"                          P  R  O  J  E  C  T    N  O  D  E                  "
)
slide_header "${WHITE}" "${S_HEADER[@]}"

# --- SYSTEM TELEMETRY ---
CORES=$(nproc --all)
MEM=$(free -h | awk '/^Mem:/ {print $2}')

echo -e "\n${GRAY}─────────────────────────────────────────────────────────────────────────────────────────${NC}"
printf "${RED}» OPERATOR:${NC} %-19s ${CYAN}» NODE:${NC} %-19s ${WHITE}» STATUS:${NC} ONLINE\n" "XTENSEI" "ShadowbytePjkt"
printf "${RED}» TARGET:${NC}   %-19s ${CYAN}» BRANCH:${NC} %-19s ${WHITE}» ARCH:${NC}   ARM64\n" "INFINIX-X6885" "PBRP-12.1"
printf "${RED}» CPU CORES:${NC} %-18s ${CYAN}» RAM:${NC} %-20s\n" "$CORES" "$MEM"
echo -e "${GRAY}─────────────────────────────────────────────────────────────────────────────────────────${NC}\n"

# --- DEVICE HEADER (INFINIX ONLY) ---
I_HEADER=(
"██╗███╗   ██╗███████╗██╗███╗   ██╗██╗██╗  ██╗"
"██║████╗  ██║██╔════╝██║████╗  ██║██║╚██╗██╔╝"
"██║██╔██╗ ██║█████╗  ██║██╔██╗ ██║██║ ╚███╔╝ "
"██║██║╚██╗██║██╔══╝  ██║██║╚██╗██║██║ ██╔██╗ "
"██║██║ ╚████║██║     ██║██║ ╚████║██║██╔╝ ██╗"
"╚═╝╚═╝  ╚═══╝╚═╝     ╚═╝╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝"
)
slide_header "${CYAN}" "${I_HEADER[@]}"

# --- TARGET IDENTIFIER ---
echo -e "${WHITE}PROJECT NODE | TARGET : X6885${NC}"
echo -e "${GRAY}─────────────────────────────${NC}"

# --- PBRP HEADER ---
P_HEADER=(
"██████╗ ██████╗ ██████╗ ██████╗       ██╗██████╗      ██╗"
"██╔══██╗██╔══██╗██╔══██╗██╔══██╗     ███║╚════██╗    ███║"
"██████╔╝██████╔╝██████╔╝██████╔╝     ╚██║ █████╔╝    ╚██║"
"██╔═══╝ ██╔══██╗██╔══██╗██╔═══╝       ██║██╔═══╝      ██║"
"██║     ██████╔╝██║  ██║██║           ██║███████╗ ██╗ ██║"
"╚═╝     ╚═════╝ ╚═╝  ╚═╝╚═╝           ╚═╝╚══════╝ ╚═╝ ╚═╝"
)
slide_header "${PURPLE}" "${P_HEADER[@]}"

echo -e "\n${WHITE}[ PROJECT METADATA ]${NC}"
echo -e "${GRAY}┌───────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -ne "  ${RED}■${NC} ${WHITE}REPOSITORY:${NC} " && typewriter "https://github.com/XTENSEI/twrp_device_infinix_X6885.git" && echo ""
echo -ne "  ${RED}■${NC} ${WHITE}TEAM:${NC}         " && typewriter "#GRAYRAVENSTEAM x ShadowBytePrjkt" && echo ""
echo -ne "  ${CYAN}■${NC} ${WHITE}NOTICE:${NC}     " && typewriter "This is ShadowbytePrjkt " && echo ""
echo -e "${GRAY}└───────────────────────────────────────────────────────────────────────────────────────┘${NC}"

echo -ne "\n      ${WHITE}\" "
typewriter "Compiled In Silence, Released Among the Stars"
echo -e " \"${NC}\n"

echo -e "${RED}WITNESS ShadowbytePrjkt${NC}"
