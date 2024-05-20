<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{if isset($title)}{$title}{else}{$sitename}{/if}</title>

    {include file='css_js.tpl'}
    <META NAME="robots" CONTENT="noindex,nofollow"/>
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
            <div style="margin-top:10px">
                <b {if $mode==1}style="color:red"{/if}>{$message}</b>
            </div>
        </div>

        <!--watched-->
        <div class="container" style="min-height:300px">
            <div class="watched">
                <div class="watched__content">
                    <div class="watched__container">
                        <div class="watched__wrapper swiper-wrapper">
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </main>

    <!--FOOTER-->
    {include file='footer.tpl'}
</div>

{include file='popups.tpl'}
{include file='bottomjs.tpl'}
</body>

</html>