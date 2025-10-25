# Multilingual Setup for Doublefree.in

This Jekyll website now supports both English and Marathi languages. Here's how to manage and extend the multilingual functionality.

## 🌐 Language Structure

```
/
├── _pages/           # English pages
├── _posts/           # English blog posts
├── mr/               # Marathi content
│   ├── _pages/       # Marathi pages
│   ├── _posts/       # Marathi blog posts
│   └── index.html    # Marathi homepage
├── _config_en.yml    # English configuration
├── _config_mr.yml    # Marathi configuration
└── multilingual-manager.sh  # Content management script
```

## 🚀 Quick Start

### 1. Language Switcher
The language switcher is automatically included in the navigation. Users can switch between English and Marathi using the dropdown in the top navigation.

### 2. URL Structure
- English: `https://doublefree.in/page-name`
- Marathi: `https://doublefree.in/mr/page-name`

### 3. Content Management
Use the provided script to create Marathi versions of English content:

```bash
./multilingual-manager.sh
```

## 📝 Creating New Content

### For Pages:
1. Create English version in `_pages/page-name.md`
2. Run the multilingual manager script
3. Translate the content in `mr/_pages/page-name.md`

### For Blog Posts:
1. Create English version in `_posts/YYYY-MM-DD-post-name.md`
2. Run the multilingual manager script
3. Translate the content in `mr/_posts/YYYY-MM-DD-post-name.md`

## ⚙️ Configuration Files

### `_config.yml`
Main configuration with i18n settings:
```yaml
languages: ["en", "mr"]
default_lang: "en"
exclude_from_localization: ["assets", "images", "css", "js", "vendor"]
```

### `_config_en.yml` & `_config_mr.yml`
Language-specific configurations containing:
- Site titles and descriptions
- Navigation menus
- UI text translations

## 🎨 Layouts

### Multilingual Layouts
- `page_multilingual.html` - For pages
- `single_multilingual.html` - For blog posts
- `home_multilingual.html` - For homepage

These layouts automatically handle:
- Language-specific navigation
- Proper URL routing
- Language metadata

## 🔧 Front Matter Requirements

### For English Content:
```yaml
---
title: "Page Title"
permalink: /page-name
layout: page_multilingual
lang: en
---
```

### For Marathi Content:
```yaml
---
title: "पेज शीर्षक"
permalink: /mr/page-name
layout: page_multilingual
lang: mr
---
```

## 📱 Navigation

The navigation automatically switches based on the current language:
- English pages use `site.data.navigation.main`
- Marathi pages use `site.data.navigation.main_mr`

## 🌍 SEO Considerations

Each language version has:
- Proper `lang` attributes
- Language-specific URLs
- Translated meta descriptions
- Separate sitemaps (if needed)

## 🛠️ Maintenance

### Adding New Languages
1. Add language code to `languages` array in `_config.yml`
2. Create `_config_[lang].yml` configuration file
3. Create `[lang]/` directory structure
4. Update language switcher component

### Content Updates
- Always update both English and Marathi versions
- Use the multilingual manager script for consistency
- Test language switching functionality

## 📋 Checklist for New Content

- [ ] Create English version with proper front matter
- [ ] Use multilingual manager script to create Marathi version
- [ ] Translate all content (title, body, meta descriptions)
- [ ] Update navigation if needed
- [ ] Test both language versions
- [ ] Verify language switcher works correctly

## 🎯 Best Practices

1. **Consistency**: Keep both language versions in sync
2. **Quality**: Ensure proper Marathi translations
3. **Testing**: Always test language switching
4. **SEO**: Use proper language-specific URLs
5. **Accessibility**: Include proper `lang` attributes

## 🆘 Troubleshooting

### Language Switcher Not Working
- Check if `language-switcher.html` is included in masthead
- Verify JavaScript is loading correctly
- Ensure proper URL structure

### Content Not Showing
- Verify front matter includes `lang` attribute
- Check permalink structure
- Ensure layout is set to multilingual version

### Navigation Issues
- Check `_data/navigation.yml` for both language menus
- Verify language-specific navigation logic in layouts

## 📞 Support

For issues with the multilingual setup, check:
1. Jekyll build logs for errors
2. Browser console for JavaScript issues
3. File structure matches the expected format

---

**Note**: This setup uses Jekyll's built-in i18n capabilities with custom layouts and components for enhanced multilingual support.
