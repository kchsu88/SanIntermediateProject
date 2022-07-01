.class Lccsancom/san/hybrid/ui/removeDownloadListener$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/hybrid/ui/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/hybrid/ui/removeDownloadListener;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/san/hybrid/ui/removeDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/hybrid/ui/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsancom/san/hybrid/ui/removeDownloadListener;

    iput-object p2, p0, Lccsancom/san/hybrid/ui/removeDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsancom/san/hybrid/ui/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsancom/san/hybrid/ui/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/hybrid/ui/removeDownloadListener;->removeDownloadListener(Lccsancom/san/hybrid/ui/removeDownloadListener;)Lccsansan/an/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/hybrid/ui/removeDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsansan/an/getDownloadingList;->unifiedDownload(Ljava/lang/String;)I

    return-void
.end method
