.class public final Lccsancom/mbridge/msdk/videocommon/download/e;
.super Ljava/lang/Object;
.source "DownLoadUtils.java"


# direct methods
.method public static a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$c;Z)V
    .locals 2

    .line 28
    :try_start_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1017
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/download/f$a;->a:Lccsancom/mbridge/msdk/videocommon/download/f;

    .line 34
    new-instance v1, Lccsancom/mbridge/msdk/videocommon/download/e$1;

    invoke-direct {v1, p1, p0, p2}, Lccsancom/mbridge/msdk/videocommon/download/e$1;-><init>(Lccsancom/mbridge/msdk/videocommon/download/g$c;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/f;->a(Lccsancom/mbridge/msdk/foundation/same/e/a;)V

    .line 138
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 30
    const-string p0, "url is error"

    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/videocommon/download/g$c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_2
    return-void

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    sget-boolean p1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 136
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    :cond_3
    :goto_1
    return-void
.end method
