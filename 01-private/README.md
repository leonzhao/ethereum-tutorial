### 创建私有链, 挖矿,交易,查询账户

#### 参考资料


**注意**
不能设置chainId 为0

geth --datadir ./data/00 init genesis.json
geth --datadir ./data/01 init genesis.json

```
⚡ leonzhao☯ node# private geth --datadir ./data/00 init genesis.json                                                          
WARN [11-18|13:06:37] No etherbase set and no accounts found as default 
INFO [11-18|13:06:37] Allocated cache and file handles         database=/home/leonzhao/workspace/go/src/github.com/leonzhao/geth-tour/private/data/00/geth/chaindata cache=16 handles=16
INFO [11-18|13:06:37] Writing custom genesis block 
INFO [11-18|13:06:37] Successfully wrote genesis state         database=chaindata                                                                                    hash=8c6e45…eb10f7
INFO [11-18|13:06:37] Allocated cache and file handles         database=/home/leonzhao/workspace/go/src/github.com/leonzhao/geth-tour/private/data/00/geth/lightchaindata cache=16 handles=16
INFO [11-18|13:06:37] Writing custom genesis block 
INFO [11-18|13:06:37] Successfully wrote genesis state         database=lightchaindata                                                                                    hash=8c6e45…eb10f7
⚡ leonzhao☯ node# private geth --datadir ./data/01 init genesis.json
WARN [11-18|13:06:43] No etherbase set and no accounts found as default 
INFO [11-18|13:06:43] Allocated cache and file handles         database=/home/leonzhao/workspace/go/src/github.com/leonzhao/geth-tour/private/data/01/geth/chaindata cache=16 handles=16
INFO [11-18|13:06:43] Writing custom genesis block 
INFO [11-18|13:06:43] Successfully wrote genesis state         database=chaindata                                                                                    hash=8c6e45…eb10f7
INFO [11-18|13:06:43] Allocated cache and file handles         database=/home/leonzhao/workspace/go/src/github.com/leonzhao/geth-tour/private/data/01/geth/lightchaindata cache=16 handles=16
INFO [11-18|13:06:43] Writing custom genesis block 
INFO [11-18|13:06:43] Successfully wrote genesis state         database=lightchaindata             
```

geth --datadir ./data/00 --networkid 19840504 --ipcdisable --port 61910 --rpc --rpcport 8200 console
geth --datadir ./data/01 --networkid 19840504 --ipcdisable --port 61911 --rpc --rpcport 8201 console


