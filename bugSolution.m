To fix the memory leak, ensure proper handling of `myString`. One solution involves using `nil` to break the strong reference cycle when appropriate:

```objectivec
- (void)someMethod {
    self.myString = [NSString stringWithFormat:@"Hello, world!"];
    // ... some code ...
    self.myString = nil; // Release the string when done
}
```

For KVO, always remove observers in `dealloc` or when the observed object is no longer needed:

```objectivec
@implementation MyClass
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    // ... your KVO handling ...
}

- (void)dealloc {
    [self removeObserver:self forKeyPath:@"observedProperty"];
    [super dealloc];
}
```
This ensures that your class doesn't continue listening to changes after the observed object is gone, preventing potential crashes.