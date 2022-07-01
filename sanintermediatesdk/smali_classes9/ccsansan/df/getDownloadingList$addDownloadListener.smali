.class Lccsansan/df/getDownloadingList$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/df/getDownloadingList;->getDownloadingList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/df/getDownloadingList;

.field final synthetic unifiedDownload:Z


# direct methods
.method constructor <init>(Lccsansan/df/getDownloadingList;JZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/df/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/df/getDownloadingList;

    iput-boolean p4, p0, Lccsansan/df/getDownloadingList$addDownloadListener;->unifiedDownload:Z

    invoke-direct {p0, p2, p3}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/df/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/df/getDownloadingList;

    iget-boolean v1, p0, Lccsansan/df/getDownloadingList$addDownloadListener;->unifiedDownload:Z

    invoke-virtual {v0, v1}, Lccsansan/df/getDownloadingList;->removeDownloadListener(Z)V

    return-void
.end method
