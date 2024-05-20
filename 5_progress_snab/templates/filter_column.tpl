{if $filter.mt|@count gt 0}
<div class="sidebar__element">
    <div class="sidebar__element-title" data-opened="1">Материал жилы</div>
    <div class="sidebar__element-wrapper"  data-ftype="mt">
        {foreach from=$filter.mt item=p}
        <label class="sidebar__element-label">
            <input type="checkbox" class="filter_check sidebar__element-checkbox checkbox {$p.dopcl}" data-plist='{$p.prm}' value="{$p.id}" {$p.ch}  {$p.dsbl}>
            <span class="sidebar__element-span {$p.dopcl}"> {$p.t} </span>
        </label>
        {/foreach}
    </div>
</div>
{/if}

{if $filter.iz|@count gt 0}
    <div class="sidebar__element">
        <div class="sidebar__element-title" data-opened="1">Изоляция</div>
        <div class="sidebar__element-wrapper"  data-ftype="iz">
            {foreach from=$filter.iz item=p}
                <label class="sidebar__element-label">
                    <input type="checkbox" class="filter_check sidebar__element-checkbox checkbox {$p.dopcl}" data-plist='{$p.prm}' value="{$p.id}" {$p.ch}  {$p.dsbl}>
                    <span class="sidebar__element-span {$p.dopcl}"> {$p.t} </span>
                </label>
            {/foreach}
        </div>
    </div>
{/if}

{if $filter.armor[0].v || $filter.ekran[0].v}
<div class="sidebar__element">
    <div class="sidebar__element-title" data-opened="1">Броня и экран</div>
    <div class="sidebar__element-wrapper" data-ftype="ar">
        <label class="sidebar__element-label">
            <input type="checkbox" name="noarek_ch"  value="1" class="filter_check sidebar__element-checkbox checkbox {$filter.noarek[0].dopcl}"  data-plist='{$filter.noarek[0].prm}'  {$filter.noarek[0].ch} {$filter.noarek[0].dsbl}>
            <span class="sidebar__element-span {$filter.noarek[0].dopcl}">
               	{if $filter.armor[0].v && $filter.ekran[0].v}
                   Без брони и экрана
                {elseif $filter.armor[0].v && !$filter.ekran[0].v}
                   Без брони
                {elseif !$filter.armor[0].v && $filter.ekran[0].v}
                   Без экрана
                {/if}
            </span>
        </label>

        {if $filter.armor[0].v}
        <label class="sidebar__element-label">
            <input type="checkbox" class="filter_check sidebar__element-checkbox checkbox {$filter.armor[0].dopcl}" name="armor_ch" value="2"  data-plist='{$filter.armor[0].prm}' {$filter.armor[0].ch} {$filter.armor[0].dsbl}>
            <span class="sidebar__element-span {$filter.armor[0].dopcl}">Бронированный</span>
        </label>
        {/if}

        {if $filter.ekran[0].v}
        <label class="sidebar__element-label">
            <input type="checkbox" class="filter_check sidebar__element-checkbox checkbox {$filter.ekran[0].dopcl}" name="ekran_ch" value="3" data-plist='{$filter.ekran[0].prm}' {$filter.ekran[0].ch} {$filter.ekran[0].dsbl}>
            <span class="sidebar__element-span {$filter.ekran[0].dopcl}">Экранированный</span>
        </label>
        {/if}
    </div>
</div>
{/if}

{if $filter.tp|@count gt 0}
<div class="sidebar__element">
    <div class="sidebar__element-title" data-opened="1">Тип кабеля</div>
    <div class="sidebar__element-wrapper"  data-ftype="tp">
        {foreach from=$filter.tp item=p}
        <label class="sidebar__element-label">
            <input type="checkbox" class="filter_check sidebar__element-checkbox checkbox {$p.dopcl}" value="{$p.id}" data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
            <span class="sidebar__element-span {$p.dopcl}">{$p.t} <span class="sidebar__element-span--gray"> ({$p.d})</span></span>
        </label>
        {/foreach}
    </div>
</div>
{/if}

