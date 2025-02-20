#!/usr/bin/expect -f

set PASSWORD "1"
set ADDRESS "0x259a13f129172e76ef0de7e730cf6d22c16cfb04efcdd53fded5222a8fcdb852"
# ------------------------------------------------------------------------------------------

# 10_000_000 TestSupra Mint (8 decimal)
spawn supra-old move tool run --function-id 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::mint_coin --type-args 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::TestSupra --args address:$ADDRESS u64:1000000000000000 --profile testnet-token
expect "Enter your password:"
send "$PASSWORD\r"
interact

# 1_000_000 BTC Mint (8 decimal)
spawn supra-old move tool run --function-id 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::mint_coin --type-args 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::BTC --args address:$ADDRESS u64:100000000000000 --profile testnet-token
expect "Enter your password:"
send "$PASSWORD\r"
interact

# 1_000_000 ETH Mint (9 decimal)
spawn supra-old move tool run --function-id 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::mint_coin --type-args 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::ETH --args address:$ADDRESS u64:1000000000000000 --profile testnet-token
expect "Enter your password:"
send "$PASSWORD\r"
interact

# 1_000_000 SOL Mint (9 decimal)
spawn supra-old move tool run --function-id 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::mint_coin --type-args 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::SOL --args address:$ADDRESS u64:1000000000000000 --profile testnet-token
expect "Enter your password:"
send "$PASSWORD\r"
interact

# 1_000_000 DOGE Mint (8 decimal)
spawn supra-old move tool run --function-id 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::mint_coin --type-args 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::DOGE --args address:$ADDRESS u64:100000000000000 --profile testnet-token
expect "Enter your password:"
send "$PASSWORD\r"
interact

# 10_000_000 USDT Mint (6 decimal)
spawn supra-old move tool run --function-id 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::mint_coin --type-args 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::USDT --args address:$ADDRESS u64:10000000000000 --profile testnet-token
expect "Enter your password:"
send "$PASSWORD\r"
interact

# 1_000_000 XRP Mint (9 decimal)
spawn supra-old move tool run --function-id 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::mint_coin --type-args 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::XRP --args address:$ADDRESS u64:1000000000000000 --profile testnet-token
expect "Enter your password:"
send "$PASSWORD\r"
interact

# 1_000_000 BNB Mint (9 decimal)
spawn supra-old move tool run --function-id 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::mint_coin --type-args 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::BNB --args address:$ADDRESS u64:1000000000000000 --profile testnet-token
expect "Enter your password:"
send "$PASSWORD\r"
interact

# 1_000_000 ADA Mint (6 decimal)
spawn supra-old move tool run --function-id 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::mint_coin --type-args 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::ADA --args address:$ADDRESS u64:1000000000000 --profile testnet-token
expect "Enter your password:"
send "$PASSWORD\r"
interact

# 1_000_000 LINK Mint (9 decimal)
spawn supra-old move tool run --function-id 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::mint_coin --type-args 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::LINK --args address:$ADDRESS u64:1000000000000000 --profile testnet-token
expect "Enter your password:"
send "$PASSWORD\r"
interact

# 1_000_000 AVAX Mint (9 decimal)
spawn supra-old move tool run --function-id 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::mint_coin --type-args 0xe5ae87f5c4bbe2c324bba7c498e32aae3f314a455b5caa84677e1160a29e8fdc::coins::AVAX --args address:$ADDRESS u64:1000000000000000 --profile testnet-token
expect "Enter your password:"
send "$PASSWORD\r"
interact