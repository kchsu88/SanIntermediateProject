.class public Lccsansan/ca/removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ca/removeDownloadListener$removeDownloadListener;
    }
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:Lccsansan/ca/removeDownloadListener$removeDownloadListener;

.field private final addDownloadListener:Lccsansan/ca/IncentiveDownloadUtils;

.field private final unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method private constructor <init>(Lccsanandroid/content/Context;Lccsansan/ca/IncentiveDownloadUtils;Lccsansan/ca/removeDownloadListener$removeDownloadListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Lccsanandroid/app/Application;

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lccsansan/ca/removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ca/removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    .line 7
    :goto_0
    iput-object p2, p0, Lccsansan/ca/removeDownloadListener;->addDownloadListener:Lccsansan/ca/IncentiveDownloadUtils;

    .line 8
    iput-object p3, p0, Lccsansan/ca/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/ca/removeDownloadListener$removeDownloadListener;

    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Lccsansan/ca/IncentiveDownloadUtils;Lccsansan/ca/removeDownloadListener$removeDownloadListener;)V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/ca/removeDownloadListener;

    invoke-direct {v0, p0, p2, p3}, Lccsansan/ca/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsansan/ca/IncentiveDownloadUtils;Lccsansan/ca/removeDownloadListener$removeDownloadListener;)V

    invoke-direct {v0, p1}, Lccsansan/ca/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Intent;)V

    return-void
.end method

.method private addDownloadListener(Lccsanandroid/content/Intent;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lccsansan/ca/removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Lccsanandroid/content/Context;->bindService(Lccsanandroid/content/Intent;Lccsanandroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lccsansan/ca/addDownloadListener;

    const-string v0, "Service binding failed"

    invoke-direct {p1, v0}, Lccsansan/ca/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lccsansan/ca/removeDownloadListener;->addDownloadListener:Lccsansan/ca/IncentiveDownloadUtils;

    invoke-interface {v0, p1}, Lccsansan/ca/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lccsansan/ca/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/ca/removeDownloadListener$removeDownloadListener;

    invoke-interface {p1, p2}, Lccsansan/ca/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lccsansan/ca/removeDownloadListener;->addDownloadListener:Lccsansan/ca/IncentiveDownloadUtils;

    invoke-interface {p2, p1}, Lccsansan/ca/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object p1, p0, Lccsansan/ca/removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 11
    :cond_0
    :try_start_2
    new-instance p1, Lccsansan/ca/addDownloadListener;

    const-string p2, "OAID/AAID acquire failed"

    invoke-direct {p1, p2}, Lccsansan/ca/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    :try_start_3
    iget-object p2, p0, Lccsansan/ca/removeDownloadListener;->addDownloadListener:Lccsansan/ca/IncentiveDownloadUtils;

    invoke-interface {p2, p1}, Lccsansan/ca/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    :try_start_4
    iget-object p1, p0, Lccsansan/ca/removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    .line 10
    :goto_0
    invoke-virtual {p1, p0}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    :goto_1
    return-void

    :goto_2
    :try_start_5
    iget-object p2, p0, Lccsansan/ca/removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-virtual {p2, p0}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 21
    :goto_3
    throw p1
.end method

.method public onServiceDisconnected(Lccsanandroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
