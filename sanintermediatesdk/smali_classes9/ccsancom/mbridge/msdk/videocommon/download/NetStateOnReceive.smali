.class public Lccsancom/mbridge/msdk/videocommon/download/NetStateOnReceive;
.super Lccsanandroid/content/BroadcastReceiver;
.source "NetStateOnReceive.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 1

    .line 14
    :try_start_0
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 15
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 17
    const-string p2, "connectivity"

    .line 18
    invoke-virtual {p1, p2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/net/ConnectivityManager;

    .line 19
    invoke-virtual {p1}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lccsanandroid/net/NetworkInfo;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p1}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 23
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/videocommon/download/c;->b(Z)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_2

    .line 25
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/download/c;->a()V

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_2
    :goto_0
    goto :goto_1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :goto_1
    return-void
.end method
