Feature: Test YubiKey PIV application

# The first example has three steps
@YubiKey PIV Tests
Scenario: Verify that if the PIN is disabled and the user enters wrong PUK value 3 times,
          the user later can perform a complete reset to unblock the key
    Given PivSession was created
    When Make a connection to the device
    Then Enter the wrong PIN three times, then enter the wrong PUK three times,
    and finally perform a complete reset. Use YubiKey Manager to see whether the
    PIN has been successfully reset
