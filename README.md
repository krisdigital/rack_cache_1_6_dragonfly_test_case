###README

Test case in test/integration.

Run `rake` to run test.

You should see a similar output:

```ruby
# Running:

Get URL /media/W1siZmYiLCJmaWxlcy9CbGFjay1TYWJiYXRoLUluLVRoZS03MHMtSGQtV2FsbHBhcGVyLmpwZyJdLFsicCIsInRodW1iIiwiMTAweDEwMCMiXV0/Black-Sabbath-In-The-70s-Hd-Wallpaper.jpg?sha=42c191756e0fa7f6
E

Finished in 0.244711s, 4.0865 runs/s, 0.0000 assertions/s.

  1) Error:
RackCache16DragonflyTest#test_Test_Dragonfly_with_rack_cache:
Dragonfly::TempObject::Closed: can't read from tempfile as TempObject has been closed
    test/integration/rack_cache_1_6_dragonfly_test.rb:17:in `block in <class:RackCache16DragonflyTest>'

1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
```