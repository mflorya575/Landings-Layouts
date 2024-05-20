{foreach $categs as $ctg}
    <h2 style="catalog_h2"><a class="catalog_link_h2" href="/catalog/{$ctg.url}">{$ctg.t}</a></h2>
    {foreach $ctg.children as $ch}
        <a class="catalog_link" href="/catalog/{$ch.url}">{$ch.t}</a><br>
    {/foreach}
    <br><br>
{/foreach}