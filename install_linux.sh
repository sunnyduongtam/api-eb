emby_version=$(cat /var/lib/emby/data/lastversion.txt)
systemctl stop emby-server
wget --no-check-certificate -q https://github.com/sunnyduongtam/api-eb/blob/main/linux/version/$emby_version/Emby.Web.dll -O /opt/emby-server/system/Emby.Web.dll
wget --no-check-certificate -q https://github.com/sunnyduongtam/api-eb/blob/main/linux/version/$emby_version/MediaBrowser.Model.dll -O /opt/emby-server/system/MediaBrowser.Model.dll
wget --no-check-certificate -q https://github.com/sunnyduongtam/api-eb/blob/main/linux/version/$emby_version/dashboard-ui/embypremiere/embypremiere.js /opt/emby-server/system/dashboard-ui/embypremiere/embypremiere.js
wget --no-check-certificate -q https://github.com/sunnyduongtam/api-eb/blob/main/linux/version/$emby_version/dashboard-ui/modules/emby-apiclient/connectionmanager.js /opt/emby-server/system/dashboard-ui/modules/emby-apiclient/connectionmanager.js
systemctl start emby-server
echo "Check your emby server"
