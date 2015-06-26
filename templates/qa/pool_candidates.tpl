{* Smarty *}
{extends file='common.tpl'}
{block name=content}
<h1>Найденные примеры для типа {$data.id}</h1>
<p>Некоторый пул этого типа назывался <b>{$data.pool_name}</b></p>
<p>Показано не более 200 случайно выбранных примеров из {$data.found_samples}.</p>
{if $is_admin}
<form method="post" action="?act=promote&amp;pool_type={$pool.id}"> 
<input type='radio' name='type' value='random' checked='checked'/><input type='text' name='random_n' maxlength='4' size='4' value='200'/> случайных<br/>
<input type='radio' name='type' value='first'/><input type='text' name='first_n' maxlength='4' size='4' value='200'/> первых<br/>
сделать <input type='text' name='pools_num' class='span1' value='{floor($data.found_samples / 200)}'/> таких пулов<br/>
<input class='btn btn-primary' type='submit' value='Поехали'/><br/>
</form>
<br/>
{/if}
<table border="1" cellspacing='0' cellpadding='2'>
{foreach from=$data.samples item=c}
<tr><td>{strip}
    {foreach from=$c.context item=word name=x}
        {if $smarty.foreach.x.index == $c.mainword}<b class='bggreen'>{$word|htmlspecialchars}</b>
        {else}{$word|htmlspecialchars}{/if}
        &nbsp;
    {/foreach}
{/strip}</td></tr>
{/foreach}
</table>
{/block}
