.class public Lccsanenhance/a/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lccsanenhance/b/b;Ljava/lang/String;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)Lccsanandroid/content/Intent;
    .locals 3

    .line 24
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v1

    const-class v2, Lccsanen/hance/launchsdk/launch/TaskActivity;

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
    invoke-static {v0, p0}, Lccsanenhance/e/a;->a(Lccsanandroid/content/Intent;Lccsanenhance/b/b;)Lccsanandroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v0, p0}, Lccsanenhance/e/a;->b(Lccsanandroid/content/Intent;Lccsanenhance/b/b;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 41
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-wide/16 p0, 0xbb8

    .line 42
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

.method public static a(Lccsanenhance/d/c;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)Lccsanenhance/e/b;
    .locals 1

    .line 51
    new-instance v0, Lccsanenhance/e/b;

    invoke-direct {v0}, Lccsanenhance/e/b;-><init>()V

    .line 52
    invoke-virtual {v0, p0}, Lccsanenhance/e/b;->a(Lccsanenhance/d/c;)Lccsanenhance/e/b;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p1}, Lccsanenhance/e/b;->a(Ljava/util/concurrent/locks/Lock;)Lccsanenhance/e/b;

    move-result-object p0

    .line 54
    invoke-virtual {p0, p2}, Lccsanenhance/e/b;->a(Ljava/util/concurrent/locks/Condition;)Lccsanenhance/e/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lccsanenhance/b/b;Lccsanenhance/d/c;)V
    .locals 7

    .line 1
    invoke-static {}, Lccsanenhance/g/b;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-static {}, Lccsanenhance/g/c;->e()Z

    move-result v2

    invoke-static {}, Lccsanenhance/g/c;->g()Z

    move-result v3

    invoke-static {}, Lccsanenhance/g/c;->a()Z

    move-result v4

    invoke-static {}, Lccsanenhance/g/c;->f()Z

    move-result v5

    move v1, v0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lccsanenhance/a/f;->a(ZZZZZLccsanenhance/b/b;)V

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object p0

    invoke-virtual {p0}, Lccsanenhance/a/e;->b()Lccsanenhance/d/f;

    move-result-object p0

    invoke-virtual {p0}, Lccsanenhance/d/f;->d()Lccsanenhance/d/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lccsanenhance/d/d;->a(Lccsanenhance/d/b;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    .line 10
    invoke-static {p1, v0, v1}, Lccsanenhance/a/d;->a(Lccsanenhance/d/c;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)Lccsanenhance/e/b;

    move-result-object p1

    .line 11
    sput-object p1, Lccsanenhance/e/a;->a:Lccsanenhance/e/b;

    .line 13
    const-string p1, "code"

    invoke-static {p0, p1, v0, v1}, Lccsanenhance/a/d;->a(Lccsanenhance/b/b;Ljava/lang/String;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)Lccsanandroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 16
    invoke-static {p1, v2, p0}, Lccsanenhance/a/d;->a(Ljava/lang/String;Lccsanandroid/content/Intent;Lccsanenhance/b/b;)V

    return-void

    :cond_1
    nop

    .line 20
    const-string p1, "notification"

    invoke-static {p0, p1, v0, v1}, Lccsanenhance/a/d;->a(Lccsanenhance/b/b;Ljava/lang/String;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/locks/Condition;)Lccsanandroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 23
    invoke-static {p1, v0, p0}, Lccsanenhance/a/d;->a(Ljava/lang/String;Lccsanandroid/content/Intent;Lccsanenhance/b/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lccsanandroid/content/Intent;Lccsanenhance/b/b;)V
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

    invoke-static/range {v3 .. v9}, Lccsanenhance/a/f;->a(Ljava/lang/String;JZZZLccsanenhance/b/b;)V

    return-void
.end method
