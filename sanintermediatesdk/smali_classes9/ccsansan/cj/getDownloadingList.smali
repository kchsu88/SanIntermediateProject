.class public Lccsansan/cj/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public IncentiveDownloadUtils:J

.field public addDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/cj/IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation
.end field

.field public getDownloadingList:Ljava/lang/String;

.field private removeDownloadListener:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/cj/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cj/getDownloadingList;->IncentiveDownloadUtils:J

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsansan/cj/getDownloadingList;->addDownloadListener:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public removeDownloadListener()Z
    .locals 3

    .line 8
    iget-object v0, p0, Lccsansan/cj/getDownloadingList;->addDownloadListener:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lccsansan/cj/getDownloadingList;->addDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/cj/IncentiveDownloadUtils;

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v2}, Lccsansan/cj/addDownloadListener;->removeDownloadListener()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cj/getDownloadingList;->addDownloadListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsansan/cj/getDownloadingList;->addDownloadListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Lccsansan/cj/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-wide v1, p0, Lccsansan/cj/getDownloadingList;->IncentiveDownloadUtils:J

    const-string v3, "[MM-dd HH:mm:ss]"

    invoke-static {v1, v2, v3}, Lccsansan/bw/AdFormat;->unifiedDownload(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsansan/cj/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    :cond_1
    nop

    .line 6
    const-string v1, "  EventGrouper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cj/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v1, ", isExpected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/cj/getDownloadingList;->removeDownloadListener()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ", groupBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cj/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lccsansan/cj/getDownloadingList;->addDownloadListener:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/cj/addDownloadListener;

    .line 14
    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload(Lccsansan/cj/IncentiveDownloadUtils;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/cj/getDownloadingList;->addDownloadListener:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/cj/getDownloadingList;->addDownloadListener:Ljava/util/List;

    .line 4
    :cond_1
    iget-object v0, p0, Lccsansan/cj/getDownloadingList;->addDownloadListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-wide v0, p0, Lccsansan/cj/getDownloadingList;->IncentiveDownloadUtils:J

    iget-wide v2, p1, Lccsansan/cj/addDownloadListener;->addDownloadListener:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 7
    iput-wide v2, p0, Lccsansan/cj/getDownloadingList;->IncentiveDownloadUtils:J

    :cond_2
    return-void
.end method
