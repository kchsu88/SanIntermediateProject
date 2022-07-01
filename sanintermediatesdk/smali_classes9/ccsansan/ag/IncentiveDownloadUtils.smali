.class public Lccsansan/ag/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string p0, "ALive"

    const-string v0, "stop music keep alive"

    .line 1
    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsansan/ao/getDownloadingList;->IncentiveDownloadUtils()Lccsansan/ao/getDownloadingList;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/ao/getDownloadingList;->removeDownloadListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    sget-boolean v0, Lccsansan/b/addDownloadListener;->IncentiveDownloadUtils:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    const-string v0, "ALive"

    const-string v1, "start notify keep alive"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsansan/b/addDownloadListener;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 6
    const-string v2, "notify_status"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 8
    :try_start_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 9
    invoke-static {p0, v0}, Lccsanandroidx/core/content/ContextCompat;->startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getDownloadedRecordByUrl(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    const-string p0, "ALive"

    const-string v0, "stop wake lock keep alive"

    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string p0, "SAN:ALive"

    invoke-static {p0}, Lccsansan/ax/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Lccsansan/ax/addDownloadListener;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/ax/addDownloadListener;->getDownloadingList()V

    return-void
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "ALive"

    const-string v1, "stop notify keep alive"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsansan/b/addDownloadListener;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 3
    const-string v1, "notify_status"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 5
    :try_start_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 6
    invoke-static {p0, v0}, Lccsanandroidx/core/content/ContextCompat;->startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "ALive"

    const-string v1, "start music keep alive"

    .line 1
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsansan/ao/getDownloadingList;->IncentiveDownloadUtils()Lccsansan/ao/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/ao/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "ALive"

    const-string v1, "start wake lock keep alive"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, "SAN:ALive"

    invoke-static {v0}, Lccsansan/ax/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Lccsansan/ax/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/ax/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)V

    return-void
.end method
