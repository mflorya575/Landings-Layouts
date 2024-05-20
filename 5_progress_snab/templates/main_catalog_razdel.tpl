<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Категории раздела {$title} - {$sitename}</title>

    {include file='css_js.tpl'}
</head>

<body>
<div class="page" id="to-top">
    <!--FIXED-->
    {include file="loginblock.tpl"}

    <div class="to-top">
      <span>
        <img class=" opener" id="to-top" src="/assets/icon/to-top.svg" alt="">
      </span>
    </div>
    <!--HEADER-->
    <header class="header">
       {include file='header.tpl'}
    </header>

    <!--MAIN-->
    <main class="main">
        <div class="container">

            <div class="catalog_block" style="margin-top:10px">
                {foreach $categs as $ctg}
                    <a class="catalog_link" href="/catalog/cable/marks/{$ctg.parent}/{$ctg.idk}/">{$ctg.title}</a><br>
                {/foreach}
            </div>
        </div>
    </main>

    <div class="container" style="min-height:300px">

    </div>

    <!--FOOTER-->
    {include file='footer.tpl'}
</div>

{include file='popups.tpl'}
{include file='bottomjs.tpl'}
</body>

</html>