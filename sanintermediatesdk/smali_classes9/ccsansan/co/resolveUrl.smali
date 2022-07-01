.class public Lccsansan/co/resolveUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ActionTypeDetailPage:Ljava/lang/String;

.field private ActionTypeDownload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/execute;",
            ">;"
        }
    .end annotation
.end field

.field private ActionTypeReserveApp:Ljava/lang/String;

.field private final IncentiveDownloadUtils:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/getDownloadStatusByUrl;",
            ">;"
        }
    .end annotation
.end field

.field private IncentiveSDK:Ljava/lang/String;

.field private IncentiveSDK$1:Ljava/lang/String;

.field private final addDownloadListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation
.end field

.field private final deleteDownItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation
.end field

.field private deleteDownList:Ljava/lang/String;

.field private execute:Ljava/lang/String;

.field private final getActionType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadStatusByUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadedCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadedRecordByUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadingCount:Ljava/lang/String;

.field private final getDownloadingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadingRecordByUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation
.end field

.field private getPackageNameByRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/co/getDownloadedRecordByUrl;",
            ">;"
        }
    .end annotation
.end field

.field private getThumbPathByRecord:Lccsansan/co/getDownloadedRecordByUrl;

.field private final pause:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation
.end field

.field private performAction:Ljava/lang/String;

.field private final removeDownloadListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/deleteDownList;",
            ">;"
        }
    .end annotation
.end field

.field private final resolveUrl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resume:Ljava/lang/String;

.field private shouldTryHandlingAction:Lccsansan/co/addDownloadListener;

.field private trackReportClick:Lccsansan/co/trackReportShow;

.field private trackReportShow:Lccsansan/co/getDownloadedRecordByUrl;

.field private final unifiedDownload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->addDownloadListener:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->removeDownloadListener:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->IncentiveDownloadUtils:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->unifiedDownload:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadingList:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadedRecordByUrl:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadingRecordByUrl:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadedList:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->deleteDownItem:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadStatusByUrl:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->getPackageNameByRecord:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadedCount:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->pause:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->resolveUrl:Ljava/util/Set;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->getActionType:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/co/resolveUrl;->ActionTypeDownload:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public ActionTypeDetailPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/resolveUrl;->IncentiveSDK:Ljava/lang/String;

    return-object v0
.end method

.method public IncentiveDownloadUtils(I)Ljava/lang/Integer;
    .locals 7

    .line 12
    const-string v0, "Ad.VastVideoConfig"

    iget-object v1, p0, Lccsansan/co/resolveUrl;->IncentiveSDK:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 15
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v1}, Lccsansan/cx/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    iget-object v1, p0, Lccsansan/co/resolveUrl;->IncentiveSDK:Ljava/lang/String;

    invoke-static {v1}, Lccsansan/cx/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lccsansan/co/resolveUrl;->IncentiveSDK:Ljava/lang/String;

    invoke-static {v1}, Lccsansan/cx/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    iget-object v1, p0, Lccsansan/co/resolveUrl;->IncentiveSDK:Ljava/lang/String;

    const-string v5, "%"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v1, v5

    int-to-float v5, p1

    mul-float v5, v5, v1

    .line 19
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 16
    :goto_0
    nop

    .line 19
    if-eqz v1, :cond_3

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, p1, :cond_1

    return-object v1

    .line 30
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    const-string p1, "Invalid VAST skipoffset format: %s"

    .line 31
    :try_start_1
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lccsansan/co/resolveUrl;->IncentiveSDK:Ljava/lang/String;

    aput-object v5, v1, v3

    .line 32
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 46
    new-array p1, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lccsansan/co/resolveUrl;->IncentiveSDK:Ljava/lang/String;

    aput-object v1, p1, v3

    const-string v1, "Failed to parse skipoffset %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v2
.end method

.method public IncentiveDownloadUtils()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lccsansan/co/getDownloadStatusByUrl;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lccsansan/co/resolveUrl;->IncentiveDownloadUtils:Ljava/util/ArrayList;

    return-object v0
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lccsansan/co/resolveUrl;->deleteDownList:Ljava/lang/String;

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/deleteDownList;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "fractionalTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/co/resolveUrl;->removeDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lccsansan/co/resolveUrl;->removeDownloadListener:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lccsansan/co/resolveUrl;->resolveUrl:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public IncentiveDownloadUtils(Lccsansan/co/trackReportShow;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lccsansan/co/resolveUrl;->trackReportClick:Lccsansan/co/trackReportShow;

    return-void
.end method

.method public IncentiveSDK()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadingCount:Ljava/lang/String;

    return-object v0
.end method

.method public IncentiveSDK$1()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lccsansan/co/resolveUrl;->execute:Ljava/lang/String;

    return-object v0
.end method

.method public addDownloadListener()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lccsansan/co/execute;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/co/resolveUrl;->ActionTypeDownload:Ljava/util/ArrayList;

    return-object v0
.end method

.method public addDownloadListener(I)V
    .locals 0

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/co/resolveUrl;->ActionTypeReserveApp:Ljava/lang/String;

    return-void
.end method

