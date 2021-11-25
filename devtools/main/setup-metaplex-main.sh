# echo "[INFO] Cleaning older cache folder for metaplex"
# rm -rf ./.cache/mainnet-beta-temp
echo "[INFO] Uploading all resources"
cat ~/.config/solana/candyfactory-mainnet.json
ts-node ~/metaplex-foundation/metaplex/js/packages/cli/src/candy-machine-cli.ts upload ./nfts-sources --env mainnet-beta --keypair ~/.config/solana/candyfactory-mainnet.json
echo "[INFO] Creating candy machine"
cat ~/.config/solana/candyfactory-mainnet.json
ts-node ~/metaplex-foundation/metaplex/js/packages/cli/src/candy-machine-cli.ts create_candy_machine --env mainnet-beta --keypair ~/.config/solana/candyfactory-mainnet.json --price 1 > ./logs/main/candy-machine-log.txt
echo "[INFO] Setting minting start date (goLiveDate)"
cat ~/.config/solana/candyfactory-mainnet.json
ts-node ~/metaplex-foundation/metaplex/js/packages/cli/src/candy-machine-cli.ts update_candy_machine -d "25 Sep 2021 00:00:00 UTC" --env mainnet-beta --keypair ~/.config/solana/candyfactory-mainnet.json > ./logs/main/candy-machine-start-date.txt
