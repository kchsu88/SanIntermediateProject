.class public Lccsansan/cv/pause;
.super Lccsansan/aw/IncentiveDownloadUtils;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/cs/IncentiveDownloadUtils;

.field private addDownloadListener:Z

.field private getDownloadingList:Lccsansan/cs/addDownloadListener;


# direct methods
.method public constructor <init>(Lccsansan/cs/addDownloadListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsansan/aw/IncentiveDownloadUtils;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cv/pause;->addDownloadListener:Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsansan/cs/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lccsansan/cv/pause;->getDownloadingList:Lccsansan/cs/addDownloadListener;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cv/pause;->IncentiveDownloadUtils:Lccsansan/cs/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IncentiveDownloadUtils(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/cv/pause;->addDownloadListener:Z

    return-void
.end method

.method public addDownloadListener()Lccsansan/cs/addDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cv/pause;->getDownloadingList:Lccsansan/cs/addDownloadListener;

    return-object v0
.end method

.method public deleteDownItem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadStatusByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsansan/cv/pause;->getDownloadingRecordByUrl()Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedRecordByUrl()Lccsansan/da/removeDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cv/pause;->getDownloadingList:Lccsansan/cs/addDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/cs/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/cv/pause;->IncentiveDownloadUtils:Lccsansan/cs/IncentiveDownloadUtils;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    const-string v0, ""

    .line 6
    :goto_0
    invoke-static {v0}, Lccsansan/cv/deleteDownItem;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadingCount()Lccsansan/cs/unifiedDownload;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cv/pause;->getDownloadingList:Lccsansan/cs/addDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/cs/addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/cs/unifiedDownload;->fromString(Ljava/lang/String;)Lccsansan/cs/unifiedDownload;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/cv/pause;->IncentiveDownloadUtils:Lccsansan/cs/IncentiveDownloadUtils;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingList()Lccsansan/cs/unifiedDownload;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lccsansan/cv/pause;->getDownloadingRecordByUrl()Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsansan/cv/pause;->getDownloadingRecordByUrl()Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->addDownloadListener()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDownloadingList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lccsansan/cv/pause;->getDownloadingRecordByUrl()Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lccsansan/cv/pause;->getDownloadingRecordByUrl()Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public getDownloadingList(Lccsansan/cs/IncentiveDownloadUtils;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/cv/pause;->IncentiveDownloadUtils:Lccsansan/cs/IncentiveDownloadUtils;

    return-void
.end method

.method public getDownloadingRecordByUrl()Lccsansan/cs/IncentiveDownloadUtils;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cv/pause;->IncentiveDownloadUtils:Lccsansan/cs/IncentiveDownloadUtils;

    return-object v0
.end method

.method public removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method removeDownloadListener()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/cv/pause;->addDownloadListener:Z

    return v0
.end method

.method public unifiedDownload()Lccsansan/da/removeDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cv/pause;->getDownloadingList:Lccsansan/cs/addDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/cs/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/cv/pause;->IncentiveDownloadUtils:Lccsansan/cs/IncentiveDownloadUtils;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    const-string v0, ""

    .line 6
    :goto_0
    invoke-static {v0}, Lccsansan/cv/deleteDownItem;->removeDownloadListener(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    return-object v0
.end method
