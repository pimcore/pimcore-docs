<?php $this->layout('theme::layout/05_page') ?>

<?php $this->start('classes') ?>homepage<?php $this->stop() ?>

<article class="Page">

    <div class="Page__header">
        <p class="breadcrumbs"></p>
    </div>

    <?php $this->insert('theme::partials/edit_on', ['page' => $page, 'params' => $params]) ?>

    <div class="s-content">
        <?= $page['content']; ?>

        <div class="Columns Columns__landing">
            <div class="Columns__left">
                <h2>Development Documentation</h2>
                <?= $this->get_navigation($tree['Development_Documentation'], './Development_Documentation', isset($params['request']) ? $params['request'] : '', $base_page, 0); ?>
            </div>
            <div class="Columns__right">
                <h2>User Documentation</h2>
                <?= $this->get_navigation($tree['User_Documentation'], './User_Documentation', isset($params['request']) ? $params['request'] : '', $base_page, 0); ?>
            </div>
        </div>
    </div>

    <?php $this->insert('theme::partials/disqus', ['page' => $page]) ?>

</article>
