.class Lccsansan/ar/getDownloadingList$getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ar/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getDownloadingList"
.end annotation


# instance fields
.field IncentiveDownloadUtils:Ljava/lang/Exception;

.field getDownloadingList:Z

.field removeDownloadListener:I

.field unifiedDownload:Z


# direct methods
.method constructor <init>(Lccsansan/ar/getDownloadingList;ZZLjava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lccsansan/ar/getDownloadingList$getDownloadingList;->unifiedDownload:Z

    .line 3
    iput-boolean p3, p0, Lccsansan/ar/getDownloadingList$getDownloadingList;->getDownloadingList:Z

    .line 4
    iput-object p4, p0, Lccsansan/ar/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/Exception;

    .line 5
    const/4 p1, 0x0

    iput p1, p0, Lccsansan/ar/getDownloadingList$getDownloadingList;->removeDownloadListener:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastResult [succeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/ar/getDownloadingList$getDownloadingList;->unifiedDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ar/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/ar/getDownloadingList$getDownloadingList;->removeDownloadListener:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/ar/getDownloadingList$getDownloadingList;->getDownloadingList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
