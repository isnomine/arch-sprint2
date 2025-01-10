#!/bin/bash

###
# fill database
###

docker compose exec -T mongos_router mongosh --port 27018 --quiet <<EOF
    sh.addShard("shard1/shard1_1:27020");
    sh.addShard("shard1/shard1_2:27021");
    sh.addShard("shard1/shard1_3:27022");
    sh.addShard("shard2/shard2_1:27023");
    sh.addShard("shard2/shard2_2:27024");
    sh.addShard("shard2/shard2_3:27025");

    sh.enableSharding("somedb");
    sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } );
    use somedb;
    for(var i = 0; i < 1000; i++) db.helloDoc.insertOne({age:i, name:"ly"+i})
    db.helloDoc.countDocuments();
EOF
