#!/usr/bin/env php
<?php

declare(strict_types=1);

/**
 * Pimcore
 *
 * This source file is available under two different licenses:
 * - GNU General Public License version 3 (GPLv3)
 * - Pimcore Enterprise License (PEL)
 * Full copyright and license information is available in
 * LICENSE.md which is distributed with this source code.
 *
 * @copyright  Copyright (c) Pimcore GmbH (http://www.pimcore.org)
 * @license    http://www.pimcore.org/license     GPLv3 and PEL
 */

use Symfony\Component\Console\Application;

require_once __DIR__ . '/../vendor/autoload.php';

$application = new Application('Pimcore Documentation Generator');
$application->addCommands([
    new \Pimcore\Documentation\Console\PrepareCommand(),
    new \Pimcore\Documentation\Console\ServeCommand(),
    new \Pimcore\Documentation\Console\GenerateCommand()
]);

$application->run();
