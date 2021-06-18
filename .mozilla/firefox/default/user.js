// Firefox Zero user.js
 
// Privacy & Local Storage
user_pref("browser.sessionstore.privacy_level", 2); // Never store extra session data
user_pref("browser.bookmarks.max_backups", 0); // No bookmarks backup
user_pref("browser.cache.disk.enable", false); // Disable disk cache
user_pref("browser.cache.offline.enable", false); // Disable offline cache
user_pref("browser.messaging-system.whatsNewPanel.enabled", false); 
//user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false); // Disable new tab page widgets 
//user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);
//user_pref("browser.newtabpage.activity-stream.discoverystream.enabled", false);
//user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
//user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
// user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
// user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
// user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
// user_pref("browser.newtabpage.activity-stream.telemetry", false);
// user_pref("browser.newtabpage.activity-stream.showSearch", false);
//user_pref("browser.newtabpage.enabled", false); // Disable newtab page
user_pref("browser.newtabpage.activity-stream.default.sites", ""); // Clear new tab activity stream default sites
user_pref("browser.fixup.alternate.enabled", false); // Disables domain naming reparing/guessing
user_pref("browser.urlbar.trimURLs", false); // Force display of full url
// user_pref("browser.privatebrowsing.autostart", true); // Always private mode
user_pref("browser.sessionstore.max_tabs_undo", 5); // No tab restore
user_pref("browser.startup.homepage", "about:blank"); // Blank startup
user_pref("signon.autofillForms", false); // Disable autofill
user_pref("signon.rememberSignons", false); // No passwords
user_pref("startup.homepage_welcome_url", ""); // This disables Firefox homepage 

// Search Bar Results
user_pref("browser.search.suggest.enabled", false); // Disable search suggestions from the search bar
user_pref("browser.urlbar.suggest.searches", true); // Disable search suggestions from url bar
user_pref("browser.search.update", false); // Disable search engine changes
user_pref("browser.urlbar.maxRichResults", 1);
user_pref("browser.urlbar.speculativeConnect.enabled", false); // Disable autocomplete URLs
// user_pref("keyword.enabled", false); Disable search
user_pref("browser.urlbar.dnsResolveSingleWordsAfterSearch", 0); // Disable autocorrect

// Network Configuration
user_pref("browser.region.network.url", "");
user_pref("captivedetect.canonicalURL", "");
user_pref("dom.security.https_only_mode", true); // HTTPS only mode
user_pref("network.captive-portal-service.enabled", false); // Disable captive portal
user_pref("network.connectivity-service.enabled", false);
user_pref("network.cookie.cookieBehavior", 1); // Block 3p cookies
user_pref("network.dns.disablePrefetch", true); // Disable DNS prefetching
user_pref("network.http.referer.XOriginPolicy", 1); // Block 3p referers
user_pref("network.predictor.enabled", false); // Disable predictor
user_pref("network.prefetch-next", false); // Disable link prefetching
user_pref("network.trr.bootstrapAddress", "9.9.9.9");
user_pref("network.trr.mode", 3); // DNS-over-HTTPS
user_pref("network.trr.uri", "https://dns9.quad9.net/dns-query");
user_pref("network.IDN_show_punycode", true); // Protects against phishing
user_pref("network.http.speculative-parallel-limit", 0);
// user_pref("network.dns.disableIPv6", true);

// Device Fingerprinting
user_pref("privacy.donottrackheader.enabled", true); // Do not track header
user_pref("beacon.enabled", false); // Disable beacon
user_pref("dom.battery.enabled", false); // Disable battery status
user_pref("dom.event.clipboardevents.enabled", false); // Disable clipboard events
user_pref("dom.gamepad.enabled", false); // Disable USB devices
user_pref("dom.push.enabled", false); // Disable push service
user_pref("dom.webnotifications.enabled", false); // Disable desktop notifications
user_pref("geo.enabled", false); // Disable geolocation
user_pref("geo.provider.network.url", "");
user_pref("media.navigator.enabled", false); // Disable mic and camera
user_pref("media.peerconnection.enabled", false); // Disable WebRTC
user_pref("media.webspeech.synth.enabled", false); // Disable speech synthesis
user_pref("privacy.firstparty.isolate", true); // Restrict data to domain level
user_pref("webgl.disabled", true); // Disable WebGL
user_pref("webgl.enable-webgl2", false);
user_pref("browser.send_pings", false); // Disable tracking clicks

user_pref("media.peerconnection.turn.disable", true); // Other WebRTC settings
user_pref("media.peerconnection.use_document_iceservers", false); // Other WebRTC settings
user_pref("media.peerconnection.video.enabled", false); // Other WebRTC settings
user_pref("media.peerconnection.identity.timeout", 1); // Other WebRTC settings

//user_pref("geo.provider.ms-windows-location", false); // [WINDOWS]
//user_pref("geo.provider.use_corelocation", false); // [MAC]
user_pref("geo.provider.use_gpsd", false); // [LINUX]

user_pref("browser.region.network.url", ""); // [FF78+] Disable region updates
user_pref("browser.region.update.enabled", false); // [[FF79+] 

