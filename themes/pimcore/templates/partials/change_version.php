<?php if(!empty($params['version']) && !empty($params['version_map'])) { ?>

    <?php
        $versions = array_keys($params['version_map']);
        rsort($versions);
    ?>

    <?php if(count($versions) > 1) { ?>

        <span class="version-switcher">
            Version:
            <select onchange="document.location.href=this.value">

                <?php foreach($versions as $version) { ?>
                    <?php if(!empty($params['version_map'][$version][$page['relative_path']])) { ?>
                        <option
                                value="<?= $params['version_switch_path_prefix']?>/<?= $version ?>/<?= $page['request'] ?>"
                                <?= $version == $params['version'] ? 'SELECTED' : '' ?>
                        >
                            <?= $version ?>
                        </option>
                    <?php } ?>
                <?php } ?>

            </select>
        </span>


    <?php } ?>

<?php } ?>