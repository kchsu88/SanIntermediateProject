.class public Lccsansan/bp/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static addDownloadListener(Lccsansan/bk/unifiedDownload;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)Lccsancom/san/convert/launch/IncentiveDownloadUtils;
    .locals 1

    .line 51
    new-instance v0, Lccsancom/san/convert/launch/IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsancom/san/convert/launch/IncentiveDownloadUtils;-><init>()V

    .line 52
    invoke-virtual {v0, p0}, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/bk/unifiedDownload;)Lccsancom/san/convert/launch/IncentiveDownloadUtils;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p1}, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->getDownloadingList(Ljava/util/concurrent/locks/Lock;)Lccsancom/san/convert/launch/IncentiveDownloadUtils;

    move-result-object p0

    .line 54
    invoke-virtual {p0, p2}, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->addDownloadListener(Ljava/util/concurrent/locks/Condition;)Lccsancom/san/convert/launch/IncentiveDownloadUtils;

    move-result-object p0

    return-object p0
.end method

.method private static getDownloadingList(Lccsancom/san/convert/database/ConvertIntent;Ljava/lang/String;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)Lccsanandroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-class v2, Lccsancom/san/convert/launch/ConvertTaskActivity;

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "code"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lccsancom/san/convert/launch/getDownloadingList;->getDownloadingList()Lccsancom/san/convert/launch/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lccsancom/san/convert/launch/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Intent;Lccsancom/san/convert/database/ConvertIntent;)Lccsanandroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Lccsancom/san/convert/launch/getDownloadingList;->getDownloadingList()Lccsancom/san/convert/launch/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lccsancom/san/convert/launch/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Intent;Lccsancom/san/convert/database/ConvertIntent;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 41
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 42
    invoke-static {}, Lccsancom/san/convert/launch/getDownloadingList;->getDownloadingList()Lccsancom/san/convert/launch/getDownloadingList;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/san/convert/launch/getDownloadingList;->IncentiveDownloadUtils()J

    move-result-wide p0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, p0, p1, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz p0, :cond_2

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/16 p2, 0x0

    const-string v1, "launch_time"

    invoke-virtual {v0, v1, p2, p3}, Lccsanandroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p2

    sub-long/2addr p0, p2

    .line 48
    const-string p2, "launch_cost_time"

    invoke-virtual {v0, p2, p0, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;J)Lccsanandroid/content/Intent;

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 49
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    throw p0
.end method

.method public static removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;Lccsansan/bk/unifiedDownload;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v0

    .line 3
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedRecordByUrl()Z

    move-result v1

    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedList()Z

    move-result v2

    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->deleteDownItem()Z

    move-result v3

    invoke-static {v0, v1, v2, v3, p0}, Lccsansan/bh/getDownloadingList;->unifiedDownload(ZZZZLccsancom/san/convert/database/ConvertIntent;)V

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/bh/addDownloadListener;->removeDownloadListener()Lccsansan/bk/getDownloadStatusByUrl;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/bk/getDownloadStatusByUrl;->unifiedDownload()Lccsansan/bk/addDownloadListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lccsansan/bk/addDownloadListener;->unifiedDownload(Lccsansan/bk/getDownloadingList;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    .line 10
    invoke-static {p1, v0, v1}, Lccsansan/bp/removeDownloadListener;->addDownloadListener(Lccsansan/bk/unifiedDownload;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)Lccsancom/san/convert/launch/IncentiveDownloadUtils;

    move-result-object p1

    .line 11
    invoke-static {}, Lccsancom/san/convert/launch/getDownloadingList;->getDownloadingList()Lccsancom/san/convert/launch/getDownloadingList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lccsancom/san/convert/launch/getDownloadingList;->addDownloadListener(Lccsancom/san/convert/launch/IncentiveDownloadUtils;)V

    .line 13
    const-string p1, "code"

    invoke-static {p0, p1, v0, v1}, Lccsansan/bp/removeDownloadListener;->getDownloadingList(Lccsancom/san/convert/database/ConvertIntent;Ljava/lang/String;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)Lccsanandroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 16
    invoke-static {p1, v2, p0}, Lccsansan/bp/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Lccsanandroid/content/Intent;Lccsancom/san/convert/database/ConvertIntent;)V

    return-void

    :cond_1
    nop

    .line 20
    const-string p1, "notification"

    invoke-static {p0, p1, v0, v1}, Lccsansan/bp/removeDownloadListener;->getDownloadingList(Lccsancom/san/convert/database/ConvertIntent;Ljava/lang/String;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)Lccsanandroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 23
    invoke-static {p1, v0, p0}, Lccsansan/bp/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Lccsanandroid/content/Intent;Lccsancom/san/convert/database/ConvertIntent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;Lccsanandroid/content/Intent;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 10

    .line 55
    const-string v0, "launch_cost_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lccsanandroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 56
    const-string v0, "launch_is_background"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 57
    const-string v0, "launch_lock_screen"

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 58
    const-string v0, "launch_draw_overlay"

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 59
    move-object v3, p0

    move-object v9, p2

    invoke-static/range {v3 .. v9}, Lccsansan/bh/getDownloadingList;->unifiedDownload(Ljava/lang/String;JZZZLccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method
