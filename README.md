# Taiga Contrib Cookie Warning

&gt; **READ THIS FIRST!**: We recently announced Taiga plans for the future and they greatly affect how we manage this repository and the current Taiga 6 release. Check it [here](https://blog.taiga.io/announcing_taiganext.html).

[![Managed with Taiga.io](https://img.shields.io/badge/managed%20with-TAIGA.io-709f14.svg)](https://tree.taiga.io/project/taiga/ "Managed with Taiga.io")

The Taiga plugin to show the cookie warning message 'C is For Cookie'.

## Production env

### Taiga Front

Download in your `dist/plugins/` directory of Taiga front the `taiga-contrib-cookie-warning` compiled code (you need subversion in your system):

```bash
  cd dist/
  mkdir -p plugins
  cd plugins
  svn export "https://github.com/kaleidos-ventures/taiga-contrib-cookie-warning/branches/stable/dist"  "cookie-warning"
```

Include in your `dist/conf.json` in `privacyPolicyUrl` the url to the information of your Privacy Policy and in the `contribPlugins` list the value `"plugins/cookie-warning/cookie-warning.json"`:

```json
...
    "privacyPolicyUrl": "http://example.com/privacy-policy.html"
    "contribPlugins": [
        (...)
        "plugins/cookie-warning/cookie-warning.json"
    ]
...
```

## Dev env

### Taiga Front

After clone the repo link `dist` in `taiga-front` plugins directory:

```bash
  cd taiga-front/dist
  mkdir -p plugins
  cd plugins
  ln -s ../../../taiga-contrib-cookie-warning/dist cookie-warning
```

Include in your `dist/conf.json` in `privacyPolicyUrl` the url to the information of your Privacy Policy and in the `contribPlugins` list the value `"plugins/cookie-warning/cookie-warning.json"`:

```json
...
    "privacyPolicyUrl": "http://example.com/privacy-policy.html"
    "contribPlugins": [
        (...)
        "plugins/cookie-warning/cookie-warning.json"
    ]
...
```

In the plugin source dir `taiga-contrib-cookie-warning` run

```bash
  npm install
```

and use:

- `gulp` to regenerate the source and watch for changes.
- `gulp build` to only regenerate the source.

## Documentation

Currently, we have authored three main documentation hubs:

- **[API](https://docs.taiga.io/api.html)**: Our API documentation and reference for developing from Taiga API.
- **[Documentation](https://docs.taiga.io/)**: If you need to install Taiga on your own server, this is the place to find some guides.
- **[Taiga Community](https://community.taiga.io/)**: This page is intended to be the support reference page for the users.

## Bug reports

If you **find a bug** in Taiga you can always report it:

- in [Taiga issues](https://tree.taiga.io/project/taiga/issues). **This is the preferred way**
- in [Github issues](https://github.com/kaleidos-ventures/taiga-contrib-cookie-warning/issues)
- send us a mail to support@taiga.io if is a bug related to [tree.taiga.io](https://tree.taiga.io)
- send us a mail to security@taiga.io if is a **security bug**

One of our fellow Taiga developers will search, find and hunt it as soon as possible.

Please, before reporting a bug, write down how can we reproduce it, your operating system, your browser and version, and if it's possible, a screenshot. Sometimes it takes less time to fix a bug if the developer knows how to find it.

## Community

If you **need help to setup Taiga**, want to **talk about some cool enhancemnt** or you have **some questions**, please go to [Taiga community](https://community.taiga.io/).

If you want to be up to date about announcements of releases, important changes and so on, you can subscribe to our newsletter (you will find it by scrolling down at [https://taiga.io](https://www.taiga.io/)) and follow [@taigaio](https://twitter.com/taigaio) on Twitter.

## Contribute to Taiga

There are many different ways to contribute to Taiga's platform, from patches, to documentation and UI enhancements, just find the one that best fits with your skills. Check out our detailed [contribution guide](https://community.taiga.io/t/how-can-i-contribute/159#code-patches-enhacements-3).

## Code of Conduct

Help us keep the Taiga Community open and inclusive. Please read and follow our [Code of Conduct](https://github.com/kaleidos-ventures/code-of-conduct/blob/main/CODE_OF_CONDUCT.md).

## License

Every code patch accepted in Taiga codebase is licensed under [MPL 2.0](LICENSE). You must be careful to not include any code that can not be licensed under this license.

Please read carefully [our license](LICENSE) and ask us if you have any questions as well as the [Contribution policy](https://github.com/kaleidos-ventures/taiga-contrib-cookie-warning/blob/main/CONTRIBUTING.md).
