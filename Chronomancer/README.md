<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#Description">Description</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#Contributing">Contributing</a></li>
    <li><a href="#Version-History">Version History</a></li>
    <li><a href="#Acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

# Chronomancer

Take a glimpse back in time at your target's past. See their day-to-day activities. Knowledge is power!

## Description

This powershell-based payload is designed to grab and exfiltrate a user's ActivitiesCache.db file. This file contains a trove of information about the user's recent activities.
Useful for reconnaissance, covert logging, or even surreptitious forensics.
Included with the payload are "launcher" integration files designed to be loaded on to various hotplug devices. Each is named after the device it should be used with. More will be added over time.

## Getting Started
Simply replace the Dropbox Key variable with your Dropbox API key, and deploy post-exploit using your method of choice. Alternatively, host the payload somewhere and use one of the included hotplug integrations to deploy physically via DuckyScript, PwnPlug, etc.

### Dependencies

You:
* Dropbox - Provide your API key

Your Target:
* Windows 10
* Internet connection
* Powershell-accessible

<p align="right">(<a href="#top">back to top</a>)</p>

### Executing program

* Execute the script via curl through the command line or a similar tool.
* Alternatively, install on your hotplug device of choice using the provided scripts (labeled by device). Once installed, host the payload somewhere like Github (fork it!), then simply plug in to deploy the attack.
* When the powershell script is executed, it will enumerate each timeline file in the user's application data.
* After a pause, the files will be exfiltrated to the provided Dropbox API key.
* You should see one or more files appear in your Dropbox, each ending in a ".db" extension. This indicates successful exfiltration.
* The database can be opened with Access or any other software that can read a .db file.
* Look at your target's past and feel like a wizard (mandatory).


<p align="right">(<a href="#top">back to top</a>)</p>

## Contributing

[Watchdogeditor](https://github.com/Watchdogeditor)

[I am Jakoby](https://github.com/I-Am-Jakoby/)

<p align="right">(<a href="#top">back to top</a>)</p>

## Version History

* 0.1
    * Partial Initial Release. Basic functionality but unfinished.

<p align="right">(<a href="#top">back to top</a>)</p>

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [I-Am-Jakoby](https://github.com/I-Am-Jakoby/) - Thanks for the Dropbox snippet.


<p align="right">(<a href="#top">back to top</a>)</p>