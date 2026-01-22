# PHP Node Docker Image

A Docker image with PHP 8.3, Node.js 22, and development tools. Easy-to-use image for running Composer and npm/yarn projects.

## Quick Start

### Pull the Image

```bash
docker pull ghcr.io/username/php-node-docker:latest
```

Replace `username` with your GitHub username.

## Usage Examples

### Run Composer Commands

Install dependencies in your project directory:

```bash
docker run --rm -v $(pwd):/app ghcr.io/username/php-node-docker:latest composer install
```

Run any Composer command:

```bash
docker run --rm -v $(pwd):/app ghcr.io/username/php-node-docker:latest composer require vendor/package
```

### Run npm Commands

Install Node.js dependencies:

```bash
docker run --rm -v $(pwd):/app ghcr.io/username/php-node-docker:latest npm install
```

Run a script:

```bash
docker run --rm -v $(pwd):/app ghcr.io/username/php-node-docker:latest npm run build
```

### Run Yarn Commands

```bash
docker run --rm -v $(pwd):/app ghcr.io/username/php-node-docker:latest yarn install
```

## Create an Alias (Optional)

For easier command usage, add this to your shell profile (`.zshrc`, `.bashrc`, etc.):

```bash
alias docker-dev='docker run --rm -v $(pwd):/app ghcr.io/username/php-node-docker:latest'
```

Then use it like:

```bash
docker-dev composer install
docker-dev npm install
docker-dev yarn build
```

## What's Included

- **PHP 8.3** - Latest PHP with CLI
- **Node.js 22** - Latest Node runtime
- **Composer** - PHP dependency manager
- **npm** - Node package manager
- **Yarn** - Package manager with corepack support
- **MySQL Client** - For database operations
- **Build Tools** - Essential development utilities

## Tips

- **Always use `-v $(pwd):/app`** - This mounts your current directory into the container
- **Use `--rm`** - Automatically removes the container after execution
- **Work in any directory** - The image works with projects in any folder
- **Replace `username`** - Use your actual GitHub username in the image URL

## Troubleshooting

### Permission Issues

If you encounter permission issues with created files:

```bash
sudo chown -R $USER:$USER .
```

### Image Not Found

Make sure the image name is correct and you have access:

```bash
docker login ghcr.io
docker pull ghcr.io/username/php-node-docker:latest
```

## Support

For issues or questions, please refer to the Dockerfile configuration.
