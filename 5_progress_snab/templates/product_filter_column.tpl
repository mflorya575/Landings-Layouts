{if $filters.filters}
{if $filtermode}
    <button data-ftype="1" class="switch_mode">Сохранить и показать как юзеру</button>
    <button data-vmode="1" class="switch_visible_mode">Всё показать</button>
{else}
    <button  data-ftype="0" class="switch_mode">Редактирование</button>
    <input type="button" class="apply_filters" value="Применить">
{/if}
{/if}

{if $filters.subcategs}
<div class="sidebar__element" >
    <div class="sidebar__element-title arrow--active" data-opened="1">Подкатегории</div>

    <div class="sidebar__element-wrapper2  show">
        <div class="sidebar__element-container">
            {foreach from=$filters.subcategs item=s}
                <a href="/catalog/{$s.url}" class="sidebar__element-link" style="padding-bottom:10px">{$s.t}</a>
            {/foreach}
        </div>
    </div>
</div>
{/if}

{foreach from=$filters.filters item=f}

    <div class="sidebar__element filters_list" >
        <div class="sidebar__element-title arrow--active" data-opened="1">{$f.ftitle}{if $f.edizm}, {$f.edizm}{/if}
            {if ($f.edizm && (1==0))}
            <span class="tooltip-wr">
                <div class="icon-info"><img src="/assets/icon/icon-info.svg"/></div>
                <span class="tooltip tooltip_left">
                    <span class="tooltip__text2">
                         Единица измерения - {$f.edizm}
                    </span>
                </span>
            </span>
            {/if}
        </div>

        <div class="sidebar__element-wrapper2 valuelist show"  data-tp="{$f.tp}" data-ftype="{$f.type}" data-fid="{$f.id}">
            <div class="sidebar__element-container">
                {if $f.tp==1}
                {foreach from=$f.val item=p}
                    {if $f.type == 0}
                    <label class="sidebar__element-label sidebar__element-number">
                        <input type="checkbox" class="filter_check2 sidebar__element-counter checkbox-number  {$p.dopcl}" value="{$p.v}"  data-fvid="0" data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                        <span class="{if $f.cls==1}checkbox-number__text{elseif $f.cls==2}checkbox-number__text_long{elseif $f.cls==3}checkbox-number__text_long2{/if}  {$p.dopcl}">{$p.v}</span>
                    </label>
                    {elseif $f.type==1}
                    <label class="sidebar__element-label" style="width:100%">
                        <input type="checkbox" class="filter_check2 sidebar__element-checkbox checkbox_big {$p.dopcl}" value="{$p.id}"  data-fvid="{$p.id}" data-plist='{$p.prm}' {$p.ch} {$p.dsbl}>
                        <span class="sidebar__element-span {$p.dopcl}" style="margin-top: 0px">{$p.v}</span>
                    </label>
                    {/if}
                {/foreach}
                {elseif $f.tp==2}
                    От:&nbsp;<input type="text" value="{$f.diap_first}" class="filter_inptext diap_from" style="width:50px">&nbsp;&nbsp;&nbsp;&nbsp;
                    До:&nbsp;<input type="text" value="{$f.diap_last}" class="filter_inptext diap_to" style="width:50px">
                    <div class="slider-range" style="width:100%;margin-top:10px"></div>

                {/if}
            </div>
        </div>

        {if $filtermode}
        <div class="sidebar__element-wrapper2 settings  show"  data-ftype="p_{$f.id}" data-fid="{$f.id}">
            <b>Настройки:</b>
            <label class="sidebar__element-label" style="width:100%">
                <input type="checkbox" class="settings_check sidebar__element-checkbox checkbox_big" value="1" {if $f.vs}checked{/if}>
                <span class="sidebar__element-span" style="margin-top: 3px">Показывать</span>
            </label>
            N в списке: <input type="text" class="sett_pos" name="num_{$f.id}" value="{$f.n}" style="padding-left:3px;width:40px"><br>
            {if $f.dp}
            <select class="ft_type_list">
                <option value="1" {if $f.tp==1}selected{/if}>Чекбоксы</option>
                <option value="2" {if $f.tp==2}selected{/if}>Диапазон</option>
            </select>
            {else}
             <!--<input type="hidden" class="ft_type_list" value="1">-->
            {/if}
        </div>
        {/if}
    </div>
{/foreach}

{if $filters.filters}
{if $filtermode}
    <button data-ftype="1" class="switch_mode">Сохранить и показать как юзеру</button>
{else}
    <input type="button" class="apply_filters" value="Применить">
{/if}
{/if}
