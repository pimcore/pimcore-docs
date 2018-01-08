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
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\Process\PhpExecutableFinder;
use Symfony\Component\Process\ProcessUtils;

class ServeCommand extends Command
{
    /**
     * @var string
     */
    private $baseDir;

    public function __construct($name = null)
    {
        $this->baseDir = realpath(__DIR__ . '/../../../..');

        parent::__construct($name);
    }

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
            )
            ->addOption(
                'source', 's',
                InputOption::VALUE_REQUIRED,
                'Where to take the documentation from',
                $this->baseDir . '/build/docs'
            )
            ->addOption(
                'configuration', 'c',
                InputOption::VALUE_REQUIRED,
                'Configuration file',
                $this->baseDir . '/build/config.json'
            )
            ->addOption(
                'themes', 't',
                InputOption::VALUE_REQUIRED,
                'Set a different themes directory',
                $this->baseDir . '/themes'
            );
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $host = $input->getOption('host');
        $port = $input->getOption('port');

        $fs = new Filesystem();

        $paths = [
            'source'        => $input->getOption('source'),
            'configuration' => $input->getOption('configuration'),
            'themes'        => $input->getOption('themes'),
        ];

        $cwd = getcwd();
        foreach ($paths as $type => $path) {
            if (!$fs->isAbsolutePath($path)) {
                $paths[$type] = rtrim($cwd, '/\\') . '/' . $path;
            }
        }

        putenv('DAUX_SOURCE=' . $paths['source']);
        putenv('DAUX_CONFIGURATION=' . $paths['configuration']);
        putenv('DAUX_THEME=' . $paths['themes']);

        chdir($this->baseDir);

        $base   = ProcessUtils::escapeArgument($this->baseDir);
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