```
⚡ leonzhao☯ node# private geth --datadir ./data/00 --networkid 19840504 --ipcdisable --port 61910 --rpc --rpcport 8200 console
WARN [11-18|13:06:53] No etherbase set and no accounts found as default 
INFO [11-18|13:06:53] Starting peer-to-peer node               instance=Geth/v1.7.2-stable-1db4ecdc/linux-amd64/go1.9.2
INFO [11-18|13:06:53] Allocated cache and file handles         database=/home/leonzhao/workspace/go/src/github.com/leonzhao/geth-tour/private/data/00/geth/chaindata cache=128 handles=1024
WARN [11-18|13:06:53] Upgrading database to use lookup entries 
INFO [11-18|13:06:53] Database deduplication successful        deduped=0
INFO [11-18|13:06:53] Initialised chain configuration          config="{ChainID: 1024 Homestead: 0 DAO: <nil> DAOSupport: false EIP150: <nil> EIP155: 0 EIP158: 0 Byzantium: <nil> Engine: unknown}"
INFO [11-18|13:06:53] Disk storage enabled for ethash caches   dir=/home/leonzhao/workspace/go/src/github.com/leonzhao/geth-tour/private/data/00/geth/ethash count=3
INFO [11-18|13:06:53] Disk storage enabled for ethash DAGs     dir=/home/leonzhao/.ethash                                                                    count=2
INFO [11-18|13:06:53] Initialising Ethereum protocol           versions="[63 62]" network=19840504
INFO [11-18|13:06:53] Loaded most recent local header          number=0 hash=8c6e45…eb10f7 td=1024
INFO [11-18|13:06:53] Loaded most recent local full block      number=0 hash=8c6e45…eb10f7 td=1024
INFO [11-18|13:06:53] Loaded most recent local fast block      number=0 hash=8c6e45…eb10f7 td=1024
INFO [11-18|13:06:53] Regenerated local transaction journal    transactions=0 accounts=0
INFO [11-18|13:06:53] Starting P2P networking 
INFO [11-18|13:06:55] UDP listener up                          self=enode://a4b62cd8f505d52e2719922d7c24d0cdfec20dd8b02bfbfd1296c1ee7c48036bd0387f129dec907ffb8fa69975e048a7e00b4d7c4e519d8e6a5e82ac5c3beb11@[::]:61910
INFO [11-18|13:06:55] RLPx listener up                         self=enode://a4b62cd8f505d52e2719922d7c24d0cdfec20dd8b02bfbfd1296c1ee7c48036bd0387f129dec907ffb8fa69975e048a7e00b4d7c4e519d8e6a5e82ac5c3beb11@[::]:61910
INFO [11-18|13:06:55] HTTP endpoint opened: http://127.0.0.1:8200 
Welcome to the Geth JavaScript console!

instance: Geth/v1.7.2-stable-1db4ecdc/linux-amd64/go1.9.2
 modules: admin:1.0 debug:1.0 eth:1.0 miner:1.0 net:1.0 personal:1.0 rpc:1.0 txpool:1.0 web3:1.0

 > personal.newAccount("123456")
 "0x756a14c0e4313935725dd8e1887c08b220d330ec"
 > miner.start()
 INFO [11-18|13:07:30] Updated mining threads                   threads=0
 INFO [11-18|13:07:30] Transaction pool price threshold updated price=18000000000
 null
 > INFO [11-18|13:07:30] Starting mining operation 
 INFO [11-18|13:07:30] Commit new mining work                   number=1 txs=0 uncles=0 elapsed=337.891µs
 INFO [11-18|13:07:31] Successfully sealed new block            number=1 hash=f3e62d…f2c8aa
 INFO [11-18|13:07:31] 🔨 mined potential block                  number=1 hash=f3e62d…f2c8aa
 INFO [11-18|13:07:31] Commit new mining work                   number=2 txs=0 uncles=0 elapsed=147.3µs
 INFO [11-18|13:07:31] Successfully sealed new block            number=2 hash=b520c2…287567
 INFO [11-18|13:07:31] 🔨 mined potential block                  number=2 hash=b520c2…287567
 INFO [11-18|13:07:31] Commit new mining work                   number=3 txs=0 uncles=0 elapsed=135.897µs
 INFO [11-18|13:07:32] Successfully sealed new block            number=3 hash=76bfb0…302503
 INFO [11-18|13:07:32] 🔨 mined potential block                  number=3 hash=76bfb0…302503
 INFO [11-18|13:07:32] Commit new mining work                   number=4 txs=0 uncles=0 elapsed=127.677µs
 INFO [11-18|13:07:33] Successfully sealed new block            number=4 hash=de84fa…39819b
 INFO [11-18|13:07:33] 🔨 mined potential block                  number=4 hash=de84fa…39819b
 INFO [11-18|13:07:33] Commit new mining work                   number=5 txs=0 uncles=0 elapsed=120.167µs
 INFO [11-18|13:07:34] Successfully sealed new block            number=5 hash=c13087…539c38
 INFO [11-18|13:07:34] 🔨 mined potential block                  number=5 hash=c13087…539c38
 INFO [11-18|13:07:34] Commit new mining work                   number=6 txs=0 uncles=0 elapsed=162.379µs
 INFO [11-18|13:07:35] Successfully sealed new block            number=6 hash=2c0519…4e24c4
 INFO [11-18|13:07:35] 🔗 block reached canonical chain          number=1 hash=f3e62d…f2c8aa
 INFO [11-18|13:07:35] 🔨 mined potential block                  number=6 hash=2c0519…4e24c4
 INFO [11-18|13:07:35] Commit new mining work                   number=7 txs=0 uncles=0 elapsed=125.084µs
 INFO [11-18|13:07:36] Successfully sealed new block            number=7 hash=a74291…5dbc13
 INFO [11-18|13:07:36] 🔗 block reached canonical chain          number=2 hash=b520c2…287567
 INFO [11-18|13:07:36] 🔨 mined potential block                  number=7 hash=a74291…5dbc13
 INFO [11-18|13:07:36] Commit new mining work                   number=8 txs=0 uncles=0 elapsed=204.773µs
 INFO [11-18|13:07:36] Successfully sealed new block            number=8 hash=1bf49c…6b0079
 INFO [11-18|13:07:36] 🔗 block reached canonical chain          number=3 hash=76bfb0…302503
 INFO [11-18|13:07:36] 🔨 mined potential block                  number=8 hash=1bf49c…6b0079
 INFO [11-18|13:07:36] Mining too far in the future             wait=2s
 ... ...
 ... ...
 INFO [11-18|13:08:23] 🔨 mined potential block                  number=51 hash=4eb394…0c7743
 INFO [11-18|13:08:23] Commit new mining work                   number=52 txs=0 uncles=0 elapsed=130.771µs
 INFO [11-18|13:08:23] Successfully sealed new block            number=52 hash=d1855e…cfd453
 INFO [11-18|13:08:23] 🔗 block reached canonical chain          number=47 hash=e86300…6e0660
 INFO [11-18|13:08:23] 🔨 mined potential block                  number=52 hash=d1855e…cfd453
 INFO [11-18|13:08:23] Mining too far in the future             wait=2s
 > mineINFO [11-18|13:08:25] Commit new mining work                   number=53 txs=0 uncles=0 elapsed=2.000s
 > miner.INFO [11-18|13:08:26] Successfully sealed new block            number=53 hash=77fc50…e9cb99
 INFO [11-18|13:08:26] 🔗 block reached canonical chain          number=48 hash=2fa1b6…f9cc26
 INFO [11-18|13:08:26] 🔨 mined potential block                  number=53 hash=77fc50…e9cb99
 INFO [11-18|13:08:26] Commit new mining work                   number=54 txs=0 uncles=0 elapsed=136.671µs
 > miner.sINFO [11-18|13:08:26] Successfully sealed new block            number=54 hash=282a91…2b06ad
 INFO [11-18|13:08:26] 🔗 block reached canonical chain          number=49 hash=27a0dc…29cca7
 INFO [11-18|13:08:26] 🔨 mined potential block                  number=54 hash=282a91…2b06ad
 INFO [11-18|13:08:26] Commit new mining work                   number=55 txs=0 uncles=0 elapsed=112.634µs
 > miner.stopINFO [11-18|13:08:27] Successfully sealed new block            number=55 hash=1454d4…8eab7b
 INFO [11-18|13:08:27] 🔗 block reached canonical chain          number=50 hash=f5b81c…527976
 INFO [11-18|13:08:27] 🔨 mined potential block                  number=55 hash=1454d4…8eab7b
 INFO [11-18|13:08:27] Commit new mining work                   number=56 txs=0 uncles=0 elapsed=147.977µs
 INFO [11-18|13:08:27] Successfully sealed new block            number=56 hash=abbe13…7a651b
 INFO [11-18|13:08:27] 🔗 block reached canonical chain          number=51 hash=4eb394…0c7743
 INFO [11-18|13:08:27] 🔨 mined potential block                  number=56 hash=abbe13…7a651b
 INFO [11-18|13:08:27] Mining too far in the future             wait=2s
 > miner.stop()
 INFO [11-18|13:08:29] Commit new mining work                   number=57 txs=0 uncles=0 elapsed=2.000s
 true
 > personal.unlockAccount(eth.accounts[0], "123456")
 true
 > eth.accounts[0]
 "0x756a14c0e4313935725dd8e1887c08b220d330ec"
 > eth.sendTransaction({from: "0x756a14c0e4313935725dd8e1887c08b220d330ec", to: "0x6fc20b5ca2a738d277c11c1992ebdcae29eac176", value: web3.toWei(1, "ether")})
 From: 756a14c0e4313935725dd8e1887c08b220d330ec, Balance: 280000000000000000000
 Cost: 1001620000000000000
 INFO [11-18|13:10:14] Submitted transaction                    fullhash=0x5b0a65e6bcee5e9bbe539ded005035a3946d92b115b6d0395eb213bef813560b recipient=0x6fC20B5cA2A738d277c11C1992ebdCae29Eac176
 "0x5b0a65e6bcee5e9bbe539ded005035a3946d92b115b6d0395eb213bef813560b"
 > miner.start()
 INFO [11-18|13:11:23] Updated mining threads                   threads=0
 INFO [11-18|13:11:23] Transaction pool price threshold updated price=18000000000
 null
 > INFO [11-18|13:11:23] Starting mining operation 
 INFO [11-18|13:11:23] Commit new mining work                   number=57 txs=1 uncles=0 elapsed=1.522ms
 INFO [11-18|13:11:23] Successfully sealed new block            number=57 hash=43169d…7ea1fa
 INFO [11-18|13:11:23] 🔗 block reached canonical chain          number=52 hash=d1855e…cfd453
 INFO [11-18|13:11:23] 🔨 mined potential block                  number=57 hash=43169d…7ea1fa
 INFO [11-18|13:11:23] Commit new mining work                   number=58 txs=0 uncles=0 elapsed=194.931µs
 INFO [11-18|13:11:24] Successfully sealed new block            number=58 hash=737efc…d38dd0
 INFO [11-18|13:11:24] 🔗 block reached canonical chain          number=53 hash=77fc50…e9cb99
 INFO [11-18|13:11:24] 🔨 mined potential block                  number=58 hash=737efc…d38dd0
 INFO [11-18|13:11:24] Commit new mining work                   number=59 txs=0 uncles=0 elapsed=179.064µs
 INFO [11-18|13:11:24] Successfully sealed new block            number=59 hash=c49ef0…4343ff
 INFO [11-18|13:11:24] 🔗 block reached canonical chain          number=54 hash=282a91…2b06ad
 INFO [11-18|13:11:24] 🔨 mined potential block                  number=59 hash=c49ef0…4343ff
 INFO [11-18|13:11:24] Mining too far in the future             wait=2s
 ... ...
 ... ...
 INFO [11-18|13:11:34] 🔨 mined potential block                  number=69 hash=c4faa2…df3506
 INFO [11-18|13:11:34] Mining too far in the future             wait=2s

 > minerINFO [11-18|13:11:36] Commit new mining work                   number=70 txs=0 uncles=0 elapsed=2.000s
 > miner.stopINFO [11-18|13:11:38] Successfully sealed new block            number=70 hash=4692d2…fa093f
 INFO [11-18|13:11:38] 🔗 block reached canonical chain          number=65 hash=039229…2c9314
 INFO [11-18|13:11:38] 🔨 mined potential block                  number=70 hash=4692d2…fa093f
 INFO [11-18|13:11:38] Commit new mining work                   number=71 txs=0 uncles=0 elapsed=150.608µs
 > miner.stop()INFO [11-18|13:11:38] Successfully sealed new block            number=71 hash=423774…4bfb88
 INFO [11-18|13:11:38] 🔗 block reached canonical chain          number=66 hash=95f517…c3a614
 INFO [11-18|13:11:38] 🔨 mined potential block                  number=71 hash=423774…4bfb88
 INFO [11-18|13:11:38] Commit new mining work                   number=72 txs=0 uncles=0 elapsed=148.034µs
 INFO [11-18|13:11:38] Successfully sealed new block            number=72 hash=a22eaa…177cc2
 INFO [11-18|13:11:38] 🔗 block reached canonical chain          number=67 hash=6d04c6…93c9b8
 INFO [11-18|13:11:38] 🔨 mined potential block                  number=72 hash=a22eaa…177cc2
 INFO [11-18|13:11:38] Mining too far in the future             wait=2s

 INFO [11-18|13:11:40] Commit new mining work                   number=73 txs=0 uncles=0 elapsed=2.000s
 true
 > exit
 INFO [11-18|13:57:56] HTTP endpoint closed: http://127.0.0.1:8200 
 INFO [11-18|13:57:56] Blockchain manager stopped 
 INFO [11-18|13:57:56] Stopping Ethereum protocol 
 INFO [11-18|13:57:56] Ethereum protocol stopped 
 INFO [11-18|13:57:56] Transaction pool stopped 
 INFO [11-18|13:57:56] Database closed                          database=/home/leonzhao/workspace/go/src/github.com/leonzhao/geth-tour/private/data/00/geth/chaindata
 ```