.method public addDownloadListener(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "pauseTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/co/resolveUrl;->unifiedDownload:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addDownloadListener(Lccsansan/co/getDownloadedRecordByUrl;Lccsansan/co/getDownloadedRecordByUrl;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lccsansan/co/resolveUrl;->getThumbPathByRecord:Lccsansan/co/getDownloadedRecordByUrl;

    .line 8
    iput-object p2, p0, Lccsansan/co/resolveUrl;->trackReportShow:Lccsansan/co/getDownloadedRecordByUrl;

    return-void
.end method

.method public deleteDownItem()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lccsansan/co/deleteDownList;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/co/resolveUrl;->removeDownloadListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method public deleteDownItem(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lccsansan/co/resolveUrl;->getDownloadingCount:Ljava/lang/String;

    return-void
.end method

.method public deleteDownItem(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "clickTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsansan/co/resolveUrl;->deleteDownItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public deleteDownList()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lccsansan/co/resolveUrl;->deleteDownList:Ljava/lang/String;

    return-object v0
.end method

.method public deleteDownList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "errorTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadStatusByUrl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getDownloadStatusByUrl()Ljava/util/List;
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
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDownloadStatusByUrl(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lccsansan/co/resolveUrl;->IncentiveSDK:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getDownloadStatusByUrl(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "resumeTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getDownloadedCount()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadStatusByUrl:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDownloadedCount(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "unmuteTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/co/resolveUrl;->pause:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getDownloadedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadedRecordByUrl:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDownloadedList(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lccsansan/co/resolveUrl;->ActionTypeDetailPage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getDownloadedList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "muteTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadedCount:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getDownloadedRecordByUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadingRecordByUrl:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDownloadedRecordByUrl(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lccsansan/co/resolveUrl;->IncentiveSDK$1:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getDownloadedRecordByUrl(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "skipTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getDownloadingCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/resolveUrl;->resume:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/resolveUrl;->ActionTypeReserveApp:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/co/resolveUrl;->performAction:Ljava/lang/String;

    return-void
.end method

.method public getDownloadingList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/getDownloadStatusByUrl;",
            ">;)V"
        }
    .end annotation

    .line 3
    const-string v0, "absoluteTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsansan/co/resolveUrl;->IncentiveDownloadUtils:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lccsansan/co/resolveUrl;->IncentiveDownloadUtils:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public getDownloadingList(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getActionType:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public getDownloadingRecordByUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lccsansan/co/resolveUrl;->deleteDownItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDownloadingRecordByUrl(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lccsansan/co/resolveUrl;->execute:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getDownloadingRecordByUrl(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "closeTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadingRecordByUrl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getPackageNameByRecord()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/co/getDownloadedRecordByUrl;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getPackageNameByRecord:Ljava/util/Map;

    return-object v0
.end method

.method public getThumbPathByRecord()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lccsansan/co/resolveUrl;->IncentiveSDK$1:Ljava/lang/String;

    return-object v0
.end method

.method public pause()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadedCount:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeDownloadListener()Ljava/util/List;
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
    iget-object v0, p0, Lccsansan/co/resolveUrl;->addDownloadListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeDownloadListener(I)Lccsansan/co/getDownloadedRecordByUrl;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 6
    iget-object p1, p0, Lccsansan/co/resolveUrl;->getThumbPathByRecord:Lccsansan/co/getDownloadedRecordByUrl;

    return-object p1

    .line 7
    :cond_0
    iget-object p1, p0, Lccsansan/co/resolveUrl;->getThumbPathByRecord:Lccsansan/co/getDownloadedRecordByUrl;

    return-object p1

    .line 8
    :cond_1
    iget-object p1, p0, Lccsansan/co/resolveUrl;->trackReportShow:Lccsansan/co/getDownloadedRecordByUrl;

    return-object p1
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lccsansan/co/resolveUrl;->resume:Ljava/lang/String;

    return-void
.end method

.method public removeDownloadListener(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lccsansan/co/execute;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lccsansan/co/resolveUrl;->ActionTypeDownload:Ljava/util/ArrayList;

    return-void
.end method

.method public removeDownloadListener(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "impressionTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/co/resolveUrl;->addDownloadListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public resolveUrl()Lccsansan/co/addDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/resolveUrl;->shouldTryHandlingAction:Lccsansan/co/addDownloadListener;

    return-object v0
.end method

.method public resume()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/co/resolveUrl;->pause:Ljava/util/ArrayList;

    return-object v0
.end method

.method public shouldTryHandlingAction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getThumbPathByRecord:Lccsansan/co/getDownloadedRecordByUrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/co/resolveUrl;->trackReportShow:Lccsansan/co/getDownloadedRecordByUrl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public trackReportClick()Lccsansan/co/trackReportShow;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/resolveUrl;->trackReportClick:Lccsansan/co/trackReportShow;

    return-object v0
.end method

.method public trackReportShow()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lccsansan/co/resolveUrl;->ActionTypeDetailPage:Ljava/lang/String;

    return-object v0
.end method

.method public unifiedDownload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/resolveUrl;->performAction:Ljava/lang/String;

    return-object v0
.end method

.method public unifiedDownload(I)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "completeTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/co/resolveUrl;->getDownloadedRecordByUrl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public unifiedDownload(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/co/getDownloadedRecordByUrl;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lccsansan/co/resolveUrl;->getPackageNameByRecord:Ljava/util/Map;

    return-void
.end method
