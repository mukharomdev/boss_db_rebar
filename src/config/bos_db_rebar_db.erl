-module (bos_db_rebar_db).

-export ([connect/0]).



connect()->
	DBOptions = [
    {adapter, pgsql},
    {db_host, "localhost"},
    {db_port, 5432},
    {db_username, "yodharishang"},
    {db_password, "yodha3129"},
    {db_database, "users_db"}
    % {db_ssl, true}
    ],
	 boss_db:start(DBOptions),

% boss_cache:start(CacheOptions), % If you want cacheing with Memcached
	boss_news:start(), % Mandatory! Hopefully will be optional one day
    ok.
% % Default setting
% boss_db:start(DBOptions),
% boss_cache:start(CacheOptions), % If you want cacheing with Memcached
% boss_news:start() % Mandatory! Hopefully will be optional one day

% DBOptions = [
%     {adapter, mock | riak | mysql | pgsql | mnesia},
%     {db_host, HostName::string()},
%     {db_port, PortNumber::integer()},
%     {db_username, UserName::string()},
%     {db_password, Password::string()},
%     {db_database, Database::string()},
%     {db_configure, DatabaseOptions::list()},
%     {db_ssl, UseSSL::boolean() | required}, % for now pgsql only

%     {shards, [
%         {db_shard_models, [ModelName::atom()]},
%         {db_shard_id, ShardId::atom()},
%         {db_host, _}, {db_port, _}, ...
%     ]},
%     {cache_enable, true | false},
%     {cache_exp_time, TTLSeconds::integer()},

%     {size, PoolSize::non_neg_integer()}, % the size of the connection pool - defaults to 5
%     {max_overflow, MaxOverflow::non_neg_integer()} % the maximum number of temporary extra workers that can be created past the `size' just above - defaults to 10
%     %% the sum size + max_overflow effectively controls how many concurrent mysql queries can run
% ]

% CacheOptions = [
%     {adapter, memcached_bin | redis | ets},
%     {cache_servers, MemcachedCacheServerOpts | RedisCacheServerOpts | EtsCacheServerOpts}
% ]

% MemcachedCacheServerOpts = [
%     { HostName::string() = "localhost"
%     , Port::integer()    = 11211
%     , Weight::integer()  = 1
%     }, ...
% ]

% RedisCacheServerOpts = [
%     {host,      HostName::string()   = "localhost"},
%     {port,      Port::integer()      = 6379},
%     {pass,      Password::string()   = undefined},
%     {db,        Db::integer()        = 0},
%     {reconnect, Reconnect::boolean() = true}
% ]

% EtsCacheServerOpts = [
%     {ets_maxsize,   MaxSize::integer() = 32 * 1024 * 1024},
%     {ets_threshold, Threshold::float() = 0.85},
%     {ets_weight,    Weight::integer()  = 30}
% ]