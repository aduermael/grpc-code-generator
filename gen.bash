#!/bin/bash

FILE=$1
DIR=$(dirname "${FILE}")

OBJC_DIR=$DIR/objc
CSHARP_DIR=$DIR/csharp
CPP_DIR=$DIR/cpp
RUBY_DIR=$DIR/ruby

mkdir -p $OBJC_DIR
mkdir -p $CSHARP_DIR
mkdir -p $CPP_DIR
mkdir -p $RUBY_DIR

protoc -I $DIR --grpc_out=$OBJC_DIR --plugin=protoc-gen-grpc=/usr/local/bin/grpc_objective_c_plugin $FILE
protoc -I $DIR --grpc_out=$CSHARP_DIR --plugin=protoc-gen-grpc=/usr/local/bin/grpc_csharp_plugin $FILE
protoc -I $DIR --grpc_out=$CPP_DIR --plugin=protoc-gen-grpc=/usr/local/bin/grpc_cpp_plugin $FILE
protoc -I $DIR --grpc_out=$RUBY_DIR --plugin=protoc-gen-grpc=/usr/local/bin/grpc_ruby_plugin $FILE