Area:
UIKit

Summary:
If a UIDatePicker's .datePickerMode is set to .countDownTimer, it will not send any actions the first time the user changes the picker's value. However, starting with the second value change, actions are sent as expected henceforth.

Steps to Reproduce:
1. Configure a UIDatePicker to have .datePickerMode = .countDownTimer (either in Interface Builder or programmatically)
2. Add a handler to the date picker's valueChanged event (either in IB or programmatically)
<compile and run>
3. Change the value of the date picker: observe that the handler is not called
4. Change the value of the date picker again: observe that the handler IS called

Expected Results:
I would expect the valueChanged event to be sent the FIRST time that the value of the date picker is changed.

Observed Results:
The value changed handler is not called until the second time the value of the date picker is changed (step 4).

Version:
10.3.3/14G60

Notes:
Interesting side note: if the .datePickerMode is NOT .countDownTimer, then the valueChanged handler will be called, as expected, on the first value change.

A web search for this behavior does seem to turn up that it has been present since iOS 7 (e.g. https://stackoverflow.com/questions/20181980)

Configuration:
I have seen this on my iPad 2 (iOS 10.3.3), iPad 4 (iOS 9.3.3) and iPhone 5s (iOS 10.3.3) and in every simulator that I have run (not comprehensive, but definitely iPhone 7/7plus, iPad Pro, iPhone SE).
