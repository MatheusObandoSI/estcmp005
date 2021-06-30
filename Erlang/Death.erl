-module(death).
-export([send/2]).

send(M, N) ->
  H = lists:foldl(
    fun(Id, Pid) -> spawn_link(fun() -> loop(Id, Pid, N) end) end,
    self(),
    lists:seq(M, 2, -1)),
  H ! N,
  loop(0, H, N).

loop(Id, Pid, N) ->
  receive
    1 ->
      {_, Time} = statistics(runtime),
      io:format("Execution time: ~p ms~n", [Time]),
      exit(self(), ok);
    Index ->
      erlang:yield(),
      Pid ! Index - 1,
      loop(Id, Pid, N)
  end.

