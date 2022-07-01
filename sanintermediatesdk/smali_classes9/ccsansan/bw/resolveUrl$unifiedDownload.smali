.class public Lccsansan/bw/resolveUrl$unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/resolveUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "unifiedDownload"
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Z

.field private addDownloadListener:I

.field private getDownloadingList:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsansan/bw/resolveUrl$unifiedDownload;->getDownloadingList:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryInfo{batteryPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/bw/resolveUrl$unifiedDownload;->addDownloadListener:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUsbCharge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/bw/resolveUrl$unifiedDownload;->IncentiveDownloadUtils:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAcCharge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/bw/resolveUrl$unifiedDownload;->getDownloadingList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload(I)V
    .locals 0

    .line 1
    iput p1, p0, Lccsansan/bw/resolveUrl$unifiedDownload;->addDownloadListener:I

    return-void
.end method

.method public unifiedDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/bw/resolveUrl$unifiedDownload;->IncentiveDownloadUtils:Z

    return-void
.end method
