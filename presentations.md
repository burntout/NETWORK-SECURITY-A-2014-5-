% Anonymity attacks on TOR 2013-2014 
% Aditya Damodaran and Alan Dawson
% December 2014

# What is TOR

## Tor == **The Onion Router**

- It is designed to provide anonymity for internet users.
    - Originally funded by the US Navy.
    - Public work started in June 2002 [^or1]
    - First release September 2002 [^or2]
- The tor client build a *circuit* across 3 tor nodes.
    - The client contacts a directory server and gets the public keys and IP addresses of tor nodes
    - Uses this information to build a circuit
    - The client chooses a different circuit on regular basis.
- Each node only has access to enough information on the request to determine the next hop. 
    - The entrance node gets to see the ip address of the client
    - The exit node gets to see the destination request.
    - The relay node only sees an encrypted routing request between the entrance and exit.

# Tor Client 2

- Not always possible to join the tor network 
    - As directory information is public the entry nodes can be blocked.
- Solution
    - Bridge nodes.
    - Private tor relays that are not published in the tor directory
    - DPI can be used to identify tor traffic, and block access to bridges
Enhancement
    - obfsproxy
    - proxy services that can be used to obfuscate tor traffic, evading DPI


# Tor Hidden Services

- Provide anonymity for service providers
    - eg. Web publishing, instant messaging services
- Use `.onion` addresses
    - eg. https://facebookcorewwwi.onion
    - onion addresses are 80 bit hash of site public key
    - onion addresses both verify and secure the hidden node address.
- Onion addresses are not resolvable outside the tor network

# Deanonymisation of tor client users

- Various attacks known in the press.
- We present some in chronological order.

# Freedom Hosting July-August 2013

- Running turnkey tor hidden services out of a French commercial hosting provider.
- Users of these hidden services included hosting of child pornography.
- FBI took control of these hidden services on July 2013.
- August 4th 2013, all sites hosted by Freedom Hosting began serving an error message with javascript iframe code embedded in the page.
- This exploited a vulnerability in version of Firefox primarily used by Tor users, and caused their computers to make a connection back to a server in the US, with information about their identities (eg. MAC Address, IP Address )

# Freedom Hosting - 2 

- How were the hidden services exploited.
    - Likely not an exploit in tor, but an exploit in the web applications    - This would have de-anonymised some of the Freedom Hosting systems.
    - Additional ones would have been discovered by records from the French hosting company.

# Silk Road - October 2013

- Silk Road, Tor hidden service providing a market place for drugs.
- IP address discover from a Captcha
    - "the two agents entered “miscellaneous” data into its login page and found that its CAPTCHA, ... was loading from an address not connected to any Tor “node,”"
- Likely that this was a reconnaissance attack, or fuzzing attack on the Silk Road application. This may have caused the server to output PHP debugging information, which revealed it's actual IP address.

# Harvard Bomb Threat -  December 2013

- A Harvard student used Tor to send a bomb threat to his university in order to avoid taking a test.
-  FBI used logs of the campus wireless network traffic to determine when and where a user accessed the Tor service, ultimately allowing them to trace the webmail activity back to the student
- The outgoing Tor traffic may have triggered an IDS rule to log packets, or network administrators may have been logging all outgoing traffic.
- This Tor usage may have coincided with the delivery times of email threats.
- This will have been combined with standard policing procedures; who would have had motive, to find a suspect.

# Relay Early Traffic Confirmation Attack

<https://blog.torproject.org/blog/tor-security-advisory-relay-early-traffic-confirmation-attack>

- Technical attack on Tor Hidden Services
- Motives were uncertain.
- Details
    - Compromised Tor node inject a signal value, 
    - These contains an encrypted unique identifier
    - Injected into a Tor request headers
    - Can be used to identify locations of hidden services
    - Can be used it identify users



# Operation Onymous - November 2014

- Silk Road 2 taken down
- Various other Tor hidden services affected
- Technique not known.
    - Probably bad OpSec by users.
    - Possibly from "Relay Early Traffic Attack" ( from previous slide )


# Conclusion - Client privacy

- Anonymity is hard, against a determined adversary.
- Best practices - Clients
    - Dont run arbitrary code in your tor browser ( eg. disable java script/flash )
    - Dont run windows
    - Use the latest Tor Browser Bundle package
    - Use a dedicated virtual machine or operating system ( eg. Whonix, Tails )
        - Force all traffic to be "torified"

# Conclusion - Hidden node privacy.

- Best practices - Hidden Service Operators
    - Run a secure code.
    - Dont leave debug statements on live systems.
    - Take servers off line when performing maintenance






[^or1]: <http://archives.seul.org/or/dev/Jun-2002/msg00001.html> "OR partial todo file"
[^or2]: <http://archives.seul.org/or/dev/Sep-2002/msg00019.html> "pre-alpha: run an onion proxy now!"


