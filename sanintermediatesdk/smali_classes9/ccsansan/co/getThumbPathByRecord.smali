.class public Lccsansan/co/getThumbPathByRecord;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final IncentiveDownloadUtils:Lccsanorg/w3c/dom/Node;

.field private final removeDownloadListener:Lccsansan/co/IncentiveSDK$1;


# direct methods
.method constructor <init>(Lccsanorg/w3c/dom/Node;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lccsansan/co/getThumbPathByRecord;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Node;

    .line 4
    new-instance v0, Lccsansan/co/IncentiveSDK$1;

    invoke-direct {v0, p1}, Lccsansan/co/IncentiveSDK$1;-><init>(Lccsanorg/w3c/dom/Node;)V

    iput-object v0, p0, Lccsansan/co/getThumbPathByRecord;->removeDownloadListener:Lccsansan/co/IncentiveSDK$1;

    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/co/getThumbPathByRecord;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Node;

    const-string v1, "offset"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->unifiedDownload(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-static {v0}, Lccsansan/cx/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Invalid VAST icon offset format: %s:"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad.VastIconXmlManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method addDownloadListener()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/co/getThumbPathByRecord;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Node;

    const-string v1, "duration"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->unifiedDownload(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-static {v0}, Lccsansan/cx/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Invalid VAST icon duration format: %s:"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad.VastIconXmlManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getDownloadedList()Ljava/util/List;
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
    iget-object v0, p0, Lccsansan/co/getThumbPathByRecord;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Node;

    .line 2
    const-string v1, "IconViewTracking"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanorg/w3c/dom/Node;

    .line 6
    invoke-static {v2}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    new-instance v3, Lccsansan/co/shouldTryHandlingAction;

    const-string v4, ""

    invoke-direct {v3, v2, v4}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method getDownloadedRecordByUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/getThumbPathByRecord;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Node;

    const-string v1, "IconClicks"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_0
    const-string v1, "IconClickThrough"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDownloadingList()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/getThumbPathByRecord;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Node;

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
    iget-object v0, p0, Lccsansan/co/getThumbPathByRecord;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Node;

    const-string v1, "IconClicks"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->IncentiveDownloadUtils(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Lccsanorg/w3c/dom/Node;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    .line 8
    :cond_0
    const-string v2, "IconClickTracking"

    invoke-static {v0, v2}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanorg/w3c/dom/Node;

    .line 10
    invoke-static {v2}, Lccsansan/cx/deleteDownItem;->addDownloadListener(Lccsanorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    new-instance v3, Lccsansan/co/shouldTryHandlingAction;

    const-string v4, ""

    invoke-direct {v3, v2, v4}, Lccsansan/co/shouldTryHandlingAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method removeDownloadListener()Lccsansan/co/IncentiveSDK$1;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/getThumbPathByRecord;->removeDownloadListener:Lccsansan/co/IncentiveSDK$1;

    return-object v0
.end method

.method unifiedDownload()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/co/getThumbPathByRecord;->IncentiveDownloadUtils:Lccsanorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lccsansan/cx/deleteDownItem;->removeDownloadListener(Lccsanorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
