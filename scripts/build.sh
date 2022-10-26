echo ''
echo '============================'
echo "INSTALLING NODE DEPENDENCIES"
echo '============================'
$(yarn)

echo ''
echo '=================================='
echo "REMOVED TARGET FOLDER AND BUILDING"
echo '=================================='
rm -rf target
$(anchor build)

echo ''
echo '=================================='
echo "UPDATING PROGRAM ID"
echo '=================================='
$(bash ./updateProgramId.sh)

echo ''
echo '=================================='
echo "RUNNING TESTS"
echo '=================================='
$(anchor test)

echo ''
echo '=================================='
echo "COPYING IDL IN APP FOLDER"
echo '=================================='
$(node copyIdl.js)

echo ''
echo '=================================='
echo "RUNNING SOLANA CHAIN"
echo '=================================='
$(solana-test-validator)
