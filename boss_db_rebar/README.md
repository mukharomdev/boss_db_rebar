boss_db_rebar
=====

A rebar plugin

Build
-----

    $ rebar3 compile

Use
---

Add the plugin to your rebar config:

    {plugins, [
        {boss_db_rebar, {git, "https://host/user/boss_db_rebar.git", {tag, "0.1.0"}}}
    ]}.

Then just call your plugin directly in an existing application:


    $ rebar3 boss_db_rebar
    ===> Fetching boss_db_rebar
    ===> Compiling boss_db_rebar
    <Plugin Output>
