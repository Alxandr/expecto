#!/bin/bash
export FrameworkPathOverride=$(dirname $(which mono))/../lib/mono/4.5/
mono .paket/paket.exe restore
mono packages/FAKE/tools/FAKE.exe $@ --fsiargs -d:MONO build.fsx