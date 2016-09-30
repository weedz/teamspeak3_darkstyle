<!--
TeamSpeak 3 Server Infoframe Template (EN)
Copyright 2009-2015 (c) TeamSpeak Systems GmbH

The replaceable variables are embedded in "%%" like %%SERVER_NAME%%. At this time you can also use
%%?SERVER_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to remove the whole
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when
displayed.

Replacable variables for server:
SERVER_NAME
SERVER_VERSION
SERVER_VERSION_SHORT
SERVER_PLATFORM
SERVER_CLIENTS_ONLINE
SERVER_QUERYCLIENTS_ONLINE
SERVER_CHANNELS_ONLINE
SERVER_UPTIME
SERVER_CLIENT_CONNECTIONS
SERVER_QUERY_CLIENT_CONNECTIONS
SERVER_ADDRESS
SERVER_PORT
SERVER_ICON
SERVER_LICENSE
PLUGIN_INFO_DATA
SERVER_MAXCLIENTS
SERVER_NO_RESERVED_SLOTS
SERVER_RESERVED_SLOTS
SERVER_REFRESH_INACTIVE
SERVER_REFRESH_ACTIVE
-->

<style type="text/css">
	a {
		color: #ed4c37;
	}
	td {
		padding: 0px 4px 0px 1px;
	}
	.blue {
		color: #08bbe4;
	}
	.red {
		color: #ed4c37;
	}
	td.space {
		padding-top: 6px;
	}
	table#header {
		margin: 5px 20px 5px 20px;
		white-space: nowrap;
	}
	table#list {
		color: #cccccc;
	}
	.header {
		padding-left: 12px;
	}
	.server_name {
		font-size: 26px;
		font-weight: bold;
		color: #08bbe4;
	}
	.channel_topic {
		padding-left: 16px;
		font-size: 13px;
	}
	td.infotext {
		white-space: nowrap;
		color: #cccccc;
		font-size: 11px;
	}
	td.label {
		font-weight: bold;
		white-space: nowrap;
	}
	table#info td {
		white-space: nowrap;
		color: #cccccc;
		font-size: 11px;
	}
</style>

<table id="header">
	<tr>
		<td class="server_name"><a href="channelid://0" class="TextMessage_ServerLink"><span class="red">%%SERVER_NAME%%</span></a></td>
	</tr>
</table>
<table id="info">
	<tr>
		<td class="label">Address:</td>
		<td>
			<span class="blue">%%SERVER_ADDRESS%%</span>
			<span class="blue">:%%?SERVER_PORT%%</span>
		</td>
	</tr>
	<tr>
		<td class="label">Version:</td>
		<td><span class="blue">%%SERVER_VERSION%% on %%SERVER_PLATFORM%%</span></td>
	</tr>
	<tr>
		<td class="label">License:</td>
		<td><span class="blue">%%SERVER_LICENSE%%</span></td>
	</tr>
	<tr>
		<td class="label">Uptime:</td>
		<td><span class="blue">%%SERVER_UPTIME%%</span></td>
	</tr>
	<tr>
		<td class="label">Current Channels:</td>
		<td><span class="blue">%%SERVER_CHANNELS_ONLINE%%</span></td>
	</tr>
	<tr title="Total Client Connections: %%SERVER_CLIENT_CONNECTIONS">
		<td class="label">Current Clients:</td>
		<td><span class="blue">%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% %%?SERVER_NO_RESERVED_SLOTS%%</span></td>
		<td><span class="blue">%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% (<span class="red">-%%?SERVER_RESERVED_SLOTS%% reserved</span>)</span></td>
	</tr>
	<tr title="Total ServerQuery Connections: %%SERVER_QUERY_CLIENT_CONNECTIONS%%">
		<td class="label">Current Queries:</td>
		<td><span class="blue">%%SERVER_QUERYCLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%%</span></td>
	</tr>
	%%?PLUGIN_INFO_DATA%%
</table>
<table id="list">
	<tr>
		<td class="space">
    		<a href="%%?SERVER_REFRESH_INACTIVE%%">Refresh</a>
    		<a href="%%?SERVER_REFRESH_ACTIVE%%">Refresh</a>
		</td>
	</tr>
</table>
