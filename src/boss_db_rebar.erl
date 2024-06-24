-module(boss_db_rebar).

-export([init/1]).

-spec init(rebar_state:t()) -> {ok, rebar_state:t()}.
init(State) ->
    {ok, State1} = boss_db_rebar_prv:init(State),
    {ok, State1}.