user_pref("media.getusermedia.screensharing.enabled", false);
user_pref("media.getusermedia.browser.enabled", false);
user_pref("media.getusermedia.audiocapture.enabled", false);

// Telemetry & Shield
user_pref("app.normandy.api_url", "");
user_pref("app.normandy.enabled", false); // Disable shield telemetry
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false); // Disable all technical data
user_pref("datareporting.policy.firstRunURL", "");
user_pref("toolkit.telemetry.server", "");
user_pref("toolkit.telemetry.unified", false); // Disable Fx telemetry
user_pref("toolkit.coverage.endpoint.base", "");
user_pref("breakpad.reportURL", ""); // Disable crash reports
user_pref("browser.tabs.crashReporting.sendReport", false); // [FF44+] 
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false); // [DEFAULT: false]
user_pref("browser.ping-centre.telemetry", false);

// Add-ons Behavior
user_pref("extensions.allowPrivateBrowsingByDefault", true); // Not sure what this does, but when enabled, prevents temporary container tabs from running.
user_pref("extensions.blocklist.enabled", false); // Disable blocklist
user_pref("extensions.getAddons.cache.enabled", false);
user_pref("extensions.getAddons.discovery.api_url", "");
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false); // Disable add-ons recommendations
user_pref("extensions.systemAddon.update.enabled", false); // Disable system add-ons updates
user_pref("extensions.systemAddon.update.url", "");
user_pref("extensions.update.autoUpdateDefault", false); // Disable autoinstall extension updates
user_pref("extensions.update.enabled", false); // Disable autochecking for extension updates

// Features & Media Plugins
user_pref("accessibility.force_disabled", 1);
user_pref("extensions.formautofill.available", "off"); // Disable autofill
user_pref("extensions.pocket.enabled", false); // Disable pocket
user_pref("extensions.screenshots.disabled", true); // Disable screenshots
user_pref("extensions.webcompat-reporter.enabled", false); // Disable report this site
user_pref("identity.fxaccounts.enabled", false); // Disable Fx accounts
user_pref("media.eme.enabled", false); // Disable EME for DRM content
user_pref("media.gmp-gmpopenh264.enabled", false); // Disable OpenH264 for WebRTC
user_pref("media.gmp-manager.url", "");
user_pref("media.gmp-provider.enabled", false);
user_pref("media.gmp-widevinecdm.enabled", false); // Disable Widevine CDM
user_pref("browser.contentblocking.category", custom) // Custom content blocking settings 
user_pref("privacy.trackingprotection.cryptomining.enabled", true);
user_pref("privacy.trackingprotection.enabled", true); // Redundant with uBlock0
user_pref("privacy.trackingprotection.fingerprinting.enabled", true);
user_pref("privacy.trackingprotection.pbmode.enabled", true);
user_pref("services.settings.server", ""); // Disable contacting settings server
user_pref("signon.management.page.breach-alerts.enabled", false);
user_pref("mousewheel.with_meta.action", 0); // Disables Win+scroll

// Miscellaneous
user_pref("browser.aboutConfig.showWarning", false); // Disable modify warning
user_pref("browser.shell.checkDefaultBrowser", false); // Disable default check
user_pref("browser.uidensity", 1); // Compact density
user_pref("dom.ipc.processCount", 16); // Double process count
user_pref("findbar.highlightAll", true); // Highlight text search
user_pref("general.smoothScroll", false); // Smooth scrolling off
user_pref("reader.parse-on-load.enabled", false); // Disable reader
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true); // Legacy CSS support
user_pref("ui.systemUsesDarkTheme", 1); // Set Dark Theme
user_pref("ui.prefersReducedMotion", 1); // Disable animations
user_pref("browser.startup.page", 0); // Set startup page to blank
user_pref("browser.newtab.preload", false); // Do not preload new tabs
user_pref("browser.tabs.warnOnClose", false); // Warn when closing multiple tabs
user_pref("browser.tabs.warnOnCloseOtherTabs", false); // Warn when closing multiple tabs
user_preff("browser.warnOnQuit", false); // Warn when quiting browser with multiple tabs

// Google Safe Browsing
user_pref("browser.safebrowsing.downloads.enabled", false);
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.provider.mozilla.gethashURL", "");
user_pref("browser.safebrowsing.provider.mozilla.updateURL", "");

user_pref("privacy.sanitize.sanitizeOnShutdown", true); // Enable Firefox to clean up on Shutdown. 
user_pref("privacy.clearOnShutdown.cache", true); 
user_pref("privacy.clearOnShutdown.cookies", true);
user_pref("privacy.clearOnShutdown.openWindows", true);
user_pref("privacy.clearOnShutdown.downloads", true);
user_pref("privacy.clearOnShutdown.formdata", true); // Form & Search History
user_pref("privacy.clearOnShutdown.history", true); // Browsing & Download History
user_pref("privacy.clearOnShutdown.offlineApps", true); // Offline Website Data
user_pref("privacy.clearOnShutdown.sessions", true); // Active Logins
user_pref("privacy.clearOnShutdown.siteSettings", true); // Site Preferences
