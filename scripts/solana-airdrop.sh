# get
read -p "Enter your Solana address: " address

# send solana to it
solana airdrop 1000 $address
