.class public Lccsansan/bh/removeDownloadListener;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# instance fields
.field unifiedDownload:Lccsanandroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lccsansan/bh/removeDownloadListener;->unifiedDownload:Lccsanandroid/content/IntentFilter;

    .line 4
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lccsansan/bh/removeDownloadListener;->unifiedDownload:Lccsanandroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x45e5283a

    if-eq v0, v1, :cond_1

    const v1, 0x311a1d6c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/net/ConnectivityManager;

    .line 5
    invoke-virtual {p1}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {p1}, Lccsanandroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 15
    :cond_5
    const-string p1, "AD_CONVERT"

    const-string p2, "Network Changes\uff1anetwork connected"

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedCount()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object p1

    sget-object p2, Lccsansan/bh/IncentiveDownloadUtils;->NETWORK_CONNECT:Lccsansan/bh/IncentiveDownloadUtils;

    const/16 v0, 0xb0

    invoke-virtual {p1, v0, p2}, Lccsansan/bh/addDownloadListener;->getDownloadingList(ILccsansan/bh/IncentiveDownloadUtils;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public removeDownloadListener()Lccsanandroid/content/IntentFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bh/removeDownloadListener;->unifiedDownload:Lccsanandroid/content/IntentFilter;

    return-object v0
.end method
