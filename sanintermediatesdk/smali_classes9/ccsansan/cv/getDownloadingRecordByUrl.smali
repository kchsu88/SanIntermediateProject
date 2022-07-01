.class public Lccsansan/cv/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/aw/getDownloadingList;


# instance fields
.field private addDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsansan/cs/unifiedDownload;",
            "Lccsansan/cv/deleteDownList;",
            ">;"
        }
    .end annotation
.end field

.field private unifiedDownload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsansan/cs/unifiedDownload;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsansan/cv/getDownloadingRecordByUrl;->addDownloadListener:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsansan/cv/getDownloadingRecordByUrl;->unifiedDownload:Ljava/util/Map;

    .line 6
    sget-object v1, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-static {}, Lccsansan/cl/unifiedDownload;->getDownloadingRecordByUrl()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lccsansan/cv/getDownloadingRecordByUrl;->unifiedDownload:Ljava/util/Map;

    sget-object v1, Lccsansan/cs/unifiedDownload;->PIC:Lccsansan/cs/unifiedDownload;

    invoke-static {}, Lccsansan/cl/unifiedDownload;->getDownloadedList()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lccsansan/cv/getDownloadingRecordByUrl;->unifiedDownload:Ljava/util/Map;

    sget-object v1, Lccsansan/cs/unifiedDownload;->VIDEO:Lccsansan/cs/unifiedDownload;

    invoke-static {}, Lccsansan/cl/unifiedDownload;->getDownloadedRecordByUrl()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getDownloadingList(Lccsansan/cs/unifiedDownload;)Lccsansan/cv/deleteDownList;
    .locals 2

    .line 5
    iget-object v0, p0, Lccsansan/cv/getDownloadingRecordByUrl;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/cv/deleteDownList;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lccsansan/cv/getDownloadingRecordByUrl;->unifiedDownload:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lccsansan/cv/deleteDownList;

    invoke-direct {v0}, Lccsansan/cv/deleteDownList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lccsansan/cv/deleteDownList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lccsansan/cv/deleteDownList;-><init>(I)V

    move-object v0, v1

    .line 9
    :goto_0
    iget-object v1, p0, Lccsansan/cv/getDownloadingRecordByUrl;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    return-object v0
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/aw/IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/cv/getDownloadingRecordByUrl;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/cs/unifiedDownload;

    .line 3
    invoke-direct {p0, v2}, Lccsansan/cv/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/cs/unifiedDownload;)Lccsansan/cv/deleteDownList;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/cv/deleteDownList;->getDownloadingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;)V
    .locals 1

    .line 10
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingCount()Lccsansan/cs/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-direct {p0, v0}, Lccsansan/cv/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/cs/unifiedDownload;)Lccsansan/cv/deleteDownList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/cv/deleteDownList;->IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;)V

    :cond_0
    return-void
.end method

.method public addDownloadListener()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lccsansan/aw/IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lccsansan/cv/getDownloadingRecordByUrl;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/cv/deleteDownList;

    .line 4
    invoke-virtual {v2}, Lccsansan/cv/deleteDownList;->addDownloadListener()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public addDownloadListener(Lccsansan/cs/unifiedDownload;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cs/unifiedDownload;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/aw/IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lccsansan/cv/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/cs/unifiedDownload;)Lccsansan/cv/deleteDownList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/cv/deleteDownList;->getDownloadingList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadingList(Ljava/lang/String;)Z
    .locals 5

    .line 7
    iget-object v0, p0, Lccsansan/cv/getDownloadingRecordByUrl;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/cv/deleteDownList;

    .line 8
    invoke-virtual {v1}, Lccsansan/cv/deleteDownList;->IncentiveDownloadUtils()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v2, :cond_1

    return v4

    :cond_1
    if-ne v3, v2, :cond_0

    .line 11
    invoke-virtual {v1, p1}, Lccsansan/cv/deleteDownList;->removeDownloadListener(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v1

    if-nez v1, :cond_0

    return v4

    :cond_2
    return v2
.end method

.method public getDownloadingList(Lccsansan/aw/IncentiveDownloadUtils;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeDownloadListener(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;
    .locals 2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsansan/cv/getDownloadingRecordByUrl;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/cv/deleteDownList;

    .line 17
    invoke-virtual {v1, p1}, Lccsansan/cv/deleteDownList;->removeDownloadListener(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 6
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingCount()Lccsansan/cs/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0, v0}, Lccsansan/cv/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/cs/unifiedDownload;)Lccsansan/cv/deleteDownList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/cv/deleteDownList;->removeDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;)V

    :cond_1
    return-void
.end method

.method public removeDownloadListener(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cv/getDownloadingRecordByUrl;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/cv/deleteDownList;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lccsansan/cv/getDownloadingRecordByUrl;->removeDownloadListener(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/cv/deleteDownList;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;)V

    .line 4
    invoke-virtual {p0, p2}, Lccsansan/cv/getDownloadingRecordByUrl;->removeDownloadListener(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/cv/deleteDownList;->IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;)V

    :cond_0
    return-void
.end method

.method public unifiedDownload()V
    .locals 2

    .line 13
    iget-object v0, p0, Lccsansan/cv/getDownloadingRecordByUrl;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/cv/deleteDownList;

    .line 14
    invoke-virtual {v1}, Lccsansan/cv/deleteDownList;->unifiedDownload()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingCount()Lccsansan/cs/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lccsansan/cv/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/cs/unifiedDownload;)Lccsansan/cv/deleteDownList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/cv/deleteDownList;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;)V

    :cond_0
    return-void
.end method