```
⚡  leonzhao☯ node# private geth --datadir ./data/01 --networkid 19840504 --ipcdisable --port 61911 --rpc --rpcport 8201 console
WARN [11-18|13:07:01] No etherbase set and no accounts found as default 
INFO [11-18|13:07:01] Starting peer-to-peer node               instance=Geth/v1.7.2-stable-1db4ecdc/linux-amd64/go1.9.2
INFO [11-18|13:07:01] Allocated cache and file handles         database=/home/leonzhao/workspace/go/src/github.com/leonzhao/geth-tour/private/data/01/geth/chaindata cache=128 handles=1024
WARN [11-18|13:07:01] Upgrading database to use lookup entries 
INFO [11-18|13:07:01] Database deduplication successful        deduped=0
INFO [11-18|13:07:01] Initialised chain configuration          config="{ChainID: 1024 Homestead: 0 DAO: <nil> DAOSupport: false EIP150: <nil> EIP155: 0 EIP158: 0 Byzantium: <nil> Engine: unknown}"
INFO [11-18|13:07:01] Disk storage enabled for ethash caches   dir=/home/leonzhao/workspace/go/src/github.com/leonzhao/geth-tour/private/data/01/geth/ethash count=3
INFO [11-18|13:07:01] Disk storage enabled for ethash DAGs     dir=/home/leonzhao/.ethash                                                                    count=2
INFO [11-18|13:07:01] Initialising Ethereum protocol           versions="[63 62]" network=19840504
INFO [11-18|13:07:01] Loaded most recent local header          number=0 hash=8c6e45…eb10f7 td=1024
INFO [11-18|13:07:01] Loaded most recent local full block      number=0 hash=8c6e45…eb10f7 td=1024
INFO [11-18|13:07:01] Loaded most recent local fast block      number=0 hash=8c6e45…eb10f7 td=1024
INFO [11-18|13:07:01] Regenerated local transaction journal    transactions=0 accounts=0
INFO [11-18|13:07:01] Starting P2P networking 
INFO [11-18|13:07:03] UDP listener up                          self=enode://7b986115c168f2dba3611ce87674db08284b22011c58e86b4e5c8d77d45f263a564689e50245942309ac8567afee92b66eb5576755e31fef0c93393ef8b3311b@[::]:61911
INFO [11-18|13:07:03] RLPx listener up                         self=enode://7b986115c168f2dba3611ce87674db08284b22011c58e86b4e5c8d77d45f263a564689e50245942309ac8567afee92b66eb5576755e31fef0c93393ef8b3311b@[::]:61911
INFO [11-18|13:07:03] HTTP endpoint opened: http://127.0.0.1:8201 
Welcome to the Geth JavaScript console!

instance: Geth/v1.7.2-stable-1db4ecdc/linux-amd64/go1.9.2
 modules: admin:1.0 debug:1.0 eth:1.0 miner:1.0 net:1.0 personal:1.0 rpc:1.0 txpool:1.0 web3:1.0

 > personal.newAccount("123456")
 "0x6fc20b5ca2a738d277c11c1992ebdcae29eac176"
 > admin.addPeer("enode://a4b62cd8f505d52e2719922d7c24d0cdfec20dd8b02bfbfd1296c1ee7c48036bd0387f129dec907ffb8fa69975e048a7e00b4d7c4e519d8e6a5e82ac5c3beb11@10.0.0.173:61910")
 true
 > INFO [11-18|13:07:57] Block synchronisation started 
 INFO [11-18|13:07:57] Imported new state entries               count=1 elapsed=67.838µs processed=1 pending=0 retry=0 duplicate=0 unexpected=0
 INFO [11-18|13:07:59] Imported new block headers               count=26 elapsed=2.304s   number=26 hash=e14983…9c95b9 ignored=0
 INFO [11-18|13:07:59] Imported new chain segment               blocks=26 txs=0 mgas=0.000 elapsed=17.762ms mgasps=0.000 number=26 hash=e14983…9c95b9
 INFO [11-18|13:07:59] Fast sync complete, auto disabling 
 INFO [11-18|13:08:01] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=6.515ms  mgasps=0.000 number=29 hash=bbc630…d68740
 INFO [11-18|13:08:02] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.241ms  mgasps=0.000 number=30 hash=0c7de3…415acc
 INFO [11-18|13:08:02] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=4.729ms  mgasps=0.000 number=31 hash=fe52d1…2687f2
 INFO [11-18|13:08:04] Imported new chain segment               blocks=2  txs=0 mgas=0.000 elapsed=13.074ms mgasps=0.000 number=33 hash=de7343…d67aa1 ignored=15
 INFO [11-18|13:08:06] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=11.163ms mgasps=0.000 number=34 hash=1ffffc…4c26ad
 INFO [11-18|13:08:07] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.168ms  mgasps=0.000 number=35 hash=76973b…8cc067
 INFO [11-18|13:08:07] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.238ms  mgasps=0.000 number=36 hash=b0de15…d3bef9
 INFO [11-18|13:08:08] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.404ms  mgasps=0.000 number=37 hash=ed1932…9605a1
 INFO [11-18|13:08:10] Imported new chain segment               blocks=2  txs=0 mgas=0.000 elapsed=14.055ms mgasps=0.000 number=39 hash=a54771…9a12ab ignored=5
 INFO [11-18|13:08:11] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.164ms  mgasps=0.000 number=40 hash=ee59d8…f74b63
 INFO [11-18|13:08:12] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.443ms  mgasps=0.000 number=41 hash=e6174d…07c9a0
 INFO [11-18|13:08:15] Imported new chain segment               blocks=2  txs=0 mgas=0.000 elapsed=12.309ms mgasps=0.000 number=43 hash=e4bcfa…e61082 ignored=9
 INFO [11-18|13:08:15] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.110ms  mgasps=0.000 number=44 hash=74401f…b12d43
 INFO [11-18|13:08:18] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=6.516ms  mgasps=0.000 number=45 hash=ddc060…aca920
 INFO [11-18|13:08:19] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.390ms  mgasps=0.000 number=46 hash=17c720…085e4d
 INFO [11-18|13:08:19] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.188ms  mgasps=0.000 number=47 hash=e86300…6e0660
 INFO [11-18|13:08:21] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=11.584ms mgasps=0.000 number=48 hash=2fa1b6…f9cc26
 INFO [11-18|13:08:22] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=10.489ms mgasps=0.000 number=49 hash=27a0dc…29cca7
 INFO [11-18|13:08:22] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=6.781ms  mgasps=0.000 number=50 hash=f5b81c…527976
 INFO [11-18|13:08:23] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.175ms  mgasps=0.000 number=51 hash=4eb394…0c7743
 INFO [11-18|13:08:26] Imported new chain segment               blocks=2  txs=0 mgas=0.000 elapsed=10.195ms mgasps=0.000 number=53 hash=77fc50…e9cb99 ignored=3
 INFO [11-18|13:08:26] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=13.580ms mgasps=0.000 number=54 hash=282a91…2b06ad
 INFO [11-18|13:08:27] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.099ms  mgasps=0.000 number=55 hash=1454d4…8eab7b
 INFO [11-18|13:08:31] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=6.172ms  mgasps=0.000 number=56 hash=abbe13…7a651b

 > 
 > eth.accounts[0]
 "0x6fc20b5ca2a738d277c11c1992ebdcae29eac176"
 > From: 756a14c0e4313935725dd8e1887c08b220d330ec, Balance: 280000000000000000000
 Cost: 1001620000000000000

 > 
 > eth.pendingTransactions^C
 > eth.pendingTransaction^C
 > eth.getBalance(eth.accounts[0])
 0
 > INFO [11-18|13:11:23] Imported new chain segment               blocks=1  txs=1 mgas=0.021 elapsed=10.948ms mgasps=1.918 number=57 hash=43169d…7ea1fa
 INFO [11-18|13:11:24] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.267ms  mgasps=0.000 number=58 hash=737efc…d38dd0
 INFO [11-18|13:11:26] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=10.708ms mgasps=0.000 number=59 hash=c49ef0…4343ff
 INFO [11-18|13:11:27] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.175ms  mgasps=0.000 number=60 hash=5ae9e2…ef014d
 INFO [11-18|13:11:28] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.363ms  mgasps=0.000 number=61 hash=7d7b9e…e6414d
 > eth.getBalance(eth.accounts[0])INFO [11-18|13:11:29] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.236ms  mgasps=0.000 number=62 hash=924485…be9a45

 1000000000000000000
 > INFO [11-18|13:11:29] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.102ms  mgasps=0.000 number=63 hash=24ca13…ce66dd
 INFO [11-18|13:11:31] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.340ms  mgasps=0.000 number=64 hash=52fbb2…9a7c8f
 INFO [11-18|13:11:31] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=4.188ms  mgasps=0.000 number=65 hash=039229…2c9314
 INFO [11-18|13:11:34] Imported new chain segment               blocks=2  txs=0 mgas=0.000 elapsed=9.279ms  mgasps=0.000 number=67 hash=6d04c6…93c9b8 ignored=1
 INFO [11-18|13:11:34] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.145ms  mgasps=0.000 number=68 hash=9854b1…a40e3d
 INFO [11-18|13:11:36] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=8.121ms  mgasps=0.000 number=69 hash=c4faa2…df3506
 INFO [11-18|13:11:38] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=9.987ms  mgasps=0.000 number=70 hash=4692d2…fa093f
 INFO [11-18|13:11:38] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=5.207ms  mgasps=0.000 number=71 hash=423774…4bfb88
 INFO [11-18|13:11:41] Imported new chain segment               blocks=1  txs=0 mgas=0.000 elapsed=7.825ms  mgasps=0.000 number=72 hash=a22eaa…177cc2
 > exit
 INFO [11-18|13:57:59] HTTP endpoint closed: http://127.0.0.1:8201 
 INFO [11-18|13:57:59] Blockchain manager stopped 
 INFO [11-18|13:57:59] Stopping Ethereum protocol 
 INFO [11-18|13:57:59] Ethereum protocol stopped 
 INFO [11-18|13:57:59] Transaction pool stopped 
 INFO [11-18|13:57:59] Database closed                          database=/home/leonzhao/workspace/go/src/github.com/leonzhao/geth-tour/private/data/01/geth/chaindata

 ```
### 交易
