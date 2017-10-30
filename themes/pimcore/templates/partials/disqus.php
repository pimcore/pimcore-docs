<hr class="disqus-separator">

<div id="disqus_thread"></div>
<script>

    <?php
    $pageUrl = 'https://www.pimcore.org/docs/latest/';
    $pageUrl = $pageUrl . str_replace('Development_Documentation/', '', $page['request']) . '.html';

    $identifier = str_replace("_index.md", "README.md", $page['relative_path']);
    $identifier = str_replace('Development_Documentation/', '', $identifier);
    ?>

    var disqus_config = function () {
        this.page.url = "<?= $pageUrl ?>";  // Replace PAGE_URL with your page's canonical URL variable
        this.page.identifier = "<?= $identifier ?>"; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
    };

    (function() { // DON'T EDIT BELOW THIS LINE
        var d = document, s = d.createElement('script');
        s.src = '//pimcore-org-docs.disqus.com/embed.js';
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
