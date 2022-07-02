.class public Lccsanen/hance/launchsdk/launch/TaskActivity;
.super Lccsanandroid/app/Activity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

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

.method public final a(Lccsanandroid/content/Intent;)V
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
    const-string p1, "LAUNCH_SDK"

    const-string v1, "activity_launched"

    invoke-static {p1, v1, v0}, Lccsanenhance/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public final a(Lccsanenhance/e/b;)V
    .locals 1

    .line 15
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanenhance/e/b;->a(I)Lccsanenhance/e/b;

    .line 17
    const-string p1, "LAUNCH_SDK"

    const-string v0, "message_succeed"

    invoke-static {p1, v0}, Lccsanenhance/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Lccsanandroid/os/Bundle;)V
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
    const-string p1, "ccsan_en_hance_launchsdk_activity_convert_task"

    invoke-static {p1}, Lccsanenhance/g/h;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Lccsanandroid/app/Activity;->onResume()V

    .line 5
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanen/hance/launchsdk/launch/TaskActivity;->a()V

    .line 6
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, v1}, Lccsanen/hance/launchsdk/launch/TaskActivity;->a(Lccsanandroid/content/Intent;)V

    .line 13
    sget-object v2, Lccsanenhance/e/a;->a:Lccsanenhance/e/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "LAUNCH_SDK"

    if-nez v2, :cond_1

    :try_start_1
    const-string v1, "no_launch_message"

    .line 16
    invoke-static {v3, v1}, Lccsanenhance/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    return-void

    .line 20
    :cond_1
    invoke-virtual {v2}, Lccsanenhance/e/b;->d()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v1, "message_pre_succeed"

    .line 23
    invoke-static {v3, v1}, Lccsanenhance/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    return-void

    .line 28
    :cond_2
    invoke-virtual {v2}, Lccsanenhance/e/b;->c()Lccsanenhance/d/c;

    move-result-object v3

    const-string v4, "launch_way"

    .line 29
    invoke-virtual {v1, v4}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lccsanenhance/d/c;->a(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v2}, Lccsanen/hance/launchsdk/launch/TaskActivity;->a(Lccsanenhance/e/b;)V

    .line 33
    invoke-virtual {v2}, Lccsanenhance/e/b;->b()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 34
    invoke-virtual {v2}, Lccsanenhance/e/b;->a()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 36
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 42
    :try_start_2
    new-instance v2, Lccsanenhance/c/a;

    invoke-direct {v2, v1}, Lccsanenhance/c/a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lccsanenhance/c/b;->a(Lccsanenhance/c/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    .line 45
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 48
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->finish()V

    return-void

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 49
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    :cond_4
    throw v1
.end method
