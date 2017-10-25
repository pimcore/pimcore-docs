<?php $this->layout('theme::layout/05_page') ?>
<article class="Page">

    <div class="Page__header">
        <p class="breadcrumbs">
            <?= $page['breadcrumbs'] ? $this->get_breadcrumb_title($page, $base_page) : $page['title'] ?>
        </p>

        <?php if ($params['html']['date_modified']) { ?>
        <span style="float: left; font-size: 10px; color: gray;">
            <?= date("l, F j, Y g:i A", $page['modified_time']); ?>
        </span>
        <?php } ?>
    </div>

    <?php
    $edit_on = $params->getHTML()->getEditOn();
    if ($edit_on) { ?>
        <span class="edit_on">
            <a href="<?= $edit_on['basepath'] ?>/<?= str_replace('_index.md', 'README.md', $page['relative_path']) ?>" target="_blank">Edit on <?= $edit_on['name'] ?></a>
        </span>
    <?php } ?>

    <div class="s-content">
        <?= $page['content']; ?>
    </div>

    <?php
    $buttons = (!empty($page['prev']) || !empty($page['next']));
    $has_option = array_key_exists('jump_buttons', $params['html']);
    if ($buttons && (($has_option && $params['html']['jump_buttons']) || !$has_option)) {
    ?>
    <nav>
        <ul class="Pager">
            <?php if (!empty($page['prev'])) {
        ?><li class=Pager--prev><a href="<?= $base_url . $page['prev']->getUrl() ?>">Previous</a></li><?php

    } ?>
            <?php if (!empty($page['next'])) {
        ?><li class=Pager--next><a href="<?= $base_url . $page['next']->getUrl() ?>">Next</a></li><?php

    } ?>
        </ul>
    </nav>
    <?php

} ?>

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

</article>

