.class public Lccsansan/z/unifiedDownload$unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/z/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "unifiedDownload"
.end annotation


# instance fields
.field private addDownloadListener:Ljava/lang/String;

.field private getDownloadingList:Ljava/lang/String;

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/z/unifiedDownload$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    return-object v0
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/z/unifiedDownload$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/z/unifiedDownload$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    return-object v0
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/z/unifiedDownload$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AliveInfo{alive_scene=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/z/unifiedDownload$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", alive_start_strategy=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/z/unifiedDownload$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", alive_stop_strategy=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/z/unifiedDownload$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/z/unifiedDownload$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    return-object v0
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/z/unifiedDownload$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    return-void
.end method
