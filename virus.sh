#!/bin/bash
# ============================================================
#  Linux Test "Virus" - Harmless Terminal Prank Script
#  Author: vchilina27-design
#  
#  THIS IS NOT A REAL VIRUS. It is a harmless prank script
#  that creates chaos in the terminal (visual effects only).
#  No files are deleted, no system settings are changed.
#  
#  Secret stop command: type "Virus-stop" to end the prank.
# ============================================================

set -e

# ---- Configuration ----
STOP_COMMAND="Virus-stop"
LOCKFILE="/tmp/.prank_virus_running"

# ---- Colors & Effects ----
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
BLINK='\033[5m'
BOLD='\033[1m'
RESET='\033[0m'

COLORS=("$RED" "$GREEN" "$YELLOW" "$BLUE" "$MAGENTA" "$CYAN" "$WHITE")

# ---- Scary Messages ----
MESSAGES=(
    "SYSTEM BREACH DETECTED..."
    "Uploading your browser history to the cloud..."
    "Encrypting all cat photos... just kidding"
    "Initializing chaos protocol v6.66..."
    "ERROR: Too many secrets found on this machine"
    "WARNING: Coffee levels critically low"
    "Downloading more RAM... please wait"
    "Deleting System32... oh wait, this is Linux"
    "Replacing all fonts with Comic Sans..."
    "Installing Windows Vista... jk jk"
    "Sending your search history to your mom..."
    "Converting all files to .txt... NOT"
    "CRITICAL: Keyboard not found. Press F1 to continue"
    "Swapping Ctrl and Caps Lock... forever"
    "Your CPU is now mining compliments for strangers"
    "Rerouting all traffic through a potato server..."
    "ERROR 418: I'm a teapot"
    "Activating self-destruct sequence in 3... 2... just kidding"
    "ALERT: Someone is watching you type... it's me"
    "Compiling your excuses... compilation failed"
    "Injecting memes into kernel space..."
    "WARNING: Disk space replaced with disk race"
    "Converting terminal to MS Paint mode..."
    "Loading virus.exe... wait, wrong OS"
    "ACCESS GRANTED: Level 99 Hacker Mode"
    "Reversing gravity on all your files..."
    "FATAL: Humor module overloaded"
    "Scanning for embarrassing files... found 9999"
    "Deploying digital confetti..."
    "Your terminal is now sentient. Run."
)

# ---- Fake Progress Bars ----
TASKS=(
    "Hacking mainframe"
    "Bypassing firewall"
    "Decrypting passwords"
    "Uploading data"
    "Scanning network"
    "Injecting payload"
    "Erasing tracks"
    "Compiling chaos"
    "Deploying agents"
    "Cracking encryption"
)

# ---- ASCII Art ----
show_skull() {
    local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
    echo -e "${color}"
    cat << 'SKULL'
     ______
    /      \
   /  x  x  \
  |    __    |
  |   /  \   |
   \  \__/  /
    \______/
   /|      |\
  / |      | \
 /  |      |  \
    |______|
    |  ||  |
    |  ||  |
    |__||__|
SKULL
    echo -e "${RESET}"
}

show_warning() {
    local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
    echo -e "${color}"
    cat << 'WARN'
    /\  /\  /\
   /  \/  \/  \
  / /\  /\  /\ \
 / /  \/  \/  \ \
 \ \  /\  /\  / /
  \ \/  \/  \/ /
   \  /\  /\  /
    \/  \/  \/
  !! VIRUS ACTIVE !!
WARN
    echo -e "${RESET}"
}

show_bug() {
    local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
    echo -e "${color}"
    cat << 'BUG'
        _         _
       | \       / |
        \ \     / /
    /\   \ \   / /   /\
   /  \   \ \_/ /   /  \
  / /\ \   \   /   / /\ \
 | |  \ \  |o_o|  / /  | |
 | |   \ \_/   \_/ /   | |
 | |    \/  BUG  \/    | |
  \ \   /  _   _  \   / /
   \ \ |  | | | |  | / /
    \_\|  |_| |_|  |/_/
        \_______/
BUG
    echo -e "${RESET}"
}

# ---- Helper Functions ----
random_sleep() {
    local ms=$((RANDOM % 400 + 50))
    sleep "0.${ms}"
}

short_sleep() {
    sleep "0.$((RANDOM % 200 + 30))"
}

