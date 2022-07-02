.class public Lccsancom/san/convert/launch/ConvertTaskActivity;
.super Lccsanandroid/app/Activity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Intent;)V
    .locals 11

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v1, "launch_way"

    invoke-virtual {p1, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "launch_time"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v5, v6, v7}, Lccsanandroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 6
    const-string v5, "launch_is_background"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 7
    const-string v8, "launch_lock_screen"

    invoke-virtual {p1, v8, v6}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 8
    const-string v10, "launch_draw_overlay"

    invoke-virtual {p1, v10, v6}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch_cost"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string p1, "AD_CONVERT"

    const-string v1, "activity_launched"

    invoke-static {p1, v1, v0}, Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private getDownloadingList()V
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 2
    const v1, 0xabcdef

    invoke-virtual {v0, v1}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private getDownloadingList(Lccsancom/san/convert/launch/IncentiveDownloadUtils;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->IncentiveDownloadUtils(I)Lccsancom/san/convert/launch/IncentiveDownloadUtils;

    .line 16
    const-string p1, "AD_CONVERT"

    const-string v0, "message_succeed"

    invoke-static {p1, v0}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    .line 3
    const/high16 v0, 0x280000

    invoke-virtual {p1, v0}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 5
    const-string p1, "ccsan_san_activity_convert_task"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Lccsanandroid/app/Activity;->onResume()V

    .line 4
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lccsancom/san/convert/launch/ConvertTaskActivity;->getDownloadingList()V

    .line 5
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    return-void

    .line 10
    :cond_0
    invoke-direct {p0, v1}, Lccsancom/san/convert/launch/ConvertTaskActivity;->IncentiveDownloadUtils(Lccsanandroid/content/Intent;)V

    .line 11
    invoke-static {}, Lccsancom/san/convert/launch/getDownloadingList;->getDownloadingList()Lccsancom/san/convert/launch/getDownloadingList;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/san/convert/launch/getDownloadingList;->addDownloadListener()Lccsancom/san/convert/launch/IncentiveDownloadUtils;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "AD_CONVERT"

    if-nez v2, :cond_1

    :try_start_1
    const-string v1, "no_launch_message"

    .line 13
    invoke-static {v3, v1}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    return-void

    .line 17
    :cond_1
    invoke-virtual {v2}, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->addDownloadListener()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v1, "message_pre_succeed"

    .line 19
    invoke-static {v3, v1}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    return-void

    .line 23
    :cond_2
    invoke-virtual {v2}, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/bk/unifiedDownload;

    move-result-object v3

    const-string v4, "launch_way"

    .line 24
    invoke-virtual {v1, v4}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lccsansan/bk/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, v2}, Lccsancom/san/convert/launch/ConvertTaskActivity;->getDownloadingList(Lccsancom/san/convert/launch/IncentiveDownloadUtils;)V

    .line 27
    invoke-virtual {v2}, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->unifiedDownload()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 28
    invoke-virtual {v2}, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->getDownloadingList()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 30
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 32
    :try_start_2
    new-instance v2, Lccsansan/bj/IncentiveDownloadUtils;

    invoke-direct {v2, v1}, Lccsansan/bj/IncentiveDownloadUtils;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 38
    :cond_3
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    return-void

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 39
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 41
    :cond_4
    throw v1
.end method
