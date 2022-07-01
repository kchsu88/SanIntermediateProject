.class final Lccsansan/ck/deleteDownList$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ck/deleteDownList;->addDownloadListener(Lccsansan/dt/removeDownloadListener;ZLjava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/dt/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/dt/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ck/deleteDownList$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsansan/ck/deleteDownList$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0, v1}, Lccsansan/dc/getDownloadingList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    return-void
.end method
