.class public Lccsansan/dc/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/dc/unifiedDownload$getDownloadingList;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/dc/unifiedDownload$getDownloadingList;

.field private final removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    return-void
.end method

.method public static addDownloadListener(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/dc/unifiedDownload;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/dc/unifiedDownload;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v1}, Lccsansan/dc/unifiedDownload;->getDownloadingList()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/dt/removeDownloadListener;

    .line 7
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v3, " LimitShowCnt = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getRemainedDelayTime()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v3, "; TodayShowCnt = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    nop

    .line 13
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AD.Mads.Group"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static getDownloadingList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;)",
            "Ljava/util/List<",
            "Lccsansan/dc/unifiedDownload;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/dt/removeDownloadListener;

    .line 4
    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/dc/unifiedDownload;

    if-nez v4, :cond_0

    .line 7
    new-instance v4, Lccsansan/dc/unifiedDownload;

    invoke-direct {v4}, Lccsansan/dc/unifiedDownload;-><init>()V

    .line 8
    invoke-virtual {v4, v3}, Lccsansan/dc/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsansan/dc/unifiedDownload;->getDownloadingList(Ljava/lang/String;)V

    .line 10
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    invoke-virtual {v4, v2}, Lccsansan/dc/unifiedDownload;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public IncentiveDownloadUtils()I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dc/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dc/unifiedDownload$getDownloadingList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lccsansan/dc/unifiedDownload$getDownloadingList;

    invoke-direct {v0}, Lccsansan/dc/unifiedDownload$getDownloadingList;-><init>()V

    iput-object v0, p0, Lccsansan/dc/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dc/unifiedDownload$getDownloadingList;

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/dc/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dc/unifiedDownload$getDownloadingList;

    iget v0, v0, Lccsansan/dc/unifiedDownload$getDownloadingList;->removeDownloadListener:I

    return v0
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addDownloadListener()I
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/dc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/dt/removeDownloadListener;

    .line 2
    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getLocalExtras()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getDownloadStatusByUrl()Lccsansan/dt/removeDownloadListener;
    .locals 4

    .line 19
    iget-object v0, p0, Lccsansan/dc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    sget-object v1, Lccsansan/bw/getErrorMessage;->addDownloadListener:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lccsansan/dc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/dt/removeDownloadListener;

    .line 23
    invoke-virtual {p0, v2, v0}, Lccsansan/dc/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Lccsanandroid/util/Pair;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#networkCondition = true, and now is ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.Mads.Group"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadingList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lccsansan/dc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    sget-object v1, Lccsansan/bw/getErrorMessage;->addDownloadListener:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    iget-object v0, p0, Lccsansan/dc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getDownloadingList(Lccsansan/dt/removeDownloadListener;Lccsanandroid/util/Pair;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/dt/removeDownloadListener;",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 29
    :cond_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/deleteDownList;->removeDownloadListener()I

    move-result p1

    if-lez p1, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    iget-object p1, p2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, p2, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 39
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    goto :goto_1

    .line 41
    :cond_5
    iget-object p1, p2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_6
    :goto_1
    return v1
.end method

.method public removeDownloadListener()I
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/dc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/dt/removeDownloadListener;

    .line 5
    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->hasSucceed()I

    move-result v0

    return v0
.end method

.method public unifiedDownload()J
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/dc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/dt/removeDownloadListener;

    .line 5
    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->deleteDownList()J

    move-result-wide v0

    return-wide v0
.end method

.method public unifiedDownload(Lccsansan/dt/removeDownloadListener;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lccsansan/dc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
