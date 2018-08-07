#!/bin/sh
#Created on 2017-11-22 
#测试场景：完成的meta_server流程

echo -e "\n"
#删除region
echo -e "drop region\n"
curl -d '{
    "op_type":"OP_DROP_REGION",
    "drop_region_ids":[1, 2] 
}' http://$1/MetaService/meta_manager
echo -e "\n"

#查询region
curl -d '{
    "op_type" : "QUERY_REGION"
}' http://$1/MetaService/query
echo -e "\n"

