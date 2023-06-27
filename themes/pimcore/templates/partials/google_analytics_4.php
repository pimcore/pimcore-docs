<!-- Google tag (gtag.js) -->
<script async src=https://www.googletagmanager.com/gtag/js?id=<?= $analytics ?>></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function tag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', '<?= $analytics ?>');
</script>