{if $filter.tm|@count gt 0}
    <div class="sidebar__element">
        <div class="sidebar__element-title" data-opened="1">Температурный режим</div>
        <div class="sidebar__element-wrapper"  data-ftype="tm">
            {foreach from=$filter.tm item=p}
                <label class="sidebar__element-label">
                    <input type="checkbox" class="filter_check sidebar__element-checkbox checkbox {$p.dopcl}" data-plist='{$p.prm}' value="{$p.id}" {$p.ch}  {$p.dsbl}>
                    <span class="sidebar__element-span {$p.dopcl}"> {$p.t} <span class="sidebar__element-span--gray"> ({$p.d})</span></span>
                </label>
            {/foreach}
        </div>
    </div>
{/if}

{if $filter.pr|@count gt 0}
    <div class="sidebar__element">
        <div class="sidebar__element-title" data-opened="1">Количество пар</div>
        <div class="sidebar__element-wrapper"  data-ftype="pr">
            <div class="sidebar__element-container">
                {foreach from=$filter.pr item=p}
                    <label class="sidebar__element-label sidebar__element-number">
                        <input type="checkbox" class="filter_check sidebar__element-counter checkbox-number"  value="{$p.v}"  data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                        <span class="checkbox-number__text">{$p.v}</span>
                    </label>
                {/foreach}
            </div>
        </div>
    </div>
{/if}

{if $filter.zi|@count gt 0}
<div class="sidebar__element">
    <div class="sidebar__element-title" data-opened="1">Количество жил</div>
    <div class="sidebar__element-wrapper"  data-ftype="zi">
        <div class="sidebar__element-container">
            {foreach from=$filter.zi item=p}
            <label class="sidebar__element-label sidebar__element-number">
                <input type="checkbox" class="filter_check sidebar__element-counter checkbox-number"  value="{$p.v}"  data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                <span class="checkbox-number__text">{$p.v}</span>
            </label>
            {/foreach}
        </div>
    </div>
</div>
{/if}

{if $filter.sc|@count gt 0}
<div class="sidebar__element">
    <div class="sidebar__element-title" data-opened="1">Сечение</div>
    <div class="sidebar__element-wrapper"  data-ftype="sc">
        <div class="sidebar__element-container">
            {foreach from=$filter.sc item=p}
            <label class="sidebar__element-label sidebar__element-number">
                <input type="checkbox" class="filter_check sidebar__element-counter checkbox-number" value="{$p.v}"  data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                <span class="checkbox-number__text">{$p.v}</span>
            </label>
            {/foreach}
        </div>
    </div>
</div>
{/if}

{if $filter.s2|@count gt 0}
    <div class="sidebar__element">
        <div class="sidebar__element-title" data-opened="1">Сечение несущей жилы</div>
        <div class="sidebar__element-wrapper"  data-ftype="s2">
            <div class="sidebar__element-container">
                {foreach from=$filter.s2 item=p}
                    <label class="sidebar__element-label sidebar__element-number">
                        <input type="checkbox" class="filter_check sidebar__element-counter checkbox-number" value="{$p.v}"  data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                        <span class="checkbox-number__text">{$p.v}</span>
                    </label>
                {/foreach}
            </div>
        </div>
    </div>
{/if}

{if $filter.s3|@count gt 0}
    <div class="sidebar__element">
        <div class="sidebar__element-title" data-opened="1">Сечение жилы освещения</div>
        <div class="sidebar__element-wrapper"  data-ftype="s3">
            <div class="sidebar__element-container">
                {foreach from=$filter.s3 item=p}
                    <label class="sidebar__element-label sidebar__element-number">
                        <input type="checkbox" class="filter_check sidebar__element-counter checkbox-number" value="{$p.v}"  data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                        <span class="checkbox-number__text">{$p.v}</span>
                    </label>
                {/foreach}
            </div>
        </div>
    </div>
{/if}

{if $filter.ek|@count gt 0}
    <div class="sidebar__element">
        <div class="sidebar__element-title" data-opened="1">Экран</div>
        <div class="sidebar__element-wrapper"  data-ftype="ek">
            <div class="sidebar__element-container">
                {foreach from=$filter.ek item=p}
                    <label class="sidebar__element-label sidebar__element-number">
                        <input type="checkbox" class="filter_check sidebar__element-counter checkbox-number" value="{$p.v}"  data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                        <span class="checkbox-number__text">{$p.v}</span>
                    </label>
                {/foreach}
            </div>
        </div>
    </div>
{/if}