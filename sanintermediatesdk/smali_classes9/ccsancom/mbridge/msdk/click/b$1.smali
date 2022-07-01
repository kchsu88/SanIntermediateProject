.class final Lccsancom/mbridge/msdk/click/b$1;
.super Lccsanandroid/os/Handler;
.source "CommonClickUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/click/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/os/Looper;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 8

    .line 92
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    .line 94
    :try_start_0
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 95
    iget v3, p1, Lccsanandroid/os/Message;->arg1:I

    .line 96
    iget v4, p1, Lccsanandroid/os/Message;->arg2:I

    .line 97
    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    nop

    .line 99
    nop

    .line 100
    nop

    .line 101
    const-string v0, ""

    if-eqz p1, :cond_0

    .line 102
    :try_start_1
    const-string v0, "rid"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "cid_n"

    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string v2, "cid"

    invoke-virtual {p1, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    move-object v5, v0

    move-object v6, v1

    goto :goto_0

    .line 101
    :cond_0
    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    .line 106
    :goto_0
    new-instance v2, Lccsancom/mbridge/msdk/foundation/same/report/c;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :cond_1
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    :cond_2
    :goto_1
    return-void
.end method
