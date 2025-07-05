# $1 : localPC => local-confluent-kafka-cp-zookeeper-headless
# Delete the topic
kafka-topics --zookeeper $1:2181 --topic customer --delete
kafka-topics --zookeeper $1:2181 --topic payment-request --delete
kafka-topics --zookeeper $1:2181 --topic payment-response --delete
kafka-topics --zookeeper $1:2181 --topic restaurant-approval-request --delete
kafka-topics --zookeeper $1:2181 --topic restaurant-approval-response --delete

# Create the topic
kafka-topics --zookeeper $1:2181 --topic customer --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic payment-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic payment-response --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic restaurant-approval-request --create --partitions 3 --replication-factor 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic restaurant-approval-response --create --partitions 3 --replication-factor 3 --if-not-exists

