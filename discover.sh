echo "
 _______ ____  _____      __     ___  _____ 
|__   __/ __ \|  __ \   /\\ \   / ( )/ ____|
   | | | |  | | |  | | /  \\ \_/ /|/| (___  
   | | | |  | | |  | |/ /\ \\   /    \___ \ 
   | | | |__| | |__| / ____ \| |     ____) |
   |_|  \____/|_____/_/    \_\_|    |_____/ 
          _____ _______ 
    /\   |  __ \__   __|
   /  \  | |__) | | |   
  / /\ \ |  _  /  | |   
 / ____ \| | \ \  | |   
/_/    \_\_|  \_\ |_|                                                 
 _______ ______ _____ _    _ _   _ _____ ____  _    _ ______ 
|__   __|  ____/ ____| |  | | \ | |_   _/ __ \| |  | |  ____|
   | |  | |__ | |    | |__| |  \| | | || |  | | |  | | |__   
   | |  |  __|| |    |  __  |   | | | || |  | | |  | |  __|  
   | |  | |___| |____| |  | | |\  |_| || |__| | |__| | |____ 
   |_|  |______\_____|_|  |_|_| \_|_____\___\_\\____/|______|                                     
"

random=$((wikit list of art techniques -a) | python scrape.py) 
found_entry=$(wikit $random -a --link)
if [[ $found_entry == *"not found :^("* ]]; then
  echo "Not found initially with technique keywork"
  suffix=" technique"
  random_wo_tech=${random/%$suffix}
  echo "$(wikit $random_wo_tech -a --link)"
else
  echo "$found_entry"
fi

