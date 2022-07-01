.class Lccsansan/ba/IncentiveDownloadUtils$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ba/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/ba/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsansan/ba/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ba/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/ba/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/ba/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/ba/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsansan/ba/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/ba/IncentiveDownloadUtils;)Lccsansan/an/addDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lccsansan/ba/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/ba/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsansan/ba/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/ba/IncentiveDownloadUtils;)Lccsansan/an/addDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/os/IInterface;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lccsansan/ba/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/ba/IncentiveDownloadUtils;

    invoke-static {v1}, Lccsansan/ba/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/ba/IncentiveDownloadUtils;)Lccsanandroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lccsanandroid/os/IBinder;->unlinkToDeath(Lccsanandroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hybrid"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lccsansan/ba/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/ba/IncentiveDownloadUtils;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsansan/ba/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/ba/IncentiveDownloadUtils;Lccsansan/an/addDownloadListener;)Lccsansan/an/addDownloadListener;

    .line 11
    :cond_0
    iget-object v0, p0, Lccsansan/ba/IncentiveDownloadUtils$removeDownloadListener;->unifiedDownload:Lccsansan/ba/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/ba/IncentiveDownloadUtils;->removeDownloadListener()V

    return-void
.end method
