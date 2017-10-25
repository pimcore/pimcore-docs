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

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Process\PhpExecutableFinder;
use Symfony\Component\Process\ProcessUtils;

class ServeCommand extends Command
{
    protected function configure()
    {
        $this
            ->setName('serve')
            ->setDescription('Serve documentation')
            ->addOption(
                'host', null,
                InputOption::VALUE_REQUIRED,
                'The host to serve on',
                'localhost'
            )
            ->addOption(
                'port', null,
                InputOption::VALUE_REQUIRED,
                'The port to serve on',
                8085
            );
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $host = $input->getOption('host');
        $port = $input->getOption('port');

        $baseDir = realpath(__DIR__ . '/../../../..');
        chdir($baseDir . '/docs');

        putenv('DAUX_SOURCE=' . $baseDir . '/docs/docs');
        putenv('DAUX_THEME=' . $baseDir . '/docs/themes');
        putenv('DAUX_CONFIGURATION=' . $baseDir . '/docs/config.json');
        putenv('DAUX_EXTENSION=' . $baseDir . '/src/Todaymade/Daux/Extension');

        $base   = ProcessUtils::escapeArgument($baseDir);
        $binary = ProcessUtils::escapeArgument((new PhpExecutableFinder)->find(false));

        echo "Daux development server started on http://{$host}:{$port}/\n";

        if (defined('HHVM_VERSION')) {
            if (version_compare(HHVM_VERSION, '3.8.0') >= 0) {
                passthru("{$binary} -m server -v Server.Type=proxygen -v Server.SourceRoot={$base}/ -v Server.IP={$host} -v Server.Port={$port} -v Server.DefaultDocument=server.php -v Server.ErrorDocument404=server.php");
            } else {
                throw new \Exception("HHVM's built-in server requires HHVM >= 3.8.0.");
            }
        } else {
            passthru("{$binary} -S {$host}:{$port} {$base}/index.php");
        }
    }
}
