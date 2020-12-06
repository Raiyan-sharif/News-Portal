FROM php:7.4-cli
COPY . /Applications/XAMPP/xamppfiles/htdocs/News-Portal
WORKDIR /Applications/XAMPP/xamppfiles/htdocs/News-Portal
CMD ["php", "./index.php"]