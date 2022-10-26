# Program id

programId=$(bash ./getProgramId.sh)

# Update Anchor.toml
echo '[programs.localnet]
mysolanaapp = "'${programId}'"

[registry]
url = "https://anchor.projectserum.com"

[provider]
cluster = "localnet"
wallet = "/Users/lopez/.config/solana/id.json"

[scripts]
test = "yarn run mocha -t 1000000 tests/"' >./Anchor.toml

echo $programId
