.class Lccsansan/cg/removeDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ca/removeDownloadListener$removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cg/removeDownloadListener;->getDownloadingList(Lccsansan/ca/IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsansan/cg/removeDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsanandroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsansan/ca/addDownloadListener;,
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener(Lccsanandroid/os/IBinder;)Lccsansan/cg/IncentiveDownloadUtils;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lccsansan/cg/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-interface {p1}, Lccsansan/cg/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lccsansan/ca/addDownloadListener;

    const-string v0, "User has disabled advertising identifier"

    invoke-direct {p1, v0}, Lccsansan/ca/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1
.end method
