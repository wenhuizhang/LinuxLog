Dear Dr. Liu,
 
I’ve looked through the attachment and tried to understand the motivation and goals of the experiments.
It looks like it’s expected to identify the files that could contain the logs/messages/modifications that could reflect the behavior caused by attacks?
The attacks that I experimented were based on DVWA, SEED, ant others. Hence, the exact file names may be different, but could be useful as a reference.
 
I think the following files, including log files, are worth our attention for analysis.
1)      Log files:
The attachment has already done a good job identifying some log files. In addition to that, /proc/kmsg, more logs in /var/log/ like /var/log/dmesg, /var/log/syslog, etc.
2)      Cookie files:
Cookie file may be useful for analysis about XSS attack. Here, it should be pointed out that, not just the content, but other features like “last access time” and “how often being accessed” could also be indicators of attacks, if abnormal;
3)      Environment configuration files like /etc/hosts, or environment variables like $PATH;
Service-specific configuration files like files in /etc/ssh for ssh; files in /exports for NFS; etc.
Such configuration files maybe not contain something, but they need to be checked to see whether an attack is possible or not;
4)      Some countermeasure configuration files/variables:
kernel.randomize_va_space for buffer overflow attack (Stack Guard);
magic_quotes_gpc inside /etc/php5/apache2/php.ini, for SQL-Injection;
 
Please correct me if I misunderstand the problem under your investigation.
Thanks!
Best,
Jun