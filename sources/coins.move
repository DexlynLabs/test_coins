module test_coins::coins {
    use std::signer;
    use std::string::utf8;
    use supra_framework::coin::{Self, MintCapability, BurnCapability};

    use supra_framework::supra_account;

    /// Represents test USDC coin.
    struct USDC {}

    /// Represents test BTC coin.
    struct BTC {}

    /// Represents test ETH coin.
    struct ETH {}

    /// Represents test SOL coin.
    struct SOL {}

    /// Represents test DOGE coin.
    struct DOGE {}

    /// Storing mint/burn capabilities for coins under user account.
    struct Caps<phantom CoinType> has key {
        mint: MintCapability<CoinType>,
        burn: BurnCapability<CoinType>,
    }

    /// Initialize module at the time of contract deployment
    fun init_module(token_admin: &signer) {
        register_coins(token_admin);
    }

    /// Initializes All above coins.
    public entry fun register_coins(token_admin: &signer) {
        let (usdc_b, usdc_f, usdc_m) =
            coin::initialize<USDC>(token_admin,
                utf8(b"USD Coin"), utf8(b"USDC"), 6, true);

        let (btc_b, btc_f, btc_m) =
            coin::initialize<BTC>(token_admin,
                utf8(b"Bitcoin"), utf8(b"BTC"), 8, true);

        let (eth_b, eth_f, eth_m) =
            coin::initialize<ETH>(token_admin,
                utf8(b"Ethereum"), utf8(b"ETH"), 9, true);

        let (sol_b, sol_f, sol_m) =
            coin::initialize<SOL>(token_admin,
                utf8(b"Solana"), utf8(b"SOL"), 9, true);

        let (doge_b, doge_f, doge_m) =
            coin::initialize<DOGE>(token_admin,
                utf8(b"Tether"), utf8(b"DOGE"), 8, true);

        coin::destroy_freeze_cap(usdc_f);
        coin::destroy_freeze_cap(btc_f);
        coin::destroy_freeze_cap(eth_f);
        coin::destroy_freeze_cap(sol_f);
        coin::destroy_freeze_cap(doge_f);

        move_to(token_admin, Caps<USDC> { mint: usdc_m, burn: usdc_b });
        move_to(token_admin, Caps<BTC> { mint: btc_m, burn: btc_b });
        move_to(token_admin, Caps<ETH> { mint: eth_m, burn: eth_b });
        move_to(token_admin, Caps<SOL> { mint: sol_m, burn: sol_b });
        move_to(token_admin, Caps<DOGE> { mint: doge_m, burn: doge_b });
    }

    /// Mints new coin `CoinType` on account `acc_addr`.
    public entry fun mint_coin<CoinType>(token_admin: &signer, acc_addr: address, amount: u64) acquires Caps {
        let token_admin_addr = signer::address_of(token_admin);
        let caps = borrow_global<Caps<CoinType>>(token_admin_addr);
        let coins = coin::mint<CoinType>(amount, &caps.mint);
        supra_account::deposit_coins<CoinType>(acc_addr, coins);
    }

    // TODO : Provide mint functionality for user, (faucet collect)
}