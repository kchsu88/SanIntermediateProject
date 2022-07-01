.class Lccsansan/bp/addDownloadListener$IncentiveDownloadUtils;
.super Lccsansan/bk/unifiedDownload;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bp/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsanandroid/content/Intent;

.field final synthetic unifiedDownload:Lccsansan/bp/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/bp/addDownloadListener;Lccsanandroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bp/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/bp/addDownloadListener;

    iput-object p2, p0, Lccsansan/bp/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/content/Intent;

    iput-object p3, p0, Lccsansan/bp/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0}, Lccsansan/bk/unifiedDownload;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lccsansan/bp/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/content/Intent;

    invoke-static {v2}, Lccsansan/bp/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Intent;)V

    .line 3
    iget-object v2, p0, Lccsansan/bp/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/bp/addDownloadListener;

    iget-object v3, p0, Lccsansan/bp/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v2, v3, p1, v0, v1}, Lccsansan/bp/addDownloadListener;->getDownloadingList(Lccsansan/bp/addDownloadListener;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    new-instance v0, Lccsansan/bj/removeDownloadListener;

    invoke-direct {v0, p1}, Lccsansan/bj/removeDownloadListener;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_0
    return-void
.end method
