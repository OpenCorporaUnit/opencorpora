{* Smarty *}
{include file='commonhtmlheader.tpl'}
<body>
<div id='main'>
{include file='english/header.tpl'}
<div id='content'>
<table border='1' cellspacing='0' cellpadding='3'>
{foreach from=$history item=h}
<tr>
	<td>{$h.set_id}</td>
	<td>{$h.user_name|default:'Робот'}</td>
	<td>{$h.timestamp|date_format:"%a %d.%m.%Y, %H:%M"}</td>
	<td><a href="sentence.php?id={$h.sent_id}">Sentence {$h.sent_id}</a></td>
	<td><a href="diff.php?sent_id={$h.sent_id}&amp;set_id={$h.set_id}">Diff</a></td>
    <td>{$h.comment|default:'(no comment)'}</td>
</tr>
{/foreach}
</table>
</div>
<div id='rightcol'>
{include file='english/right.tpl'}
</div>
<div id='fake'></div>
</div>
{include file='footer.tpl'}
</body>
{include file='commonhtmlfooter.tpl'}
