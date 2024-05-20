{foreach $orders.items as $ord}
<div class="table__item">
    <div class="table__text table__text-order--manager-list table__text--size"><a href="/manager/mgr_order?oid={$ord.public_id}">№ {$ord.public_id}</a></div>
    <div class="table__text table__text-time--manager table__text--time">
        <div class="table__text table__text--date">{$ord.ord_date}</div>
        <div>{$ord.ord_time}</div>
    </div>
    <div class="table__text table__text-company--manager">
        {if $ord.user_company}
            <div>{$ord.user_company}</div>
        {else}
            <div>{$ord.user_name}</div>
        {/if}
        <div class="table__text--company">{$ord.user_city}</div>
    </div>
    <div class="table__text table__text-status--manager-list {if $ord.osts==0}table__text--red {elseif $ord.osts==1}table__text--grey{elseif $ord.osts==2}table__text--green{elseif $ord.osts==3}table__text--green{elseif $ord.osts==4}table__text--green{/if}"">
        {if $ord.osts==0}Не обработан{elseif $ord.osts==1}В обработке{elseif $ord.osts==2}Счёт отправлен{elseif $ord.osts==3}Счёт оплачен{elseif $ord.osts==4}Товар отгружен{/if}
    </div>
</div>
{/foreach}
