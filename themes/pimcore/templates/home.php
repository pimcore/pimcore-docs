<?php $this->layout('theme::layout/05_page') ?>

<?php $this->start('classes') ?>homepage<?php $this->stop() ?>

<article class="Page">

    <div class="Page__header">
        <p class="breadcrumbs"></p>
    </div>

    <?php $this->insert('theme::partials/edit_on', ['page' => $page, 'params' => $params]) ?>

    <div class="s-content">
        <?= $page['content']; ?>

        <?php if (!empty($params['html']['homepage_links'] ?? [])): ?>

            <div class="Columns Columns__landing">

                <?php foreach ($params['html']['homepage_links'] as $title => $link): ?>

                    <div class="Columns__left">
                        <h2><?= $title ?></h2>
                        <?= $this->get_navigation($tree[$link], './' . $link, isset($params['request']) ? $params['request'] : '', $base_page, 0); ?>
                    </div>

                <?php endforeach; ?>

            </div>

        <?php endif; ?>
    </div>

    <?php $this->insert('theme::partials/disqus', ['page' => $page]) ?>

</article>