get_term_size() {
    TERM_LINES=$(tput lines 2>/dev/null || echo 24)
    TERM_COLS=$(tput cols 2>/dev/null || echo 80)
}

random_color() {
    echo -e "${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
}

# ---- Chaos Effects ----

# Effect 1: Matrix-style rain
matrix_rain() {
    get_term_size
    local chars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@#$%&*!?"
    for _ in $(seq 1 $((RANDOM % 30 + 20))); do
        local col=$((RANDOM % TERM_COLS))
        local row=$((RANDOM % TERM_LINES))
        local char="${chars:$((RANDOM % ${#chars})):1}"
        local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
        printf "\033[%d;%dH${color}%s${RESET}" "$row" "$col" "$char"
        short_sleep
    done
}

# Effect 2: Fake system messages
fake_system_messages() {
    for _ in $(seq 1 $((RANDOM % 5 + 3))); do
        local msg="${MESSAGES[$((RANDOM % ${#MESSAGES[@]}))]}"
        local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
        echo -e "${color}${BOLD}[$(date '+%H:%M:%S')] ${msg}${RESET}"
        random_sleep
    done
}

# Effect 3: Fake progress bar
fake_progress() {
    local task="${TASKS[$((RANDOM % ${#TASKS[@]}))]}"
    local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
    echo -ne "${color}${BOLD}${task}: ["
    local width=$((RANDOM % 30 + 20))
    for i in $(seq 1 "$width"); do
        echo -ne "#"
        sleep 0.02
    done
    local pct=$((RANDOM % 30 + 70))
    echo -e "] ${pct}%${RESET}"
}

