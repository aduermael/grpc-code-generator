# grpc-code-generator
A Docker container using libprotoc 3.0.0 to generate gRPC code for C based languages (C++, C#, ObjC, Ruby)

#### Build Docker image:

```shell
docker build -t grpc-code-generator .
```

#### Run Docker container:

```shell
run -ti -v /path/to/protoDir:/protoDir grpc-code-generator /protoDir/myProto.proto
```

#### Result:

```shell
$ docker build -t grpc-code-generator . &> /dev/null

$ find ~/Desktop/test -type f
~/Desktop/test/test.proto

$ docker run -ti -v ~/Desktop/test:/test grpc-code-generator /test/test.proto

$ find ~/Desktop/test -type f
~/Desktop/test/cpp/test.grpc.pb.cc
~/Desktop/test/cpp/test.grpc.pb.h
~/Desktop/test/csharp/TestGrpc.cs
~/Desktop/test/objc/Test.pbrpc.h
~/Desktop/test/objc/Test.pbrpc.m
~/Desktop/test/ruby/test_services.rb
~/Desktop/test/test.proto
```
