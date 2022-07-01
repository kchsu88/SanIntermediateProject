.class Lccsansan/co/pause;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final IncentiveDownloadUtils:Lccsansan/co/IncentiveSDK$1;

.field private final addDownloadListener:Lccsanorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lccsanorg/w3c/dom/Node;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "companionNode cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lccsansan/co/pause;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    .line 4
    new-instance v0, Lccsansan/co/IncentiveSDK$1;

    invoke-direct {v0, p1}, Lccsansan/co/IncentiveSDK$1;-><init>(Lccsanorg/w3c/dom/Node;)V

    iput-object v0, p0, Lccsansan/co/pause;->IncentiveDownloadUtils:Lccsansan/co/IncentiveSDK$1;

    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/pause;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->removeDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method addDownloadListener()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/pause;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    const-string v1, "CompanionClickThrough"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method deleteDownItem()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/pause;->IncentiveDownloadUtils:Lccsansan/co/IncentiveSDK$1;

    invoke-virtual {v0}, Lccsansan/co/IncentiveSDK$1;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsansan/co/pause;->IncentiveDownloadUtils:Lccsansan/co/IncentiveSDK$1;

    .line 2
    invoke-virtual {v0}, Lccsansan/co/IncentiveSDK$1;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsansan/co/pause;->IncentiveDownloadUtils:Lccsansan/co/IncentiveSDK$1;

    .line 3
    invoke-virtual {v0}, Lccsansan/co/IncentiveSDK$1;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method getDownloadStatusByUrl()Ljava/util/List;
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/co/pause;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    const-string v2, "TrackingEvents"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 15
    :cond_0
    const-string v2, "creativeView"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 16
    const-string v4, "Tracking"

    const-string v5, "event"

    invoke-static {v1, v4, v5, v3}, Lccsansan/cx/deleteDownItem;->getDownloadingList(Lccsanorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanorg/w3c/dom/Node;

    .line 24
    invoke-static {v3}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 26
    new-instance v4, Lccsansan/co/shouldTryHandlingAction;

    invoke-direct {v4, v3, v2}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getDownloadingList()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/pause;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->removeDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getDownloadingRecordByUrl()Ljava/util/List;
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

    .line 2
    iget-object v1, p0, Lccsansan/co/pause;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    const-string v2, "CompanionClickTracking"

    invoke-static {v1, v2}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 6
    :cond_0
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

    .line 7
    invoke-static {v2}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    new-instance v3, Lccsansan/co/shouldTryHandlingAction;

    const-string v4, ""

    invoke-direct {v3, v2, v4}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method removeDownloadListener()Lccsansan/co/IncentiveSDK$1;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/pause;->IncentiveDownloadUtils:Lccsansan/co/IncentiveSDK$1;

    return-object v0
.end method

.method unifiedDownload()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/pause;->addDownloadListener:Lccsanorg/w3c/dom/Node;

    const-string v1, "adSlotID"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->unifiedDownload(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
