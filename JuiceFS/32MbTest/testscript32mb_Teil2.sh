#!/bin/bash

BASE_DIR="/home/client/juiceFsTests/32MbTest"
MOUNTPOINT="/mnt/juicefs"

# RANDREAD 8k
mkdir -p "${BASE_DIR}/randread_8k"
for i in {1..10}; do
  fio --name=randread_8k_run${i} \
      --rw=randread \
      --bs=8k \
      --size=32m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/randread_8k/randread_8k_run${i}.json
done

# RANDREAD 16k
mkdir -p "${BASE_DIR}/randread_16k"
for i in {1..10}; do
  fio --name=randread_16k_run${i} \
      --rw=randread \
      --bs=16k \
      --size=32m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/randread_16k/randread_16k_run${i}.json
done

# RANDREAD 32k
mkdir -p "${BASE_DIR}/randread_32k"
for i in {1..10}; do
  fio --name=randread_32k_run${i} \
      --rw=randread \
      --bs=32k \
      --size=32m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/randread_32k/randread_32k_run${i}.json
done

# RANDREAD 64k
mkdir -p "${BASE_DIR}/randread_64k"
for i in {1..10}; do
  fio --name=randread_64k_run${i} \
      --rw=randread \
      --bs=64k \
      --size=32m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/randread_64k/randread_64k_run${i}.json
done

