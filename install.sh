#!/bin/bash
swift build
cp .build/debug/mytool /usr/local/bin/mytool
echo "MyTool was installed."
