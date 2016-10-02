<!--
TeamSpeak 3 Client Infoframe Template
Copyright 2009-2015 (c) TeamSpeak Systems GmbH

The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can
also use %%?CLIENT_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to
remove the whole line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

#%%AVATAR_MAX_WIDTH%%128
#%%AVATAR_MAX_HEIGHT%%128
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3

Replacable variables for clients:
CLIENT_NAME
CLIENT_NAME_PERCENT_ENCODED
CLIENT_CUSTOM_NICK_NAME
CLIENT_COUNTRY_TOOLTIP
CLIENT_COUNTRY_IMAGE
CLIENT_ID
CLIENT_UNIQUE_ID
CLIENT_AWAY_MESSAGE
CLIENT_PLATFORM
CLIENT_VERSION
CLIENT_VERSION_SHORT
CLIENT_VERSION_STATE   [Alpha|Beta|Stable]
CLIENT_DESCRIPTION
CLIENT_ICON
CLIENT_TOTALCONNECTIONS
CLIENT_CREATED
CLIENT_LASTCONNECTED
CLIENT_CONNECTED_SINCE
CLIENT_FLAG_AVATAR
CLIENT_IGNORE_AVATAR
AVATAR_MAX_WIDTH
AVATAR_MAX_HEIGHT
CLIENT_TALK_REQUEST_TIME
CLIENT_TALK_REQUEST_MSG
CLIENT_VOLUME_MODIFIER
CLIENT_CHANNEL_GROUP_NAME
CLIENT_CHANNEL_GROUP_ICON
CLIENT_SERVER_GROUP_NAME
CLIENT_SERVER_GROUP_ICON
CLIENT_DATABASE_ID
CLIENT_SERVER_SHOW_MAX_GROUPS
PLUGIN_INFO_DATA
-->

<style type="text/css">
	a {
		color: #ed4c37;
	}
	table#info {
		border-collapse: collapse;
		border-spacing: 0px;
	}
	table#list {
		border-collapse: collapse;
		border-spacing: 0px;
		margin-bottom: 10px;
	}
	td {
		padding: 0px 4px 0px 1px;
	}
	td.label {
		font-weight: bold;
		white-space: nowrap;
	}
	td.space {
		padding-top: 6px;
	}
	td.list {
		padding: 0px 1px 0px 8px;
	}
	.green {
		color: green;
	}
	.blue {
		color: #08bbe4;
	}
	.red {
		color: #ed4c37;
	}
	.small {
		font-size: 7pt;
	}
	table#info td {
		white-space: nowrap;
		color: #cccccc;
		font-size: 11px;
	}
	table#header {
		margin: 5px 20px 5px 20px;
	}
	table#header td {
		font-size: 26px;
		font-weight: bold;
		color: #08bbe4;
	}
	table#header td a {
		text-decoration: none;
	}
</style>

<table id="header">
	<tr>
		<td><span class="red"><a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%">%%CLIENT_NAME%%</a></span></td>
	</tr>
</table>
<table id="info">
	<tr>
		<td class="label">Nickname:</td>
		<td>
		  <img src="%%?CLIENT_COUNTRY_IMAGE%%" alt="" title="%%CLIENT_COUNTRY_TOOLTIP%%"/>&nbsp;&nbsp;
		  <a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" style="text-decoration: none;" class="red">%%CLIENT_NAME%%</a>
		  &nbsp;<span class="blue" title="Custom Nickname">[%%?CLIENT_CUSTOM_NICK_NAME%%]</span>
		  <span title="Client ID">(%%CLIENT_ID%%)</span>
		</td>
	</tr>
	<tr>
		<td class="label">Unique ID:</td>
		<td><span class="blue">%%CLIENT_UNIQUE_ID%%</span></td>
	</tr>
	<tr>
		<td class="label">Database ID:</td>
		<td><span class="blue">%%CLIENT_DATABASE_ID%%</span></td>
	</tr>
		<tr><td class="label">Description:</td><td><span class="blue">%%?CLIENT_DESCRIPTION%%</span></td></tr>
		<tr><td class="label">Volume Modifier:</td><td><span class="red">%%?CLIENT_VOLUME_MODIFIER%% dB</span></td></tr>
	<tr>
		<td class="label">Version:</td>
		<td><span class="blue">%%CLIENT_VERSION%% %%CLIENT_VERSION_STATE%% on %%CLIENT_PLATFORM%%</span></td>
	</tr>
	<tr>
		<td class="label">Connections:</td>
		<td><span class="blue">%%CLIENT_TOTALCONNECTIONS%%</span></td>
	</tr>
	<tr>
		<td class="label">First Connected:</td>
		<td><span class="blue">%%CLIENT_CREATED%%</span></td>
	</tr>
	<tr>
		<td class="label">Online Since:</td>
		<td><span class="blue">%%CLIENT_CONNECTED_SINCE%%</span></td>
	</tr>
</table>
<table id="list">
	<tr>
		<td class="space label">Server Groups:</td>
	</tr>
	<tr>
		<td class="list">
    		<div>%%CLIENT_SERVER_GROUP_ICON%% %%CLIENT_SERVER_GROUP_NAME%%</div>
  		</td>
	</tr>
	<tr>
		<td class="space label">Channel Group:</td>
	</tr>
	<tr>
		<td class="list">
    		<div>%%CLIENT_CHANNEL_GROUP_ICON%% %%CLIENT_CHANNEL_GROUP_NAME%%</div>
		</td>
	</tr>
	<tr><td><span class="red">*** Client requested Talk Power at <b>%%?CLIENT_TALK_REQUEST_TIME%%</b>.</span></td></tr>
	<tr><td><span class="red">(%%?CLIENT_TALK_REQUEST_MSG%%)</span></td></tr>
</table>
<table style="padding-top: 6px;">%%?PLUGIN_INFO_DATA%%</table>
