You have to <b>create two tasks</b> for Docker uninstallation.

NOTE: this procedure has already done successfully by @Simone98RC on Synology DS118, so don't worry if many system folders are involved in this process.

Please <b>login to DSM with your/any admin account</b>, at this point go to:

<b>Control Panel</b> -> <b>Task Scheduler</b> -> <b>Create</b> -> <b>Triggered Task</b> -> <b>User-defined Script</b>.

For a better diagnosis consider to <b>Send Run Details By E-mail</b> for each task.

---

<b>FIRST TASK</b>

User: <b>root</b>

Event: <b>Shutdown</b>

Activity Settings -> Execute Command:

<b>rm -rfv /opt/etc/init.d/S60dockerd</b>

---

<b>SECOND TASK</b>

User: <b>root</b>

Event: <b>Bootup</b>

Activity Settings -> Execute Command:

<b>rm -rfv /var/run/docker.pid & rm -rfv /var/run/docker.sock & rm -rfv /var/run/docker & rm -rfv /opt/var/lib & rm -rfv /opt/usr/bin & rm -rfv /opt/etc/default & rm -rfv /etc/docker</b>

---

At this point, <b>please reboot your NAS</b>.

When the reboot is completed you can <b>login to DSM</b> and <b>delete both the tasks</b>.
