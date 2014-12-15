# TOR

% Anonymity attacks on TOR 2013-2014 
% A & A
% December 2014



## What is TOR

### Tor == **The Onion Router**

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


## Tor Hidden Services

- Provide anonymity for service providers
    - eg. Web publishing, instant messaging services
- Use `.onion` addresses
    - eg. https://facebookcorewwwi.onion
    - onion addresses are 80 bit hash of site public key
    - onion addresses both verify and secure the hidden node address.
- Onion addresses are not resolvable outside the tor network

## Deanonymisation of tor client users

### Tor Clients




## Deanonymisation of tor hidden services


### bad software

### 


- 






[^or1]: <http://archives.seul.org/or/dev/Jun-2002/msg00001.html> "OR partial todo file"
[^or2]: <http://archives.seul.org/or/dev/Sep-2002/msg00019.html> "pre-alpha: run an onion proxy now!"


