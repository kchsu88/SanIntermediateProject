.class Lccsansan/ba/IncentiveDownloadUtils$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ba/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/ba/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsansan/ba/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ba/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ba/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsansan/ba/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ba/IncentiveDownloadUtils;

    invoke-static {p2}, Lccsansan/an/addDownloadListener$unifiedDownload;->unifiedDownload(Lccsanandroid/os/IBinder;)Lccsansan/an/addDownloadListener;

    move-result-object p2

    invoke-static {p1, p2}, Lccsansan/ba/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/ba/IncentiveDownloadUtils;Lccsansan/an/addDownloadListener;)Lccsansan/an/addDownloadListener;

    .line 4
    :try_start_0
    iget-object p1, p0, Lccsansan/ba/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ba/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/ba/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/ba/IncentiveDownloadUtils;)Lccsansan/an/addDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lccsansan/ba/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ba/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/ba/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/ba/IncentiveDownloadUtils;)Lccsansan/an/addDownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lccsanandroid/os/IInterface;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lccsansan/ba/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ba/IncentiveDownloadUtils;

    invoke-static {p2}, Lccsansan/ba/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/ba/IncentiveDownloadUtils;)Lccsanandroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lccsanandroid/os/IBinder;->linkToDeath(Lccsanandroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lccsanandroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Hybrid"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Lccsanandroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsansan/ba/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ba/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/ba/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/ba/IncentiveDownloadUtils;)Lccsansan/an/addDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lccsansan/ba/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ba/IncentiveDownloadUtils;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsansan/ba/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/ba/IncentiveDownloadUtils;Lccsansan/an/addDownloadListener;)Lccsansan/an/addDownloadListener;

    :cond_0
    return-void
.end method
