#nohup geth --port 8901 --maxpeers 4 --datadir=~/.ethereum_private --bootnodes=enode://3d1a9c48e0ac7e62efddaa98563a6e07284cb35e33702b181c41744d14a8e66920a81be6846b695800b65e3fe57ecd977ec7449d320a5ba9d55ff6bfe3b645a1@172.17.0.1:8901--networkid=1017 &
#enode://93702095e0fe4c38b52e5fca7315a1dde17e72e9a6d7b27afee4f3ee9209b7320e9c42eb235f89ce3048b6eed5981de435322b8b70b69b59603ec80f15518a83@[::]:30301

nohup geth --identity "leonlocal" --rpc --rpcport "8080" --rpccorsdomain "*" --datadir "~/.ether00" --port "30303" --nodiscover --rpcapi "db,eth,net,web3" --networkid 1017 &
