# Subtle Memory Leaks and KVO Issues in Objective-C

This repository demonstrates two common, yet subtle, issues in Objective-C programming:

1. **Memory Leaks with ARC:**  Even with Automatic Reference Counting (ARC), improper handling of object assignments can lead to memory leaks.
2. **Key-Value Observing (KVO) Issues:** Forgetting to remove KVO observers can result in crashes or unexpected behavior.

The `bug.m` file contains code showcasing these problems. `bugSolution.m` provides corrected versions that address the issues.

## Setup

This code is designed to be used within a simple Xcode project.  You'll need a basic understanding of Objective-C and memory management.