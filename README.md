# jekyll-themed-console

Simple solution


## Demo

Download a Debian livecd

sudo rm /etc/apt/sources.list
echo 'deb https://deb.debian.org/debian/ buster main' | sudo tee -a /etc/apt/sources.list
echo '#deb-src http://deb.debian.org/debian/ buster' | sudo tee -a /etc/apt/sources.list
sudo apt update

sudo apt-get install ruby-full build-essential zlib1g-dev git

echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

gem install jekyll bundler

git clone https://github.com/0DayProtect/jekyll-themed-console.git
cd jekyll-themed-console
bundle install
bundle exec jekyll serve

#If you have to rebuild jekyll
#apt remove jekyll
#apt autoremove
#bundle update

#Extract the theme
bundle update
bundle exec jekyll serve



## Installation


### Default Remote theme method for GitHub Pages

Use this method for sites hosted with GitHub Pages only. To install:

1. Set `remote_theme` in your project's Jekyll `_config.yml` file:
   
   ```yaml
   remote_theme: 0dayprotect/jekyll-themed-console
   ```

### Local Gem-based method

With Gem-based themes, directories such as the `assets`, `_layouts`, `_includes`, and `_sass` are stored in the theme’s gem, hidden from your immediate view. Yet all of the necessary directories will be read and processed during Jekyll’s build process.

This allows for easier installation and updating as you don't have to manage any of the theme files. To install:

1. Add this line to your Jekyll site's `Gemfile`:
   
   ```ruby
   gem "jekyll-themed-console"
   ```

2. Fetch and update bundled gems by running the following [Bundler](http://bundler.io/) command:

   ```bash
   bundle
   ```

3. Set `theme` in your project's Jekyll `_config.yml` file:
   
   ```yaml
   theme: jekyll-themed-console
   ```
   
To update the theme run `bundle update`.

## Usage

In addition to jekyll's default configuration options, you can provide:
- `header_pages` to specify which pages should be displayed in navbar
- `footer` string, which will be inserted on the end of the page (doesn't support markup, but html)
- `google_analytics` tracking id (tracking will be enabled only in production environments)
- `listen_for_clients_preferred_style` boolean, used to allow users to choose theme based on their preferences (mostly affected by OS dark or light theme, details see https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-color-scheme)

```yaml
header_pages:
  - index.md
  - about.md

style: dark 
listen_for_clients_preferred_style:false

footer: '<a href="https://0dayprotect.com/">Download</a>'

#google_analytics: UA-NNNNNNNN-N
```

## Customization

If you want to customize this theme, follow this steps:
1. Fork this repository (you can use the fork as your own theme or directly as your website)
2. Create or modify files in `_layouts` directory for html-based changes
3. Create or modify files in `_sass` and `assets` for css-based changes
   - You can change things which are used in light and dark theme (like font-size) in `_sass/base.scss`. You'll find style variables at the top.
   - Style-specific definitions are in `_sass/_dark.scss` respectively in `_sass/_light.scss`. You can change things like background-color there.

## Contributing


## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-themed-console.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
