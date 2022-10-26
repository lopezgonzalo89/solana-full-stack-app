# Program id

programId=$(bash ./scripts/getProgramId.sh)

# Update Anchor.toml
sed -i '' -e "s/mysolanaapp = .*/mysolanaapp = \"$programId\"/" ./Anchor.toml

# Update lib.rs
sed -i '' -e "s/declare_id.*/declare_id!(\"$programId\");/" ./programs/mysolanaapp/src/lib.rs

echo $programId
