- Riverpod bits:
  - There are three primary usages for "ref":

obtaining the value of a provider and listening to changes, such that when this value changes, this will rebuild the widget or provider that subscribed to the value. That can be done using ref.watch
adding a listener on a provider, to execute an action whenever that provider changes.
That can be done using ref.listen.
obtaining the value of a provider while ignoring changes. This is useful when we need the value of a provider in an event such as "on click". That can be done using ref.read.

- Riverpod best practice checklist:
  - Using ref.read should be avoided as much as possible.
  - DON'T CALL READ INSIDE THE BODY OF A PROVIDER
