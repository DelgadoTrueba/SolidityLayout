# SolidityLayout
## Dependencias

- nodejs    (v12.16.0)
- npm       (6.13.4)
- docker    (19.03.8)

- truffle       -> npm i -g truffle@5.1.20
- ganachecli    -> npm i -g ganache-cli@6.10.2

## Test

### Entorno Ganache
```bash
ganache-cli --host 0.0.0.0 -p 9545
```

```bash
rm -rf build/contracts/
truffle test --network ganache
```

### Entorno Hyperledger Besu
```bash
docker pull hyperledger/besu:1.4.6
docker run --name besu1 --rm -it -p 8545:8545 hyperledger/besu:1.4.6 --network=dev --miner-enabled --miner-coinbase=0xfe3b557e8fb62b89f4916b721be55ceb828dbd73 --rpc-http-cors-origins='all' --host-whitelist='*' --rpc-ws-enabled --rpc-http-enabled --rpc-http-api='ETH, NET, WEB3, DEBUG' --data-path=/tmp/tmpDatdir
```

```bash
rm -rf build/contracts/
truffle test --network besu
```