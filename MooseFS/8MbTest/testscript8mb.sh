#!/bin/bash

BASE_DIR="/home/client/mooseFsTests/8MbTest"
MOUNTPOINT="/mnt/mfs"

# WRITE 8k
mkdir -p "${BASE_DIR}/write_8k"
for i in {1..10}; do
  fio --name=write_8k_run${i} \
      --rw=write \
      --bs=8k \
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/write_8k/write_8k_run${i}.json
done

# WRITE 16k
mkdir -p "${BASE_DIR}/write_16k"
for i in {1..10}; do
  fio --name=write_16k_run${i} \
      --rw=write \
      --bs=16k \
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/write_16k/write_16k_run${i}.json
done

# WRITE 32k
mkdir -p "${BASE_DIR}/write_32k"
for i in {1..10}; do
  fio --name=write_32k_run${i} \
      --rw=write \
      --bs=32k \
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/write_32k/write_32k_run${i}.json
done

# WRITE 64k
mkdir -p "${BASE_DIR}/write_64k"
for i in {1..10}; do
  fio --name=write_64k_run${i} \
      --rw=write \
      --bs=64k \
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/write_64k/write_64k_run${i}.json
done

# RANDWRITE 8k
mkdir -p "${BASE_DIR}/randwrite_8k"
for i in {1..10}; do
  fio --name=randwrite_8k_run${i} \
      --rw=randwrite \
      --bs=8k \
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/randwrite_8k/randwrite_8k_run${i}.json
done

# RANDWRITE 16k
mkdir -p "${BASE_DIR}/randwrite_16k"
for i in {1..10}; do
  fio --name=randwrite_16k_run${i} \
      --rw=randwrite \
      --bs=16k \
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/randwrite_16k/randwrite_16k_run${i}.json
done

# RANDWRITE 32k
mkdir -p "${BASE_DIR}/randwrite_32k"
for i in {1..10}; do
  fio --name=randwrite_32k_run${i} \
      --rw=randwrite \
      --bs=32k \
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/randwrite_32k/randwrite_32k_run${i}.json
done

# RANDWRITE 64k
mkdir -p "${BASE_DIR}/randwrite_64k"
for i in {1..10}; do
  fio --name=randwrite_64k_run${i} \
      --rw=randwrite \
      --bs=64k \
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/randwrite_64k/randwrite_64k_run${i}.json
done

# READ 8k
mkdir -p "${BASE_DIR}/read_8k"
for i in {1..10}; do
  fio --name=read_8k_run${i} \
      --rw=read \
      --bs=8k \
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/read_8k/read_8k_run${i}.json
done

# READ 16k
mkdir -p "${BASE_DIR}/read_16k"
for i in {1..10}; do
  fio --name=read_16k_run${i} \
      --rw=read \
      --bs=16k \
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/read_16k/read_16k_run${i}.json
done

# READ 32k
mkdir -p "${BASE_DIR}/read_32k"
for i in {1..10}; do
  fio --name=read_32k_run${i} \
      --rw=read \
      --bs=32k \
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/read_32k/read_32k_run${i}.json
done

# READ 64k
mkdir -p "${BASE_DIR}/read_64k"
for i in {1..10}; do
  fio --name=read_64k_run${i} \
      --rw=read \
      --bs=64k \
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/read_64k/read_64k_run${i}.json
done

# RANDREAD 8k
mkdir -p "${BASE_DIR}/randread_8k"
for i in {1..10}; do
  fio --name=randread_8k_run${i} \
      --rw=randread \
      --bs=8k \
      --size=8m \
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
      --size=8m \
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
      --size=8m \
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
      --size=8m \
      --numjobs=3 \
      --directory=${MOUNTPOINT} \
      --group_reporting=1 \
      --output-format=json \
      --output=${BASE_DIR}/randread_64k/randread_64k_run${i}.json
done

