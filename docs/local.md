# Local

To run server localy:
```bash
iex -S mix phx.serve
```

To run server with ability to attach to it with LiveBook:

```bash
iex --sname <sname> --cookie <cookie> -S mix phx.server
```

And then attach to the server giving needed cookie and secret. (Replace \<sname\> and \<cookie\>).