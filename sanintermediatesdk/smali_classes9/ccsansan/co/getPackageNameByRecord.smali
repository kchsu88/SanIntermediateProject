.class Lccsansan/co/getPackageNameByRecord;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final getDownloadingList:Lccsanorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lccsanorg/w3c/dom/Node;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lccsansan/co/getPackageNameByRecord;->getDownloadingList:Lccsanorg/w3c/dom/Node;

    return-void
.end method

.method private removeDownloadListener(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    new-instance v3, Lccsansan/co/shouldTryHandlingAction;

    invoke-direct {v3, v2, p1}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private unifiedDownload(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v1, p0, Lccsansan/co/getPackageNameByRecord;->getDownloadingList:Lccsanorg/w3c/dom/Node;

    const-string v2, "TrackingEvents"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 66
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 67
    const-string v2, "Tracking"

    const-string v3, "event"

    invoke-static {v1, v2, v3, p1}, Lccsansan/cx/deleteDownItem;->getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanorg/w3c/dom/Node;

    .line 75
    invoke-static {v1}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private unifiedDownload(Ljava/util/List;Ljava/util/List;FLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/deleteDownList;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    const-string v0, "trackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const-string v0, "urls cannot be null"

    invoke-static {p2, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    new-instance v1, Lccsansan/co/deleteDownList;

    invoke-direct {v1, v0, p3, p4}, Lccsansan/co/deleteDownList;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "pause"

    invoke-direct {p0, v0}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    new-instance v4, Lccsansan/co/shouldTryHandlingAction;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5, v0}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method addDownloadListener()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "complete"

    invoke-direct {p0, v0}, Lccsansan/co/getPackageNameByRecord;->removeDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method deleteDownItem()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "unmute"

    invoke-direct {p0, v0}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    new-instance v4, Lccsansan/co/shouldTryHandlingAction;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5, v0}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method deleteDownList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/getThumbPathByRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lccsansan/co/getPackageNameByRecord;->getDownloadingList:Lccsanorg/w3c/dom/Node;

    const-string v2, "Icons"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 8
    :cond_0
    const-string v2, "Icon"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanorg/w3c/dom/Node;

    .line 10
    new-instance v3, Lccsansan/co/getThumbPathByRecord;

    invoke-direct {v3, v2}, Lccsansan/co/getThumbPathByRecord;-><init>(Lccsanorg/w3c/dom/Node;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getDownloadStatusByUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "skip"

    invoke-direct {p0, v0}, Lccsansan/co/getPackageNameByRecord;->removeDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getDownloadedCount()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/co/getPackageNameByRecord;->getDownloadingList:Lccsanorg/w3c/dom/Node;

    const-string v1, "Duration"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDownloadedList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "mute"

    invoke-direct {p0, v0}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    new-instance v4, Lccsansan/co/shouldTryHandlingAction;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5, v0}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method getDownloadedRecordByUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/getPackageNameByRecord;->getDownloadingList:Lccsanorg/w3c/dom/Node;

    const-string v1, "VideoClicks"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    const-string v1, "ClickThrough"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDownloadingCount()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/co/getPackageNameByRecord;->getDownloadingList:Lccsanorg/w3c/dom/Node;

    const-string v1, "skipoffset"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->unifiedDownload(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDownloadingList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/deleteDownList;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    const-string v1, "firstQuartile"

    invoke-direct {p0, v1}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {p0, v0, v2, v3, v1}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload(Ljava/util/List;Ljava/util/List;FLjava/lang/String;)V

    .line 4
    const-string v1, "midpoint"

    invoke-direct {p0, v1}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v2, v3, v1}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload(Ljava/util/List;Ljava/util/List;FLjava/lang/String;)V

    .line 5
    const-string v1, "thirdQuartile"

    invoke-direct {p0, v1}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v2, v3, v1}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload(Ljava/util/List;Ljava/util/List;FLjava/lang/String;)V

    .line 7
    iget-object v1, p0, Lccsansan/co/getPackageNameByRecord;->getDownloadingList:Lccsanorg/w3c/dom/Node;

    const-string v2, "TrackingEvents"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    const-string v2, "progress"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 12
    const-string v4, "Tracking"

    const-string v5, "event"

    invoke-static {v1, v4, v5, v3}, Lccsansan/cx/deleteDownItem;->getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanorg/w3c/dom/Node;

    .line 16
    const-string v4, "offset"

    invoke-static {v3, v4}, Lccsansan/cx/deleteDownItem;->unifiedDownload(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-static {v4}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 22
    invoke-static {v3}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v5, "%"

    const-string v6, ""

    .line 25
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_0

    .line 27
    new-instance v6, Lccsansan/co/deleteDownList;

    invoke-direct {v6, v3, v5, v2}, Lccsansan/co/deleteDownList;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v3, 0x1

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Failed to parse VAST progress tracker %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ad.VastLinearXmlManager"

    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method getDownloadingRecordByUrl()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "close"

    invoke-direct {p0, v0}, Lccsansan/co/getPackageNameByRecord;->removeDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    const-string v1, "closeLinear"

    invoke-direct {p0, v1}, Lccsansan/co/getPackageNameByRecord;->removeDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method pause()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lccsansan/co/getPackageNameByRecord;->getDownloadingList:Lccsanorg/w3c/dom/Node;

    const-string v2, "VideoClicks"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 8
    :cond_0
    const-string v2, "ClickTracking"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanorg/w3c/dom/Node;

    .line 14
    invoke-static {v2}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 16
    new-instance v3, Lccsansan/co/shouldTryHandlingAction;

    const-string v4, ""

    invoke-direct {v3, v2, v4}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method removeDownloadListener()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "resume"

    invoke-direct {p0, v0}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    new-instance v4, Lccsansan/co/shouldTryHandlingAction;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5, v0}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method resume()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/execute;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lccsansan/co/getPackageNameByRecord;->getDownloadingList:Lccsanorg/w3c/dom/Node;

    const-string v2, "MediaFiles"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 8
    :cond_0
    const-string v2, "MediaFile"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanorg/w3c/dom/Node;

    .line 10
    new-instance v3, Lccsansan/co/execute;

    invoke-direct {v3, v2}, Lccsansan/co/execute;-><init>(Lccsanorg/w3c/dom/Node;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method unifiedDownload()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/getDownloadStatusByUrl;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const-string v1, "start"

    invoke-direct {p0, v1}, Lccsansan/co/getPackageNameByRecord;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    new-instance v5, Lccsansan/co/getDownloadStatusByUrl;

    invoke-direct {v5, v3, v4, v1}, Lccsansan/co/getDownloadStatusByUrl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lccsansan/co/getPackageNameByRecord;->getDownloadingList:Lccsanorg/w3c/dom/Node;

    const-string v2, "TrackingEvents"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14
    const-string v2, "progress"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 15
    const-string v5, "Tracking"

    const-string v6, "event"

    invoke-static {v1, v5, v6, v3}, Lccsansan/cx/deleteDownItem;->getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanorg/w3c/dom/Node;

    .line 18
    const-string v8, "offset"

    invoke-static {v7, v8}, Lccsansan/cx/deleteDownItem;->unifiedDownload(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-static {v8}, Lccsansan/cx/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 24
    invoke-static {v7}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 26
    :try_start_0
    invoke-static {v8}, Lccsansan/cx/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 27
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ltz v10, :cond_1

    .line 28
    new-instance v10, Lccsansan/co/getDownloadStatusByUrl;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v10, v7, v9, v2}, Lccsansan/co/getDownloadStatusByUrl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    const/4 v7, 0x1

    .line 31
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v4

    const-string v8, "Failed to parse VAST progress tracker %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Ad.VastLinearXmlManager"

    invoke-static {v8, v7}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    nop

    .line 39
    const-string v2, "creativeView"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 40
    invoke-static {v1, v5, v6, v3}, Lccsansan/cx/deleteDownItem;->getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanorg/w3c/dom/Node;

    .line 43
    invoke-static {v3}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 45
    new-instance v5, Lccsansan/co/getDownloadStatusByUrl;

    invoke-direct {v5, v3, v4, v2}, Lccsansan/co/getDownloadStatusByUrl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 53
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method
