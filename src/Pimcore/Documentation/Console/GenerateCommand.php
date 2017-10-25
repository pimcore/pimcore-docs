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

namespace Pimcore\Documentation\Console;

use Todaymade\Daux\Console\Generate;

class GenerateCommand extends Generate
{
    protected function configure()
    {
        parent::configure();

        $definition = $this->getDefinition();

        $definition
            ->getOption('source')
            ->setDefault('build/docs');

        $definition
            ->getOption('configuration')
            ->setDefault('build/config.json');

        $definition
            ->getOption('themes')
            ->setDefault('themes');

        $definition
            ->getOption('destination')
            ->setDefault('build/static');
    }
}
