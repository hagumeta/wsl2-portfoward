#### install (仮)

```
In wsl2

# cd <任意のpath>/
# git clone 
# cd wsl2-portfoward/
# sudo ln "$(pwd)/portfoward.sh" -s /var/opt/portforward.sh
```

#### how to use
```
In Windows terminal
> wsl --exec bash /var/opt/portfoward.sh <CMD>
```

- add <port>  
`wsl --exec bash /var/opt/portfoward.sh add 8080`

- del <port>
`wsl --exec bash /var/opt/portfoward.sh del 8080`

- list
`wsl --exec bash /var/opt/portfoward.sh list`