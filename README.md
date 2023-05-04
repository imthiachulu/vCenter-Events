# Get Custom Fields from vCenter Events via PowerCLI


As we run our VMware environment, monitoring vCenter events is an important aspect of maintaining a healthy environment. Luckily, with VMware PowerCLI, you can easily retrieve the details of these events and analyze them for insights and troubleshooting purposes.

You can add the below code to the script this checks if the Info property is not null before calling. If the Info property is null, the script skips the Task output for that event.

Check if the Info property is not null before calling method <br>
```ruby
 if ($event.Info -ne $null) {

  }
```
