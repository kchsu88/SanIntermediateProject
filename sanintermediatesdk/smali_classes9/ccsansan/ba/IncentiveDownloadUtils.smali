.class public Lccsansan/ba/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ba/IncentiveDownloadUtils$IncentiveDownloadUtils;
    }
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:Lccsanandroid/content/ServiceConnection;

.field private final addDownloadListener:Lccsanandroid/os/IBinder$DeathRecipient;

.field private removeDownloadListener:Lccsansan/an/addDownloadListener;

.field private unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsansan/ba/IncentiveDownloadUtils$unifiedDownload;

    invoke-direct {v0, p0}, Lccsansan/ba/IncentiveDownloadUtils$unifiedDownload;-><init>(Lccsansan/ba/IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsansan/ba/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/content/ServiceConnection;

    .line 23
    new-instance v0, Lccsansan/ba/IncentiveDownloadUtils$removeDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/ba/IncentiveDownloadUtils$removeDownloadListener;-><init>(Lccsansan/ba/IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsansan/ba/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/os/IBinder$DeathRecipient;

    .line 40
    iput-object p1, p0, Lccsansan/ba/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/ba/IncentiveDownloadUtils;)Lccsanandroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/ba/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic getDownloadingList(Lccsansan/ba/IncentiveDownloadUtils;)Lccsansan/an/addDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/ba/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/an/addDownloadListener;

    return-object p0
.end method

.method static synthetic unifiedDownload(Lccsansan/ba/IncentiveDownloadUtils;Lccsansan/an/addDownloadListener;)Lccsansan/an/addDownloadListener;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/ba/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/an/addDownloadListener;

    return-object p1
.end method


# virtual methods
.method public getDownloadingList(I)Lccsanandroid/os/IBinder;
    .locals 1

    .line 5
    :try_start_0
    iget-object v0, p0, Lccsansan/ba/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/an/addDownloadListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lccsansan/an/addDownloadListener;->addDownloadListener(I)Lccsanandroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lccsanandroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Hybrid"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public removeDownloadListener()V
    .locals 4

    .line 3
    new-instance v0, Lccsanandroid/content/Intent;

    iget-object v1, p0, Lccsansan/ba/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    const-class v2, Lccsansan/ah/IncentiveDownloadUtils;

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v1, p0, Lccsansan/ba/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsansan/ba/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lccsanandroid/content/Context;->bindService(Lccsanandroid/content/Intent;Lccsanandroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public unifiedDownload()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lccsansan/ba/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/ba/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