# Effect 4: Glitch text
glitch_text() {
    local text="${MESSAGES[$((RANDOM % ${#MESSAGES[@]}))]}"
    local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
    for ((i = 0; i < ${#text}; i++)); do
        if ((RANDOM % 4 == 0)); then
            local glitch_chars="@#$%&*!?/\\|~^"
            echo -ne "${RED}${glitch_chars:$((RANDOM % ${#glitch_chars})):1}"
        else
            echo -ne "${color}${text:$i:1}"
        fi
    done
    echo -e "${RESET}"
}

# Effect 5: Screen shake simulation
screen_shake() {
    get_term_size
    for _ in $(seq 1 $((RANDOM % 10 + 5))); do
        local offset=$((RANDOM % 5))
        printf "%${offset}s" ""
        local msg="${MESSAGES[$((RANDOM % ${#MESSAGES[@]}))]}"
        local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
        echo -e "${color}${msg}${RESET}"
        sleep 0.05
    done
}

# Effect 6: Countdown (fake threat)
fake_countdown() {
    local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
    echo -e "${color}${BOLD}${BLINK}"
    echo "!! SYSTEM SELF-DESTRUCT INITIATED !!"
    echo -e "${RESET}"
    for i in $(seq $((RANDOM % 5 + 3)) -1 1); do
        echo -e "${RED}${BOLD}  T-minus ${i}...${RESET}"
        sleep 0.5
    done
    echo -e "${GREEN}${BOLD}  ...just kidding! :)${RESET}"
    echo ""
}

# Effect 7: Random characters flood
char_flood() {
    local chars="!@#\$%^&*()_+-=[]{}|;:,.<>?/~\`ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    for _ in $(seq 1 $((RANDOM % 200 + 100))); do
        local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
        local char="${chars:$((RANDOM % ${#chars})):1}"
        echo -ne "${color}${char}"
    done
    echo -e "${RESET}"
}

# Effect 8: Typing simulation of "hacking"
hacker_typing() {
    local lines=(
        "root@target:~# cat /etc/shadow"
        "root@target:~# SELECT * FROM users WHERE admin=1;"
        "root@target:~# nmap -sS -O 192.168.1.0/24"
        "root@target:~# ssh root@mainframe -p 4444"
        "root@target:~# python3 exploit.py --target=$(hostname)"
        "root@target:~# curl http://totally-not-suspicious.com/payload"
        "root@target:~# chmod 777 / --recursive   # jk"
        "root@target:~# echo 'You have been pranked!'"
    )
    local line="${lines[$((RANDOM % ${#lines[@]}))]}"
    local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
    echo -ne "${color}"
    for ((i = 0; i < ${#line}; i++)); do
        echo -ne "${line:$i:1}"
        sleep 0.03
    done
    echo -e "${RESET}"
}

# Effect 9: Fake file listing
fake_file_scan() {
    local dirs=("/etc/secrets" "/home/user/.hidden" "/var/lib/passwords" "/root/.ssh" "/tmp/.cache/secrets" "/opt/classified")
    local files=("passwords.txt" "credit_cards.csv" "secret_plans.doc" "browser_history.db" "embarrassing_photos.zip" "diary.txt")
    local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
    echo -e "${color}${BOLD}[SCANNER] Found sensitive files:${RESET}"
    for _ in $(seq 1 $((RANDOM % 4 + 2))); do
        local dir="${dirs[$((RANDOM % ${#dirs[@]}))]}"
        local file="${files[$((RANDOM % ${#files[@]}))]}"
        echo -e "${YELLOW}  -> ${dir}/${file} ($(( RANDOM % 9000 + 1000 ))KB)${RESET}"
        sleep 0.15
    done
}

# Effect 10: Big warning banner
big_warning() {
    local color="${COLORS[$((RANDOM % ${#COLORS[@]}))]}"
    echo -e "${color}${BOLD}"
    echo "  ##############################################"
    echo "  #                                            #"
    echo "  #         !!! VIRUS ACTIVATED !!!            #"
    echo "  #                                            #"
    echo "  #    Your terminal is under our control      #"
    echo "  #    All your base are belong to us          #"
    echo "  #                                            #"
    echo "  #    (type the secret code to stop)          #"
    echo "  #                                            #"
    echo "  ##############################################"
    echo -e "${RESET}"
}

# ---- Listener for stop command ----
check_stop_command() {
    if [[ -f "$LOCKFILE" ]]; then
        local content
        content=$(cat "$LOCKFILE" 2>/dev/null)
        if [[ "$content" == "STOP" ]]; then
            return 0
        fi
    fi
    return 1
}

# Background input listener
start_input_listener() {
    (
        while true; do
            read -r -s -t 1 input 2>/dev/null || continue
            if [[ "$input" == "$STOP_COMMAND" ]]; then
                echo "STOP" > "$LOCKFILE"
                break
            fi
        done
    ) &
    INPUT_PID=$!
}

# ---- Cleanup ----
cleanup() {
    # Kill background input listener
    if [[ -n "${INPUT_PID:-}" ]]; then
        kill "$INPUT_PID" 2>/dev/null || true
        wait "$INPUT_PID" 2>/dev/null || true
    fi
    # Remove lockfile
    rm -f "$LOCKFILE"
    # Reset terminal
    tput sgr0 2>/dev/null || true
    tput cnorm 2>/dev/null || true
    clear
    echo ""
    echo -e "${GREEN}${BOLD}"
    cat << 'STOPPED'
  ================================================
  |                                              |
  |          VIRUS SUCCESSFULLY STOPPED          |
  |                                              |
  |    It was just a prank! No harm done :)      |
  |    Your system is completely fine.            |
  |    No files were modified or deleted.         |
  |                                              |
  ================================================
STOPPED
    echo -e "${RESET}"
    echo ""
}

# ---- Main ----
main() {
    # Trap signals for clean exit
    trap cleanup EXIT INT TERM

    # Initialize lockfile
    echo "RUNNING" > "$LOCKFILE"

    # Hide cursor
    tput civis 2>/dev/null || true

    # Clear screen
    clear

    # Start input listener in background
    start_input_listener

    # Initial dramatic entrance
    echo ""
    big_warning
    sleep 1
    show_skull
    sleep 0.5

    echo -e "${RED}${BOLD}${BLINK}"
    echo "  >>> VIRUS ACTIVATED <<<"
    echo "  >>> TYPE THE SECRET CODE TO STOP <<<"
    echo -e "${RESET}"
    sleep 1

    # All available effects
    local effects=(
        matrix_rain
        fake_system_messages
        fake_progress
        glitch_text
        screen_shake
        fake_countdown
        char_flood
        hacker_typing
        fake_file_scan
        big_warning
        show_skull
        show_warning
        show_bug
    )

    # Main chaos loop
    while true; do
        # Check if stop command was entered
        if check_stop_command; then
            break
        fi

        # Pick a random effect
        local effect="${effects[$((RANDOM % ${#effects[@]}))]}"
        $effect

        # Random pause between effects
        sleep "0.$((RANDOM % 500 + 100))"

        # Also check stop between effects
        if check_stop_command; then
            break
        fi
    done
}

# Run the prank!
main "$@"
