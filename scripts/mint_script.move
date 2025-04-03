// supra-old move tool compile
// supra-old move tool run-script --compiled-script-path ./build/TestCoins/bytecode_scripts/main.mv --profile testnet-token
script {
    use test_coins::coins;
    use test_coins::coins::{USDC, BTC, ETH, SOL, DOGE};
    use supra_framework::vector;

    fun main(owner: &signer) {

        let mint_addresses = vector[

        ];

        vector::for_each(mint_addresses, |min_address| {
            
            coins::mint_coin<USDC>(owner, min_address, 10000000000000000);

            coins::mint_coin<BTC>(owner, min_address, 100000000000000000);

            coins::mint_coin<ETH>(owner, min_address, 1000000000000000000);

            coins::mint_coin<SOL>(owner, min_address, 1000000000000000000);

            coins::mint_coin<DOGE>(owner, min_address, 100000000000000000);
        });
    }
}
