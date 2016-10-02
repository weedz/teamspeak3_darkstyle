<!--
TeamSpeak 3 Channel Infoframe Template (EN)
Copyright 2009-2015 (c) TeamSpeak Systems GmbH

The replaceable variables are embedded in "%%" like %%CHANNEL_NAME%%. At this time you can also use
%%?CHANNEL_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to remove the whole
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

#%%IMAGES_MAX_WIDTH%%256
#%%IMAGES_MAX_HEIGHT%%256

Replacable variables for channels:
CHANNEL_NAME
CHANNEL_ID
CHANNEL_TOPIC
CHANNEL_MAXCLIENTS
CHANNEL_MAXFAMILYCLIENTS
CHANNEL_NEEDED_TALK_POWER
CHANNEL_ORDER
CHANNEL_CODEC
CHANNEL_CODEC_BITRATE
CHANNEL_FLAGS
CHANNEL_SUBSCRIPTION
CHANNEL_CLIENTS_COUNT
CHANNEL_VOICE_DATA_ENCRYPTED
CHANNEL_VOICE_DATA_ENCRYPTED_FLAG
CHANNEL_DESCRIPTION
CHANNEL_ICON
PLUGIN_INFO_DATA
IMAGES_MAX_WIDTH
TEMP_CHANNEL_DELETE_DELAY
TEMP_CHANNEL_TIME_TO_DELETE
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
	table#header {
		margin: 5px 20px 5px 20px;
		white-space: nowrap;
	}
	table#list {
		color: #cccccc;
	}
	td.label {
		font-weight: bold;
		white-space: nowrap;
	}
	.header {
		padding-left: 12px;
		font-weight: bold;
	}
	.channel_name {
		font-size: 26px;
		font-weight: bold;
		color: #08bbe4;
	}
	.channel_topic {
		padding-left: 16px;
		font-size: 13px;
	}
	table#info td {
		white-space: nowrap;
		color: #cccccc;
		font-size: 11px;
	}

</style>

<p style="margin-top: 4px; color: #ed4c37;">Channel will be deleted in %%?TEMP_CHANNEL_TIME_TO_DELETE%%.</p>
<p style="margin-top: 4px; color: #ed4c37;">Channel will be deleted when empty for %%?TEMP_CHANNEL_DELETE_DELAY%% seconds.</p>
<table id="header">
	<tr>
		<td class="channel_name"><a class="TextMessage_ChannelLink" href="channelid://%%CHANNEL_ID%%"><span class="red">%%CHANNEL_NAME%%</span></a></td>
	</tr>
	<tr><td class="channel_topic">%%?CHANNEL_TOPIC%%</td></tr>
</table>
<table id="info">
	<tr>
		<td class="label">Codec:</td>
		<td><span class="blue">%%CHANNEL_CODEC%%</span></td>
	</tr>
	<tr>
		<td class="label">Codec Quality:</td>
		<td><span class="blue">%%CHANNEL_CODEC_QUALITY%% (%%CHANNEL_CODEC_BITRATE%%/s)</span></td>
	</tr>
	<tr>
		<td class="label">Channel type:</td>
		<td><span class="blue">%%CHANNEL_FLAGS%%</span></td>
	</tr>
	<tr>
		<td class="label">Channel ID:</td>
		<td><span class="blue">%%CHANNEL_ID%%</span></td>
	</tr>
	<tr>
		<td class="label">Clients:</td>
		<td><span class="blue">%%CHANNEL_CLIENTS_COUNT%% / %%CHANNEL_FLAG_MAXCLIENTS%%</span></td>
	</tr>
	<tr><td class="label">Needed talk power:</td><td><span class="red">%%?CHANNEL_NEEDED_TALK_POWER%%</span></td></tr>
	<tr>
		<td class="label">Subscription status:</td>
		<td><span class="blue">%%CHANNEL_SUBSCRIPTION%%</span></td>
	</tr>
	<tr>
		<td class="label">Voice encryption:</td>
		<td><span class="blue">%%CHANNEL_VOICE_DATA_ENCRYPTED%%</span></td>
	</tr>
</table>
<table id="list" width=100%><tr><td class="header">Description:</td></tr><tr><td class="list">%%?CHANNEL_DESCRIPTION%%</td></tr></table>
