.class public Lccsansan/bw/resolveUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bw/resolveUrl$unifiedDownload;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Lccsansan/bu/getDownloadingList;


# direct methods
.method public static unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/resolveUrl$unifiedDownload;
    .locals 5

    .line 1
    sget-object v0, Lccsansan/bw/resolveUrl;->IncentiveDownloadUtils:Lccsansan/bu/getDownloadingList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsansan/bu/getDownloadingList;->removeDownloadListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lccsansan/bw/resolveUrl;->IncentiveDownloadUtils:Lccsansan/bu/getDownloadingList;

    invoke-virtual {p0}, Lccsansan/bu/getDownloadingList;->addDownloadListener()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/bw/resolveUrl$unifiedDownload;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    .line 7
    :cond_1
    new-instance v1, Lccsansan/bw/resolveUrl$unifiedDownload;

    invoke-direct {v1}, Lccsansan/bw/resolveUrl$unifiedDownload;-><init>()V

    .line 9
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    new-instance v2, Lccsanandroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 14
    :cond_2
    const-string v0, "level"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 15
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit8 v0, v0, 0x64

    .line 16
    div-int/2addr v0, v3

    const/4 v3, -0x1

    .line 17
    const-string v4, "plugged"

    invoke-virtual {p0, v4, v3}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p0, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ne p0, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 20
    :goto_1
    invoke-virtual {v1, v0}, Lccsansan/bw/resolveUrl$unifiedDownload;->unifiedDownload(I)V

    .line 21
    invoke-virtual {v1, v4}, Lccsansan/bw/resolveUrl$unifiedDownload;->addDownloadListener(Z)V

    .line 22
    invoke-virtual {v1, v3}, Lccsansan/bw/resolveUrl$unifiedDownload;->unifiedDownload(Z)V

    .line 23
    sget-object p0, Lccsansan/bw/resolveUrl;->IncentiveDownloadUtils:Lccsansan/bu/getDownloadingList;

    if-nez p0, :cond_5

    .line 24
    new-instance p0, Lccsansan/bu/getDownloadingList;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lccsansan/bu/getDownloadingList;-><init>(Ljava/lang/Object;ZJ)V

    sput-object p0, Lccsansan/bw/resolveUrl;->IncentiveDownloadUtils:Lccsansan/bu/getDownloadingList;

    goto :goto_2

    .line 26
    :cond_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lccsansan/bu/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/Object;J)V

    :goto_2
    return-object v1
.end method
