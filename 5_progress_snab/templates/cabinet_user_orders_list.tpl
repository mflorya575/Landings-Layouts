{foreach $orders.items as $ord}
    <div class="table__item">
        <a class="table__item-link" href="/user/order?oid={$ord.public_id}">
            <div class="table__text table__text-order--detalpage table__text--size"><a href="">№ {$ord.public_id}</a></div>
            <div class="table__text table__text-time--detalpage table__text--time">
                <div class="table__text table__text--date">{$ord.ord_date}</div>
                <div>{$ord.ord_time}</div>
            </div>
            <div class="table__text table__text-status--detalpage {if $ord.osts==0}table__text--red {elseif $ord.osts==1}table__text--grey{elseif $ord.osts==2}table__text--green{elseif $ord.osts==3}table__text--green{elseif $ord.osts==4}table__text--green{/if}">
                {if $ord.osts==0}Не обработан{elseif $ord.osts==1}В обработке{elseif $ord.osts==2}Счёт отправлен{elseif $ord.osts==3}Счёт оплачен{elseif $ord.osts==4}Товар отгружен{/if}
            </div>
            <div class="table__text table__text-total--detalpage">{$ord.order_sum_str}</div>
        </a>
    </div>
{/foreach}