.class public Lccsansan/co/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final IncentiveDownloadUtils:I

.field private final addDownloadListener:Lccsansan/co/ActionTypeDetailPage;

.field private final getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation
.end field

.field private final removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;"
        }
    .end annotation
.end field

.field private final unifiedDownload:I


# direct methods
.method public constructor <init>(IILccsansan/co/ActionTypeDetailPage;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lccsansan/co/ActionTypeDetailPage;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;",
            "Ljava/util/List<",
            "Lccsansan/co/shouldTryHandlingAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p3}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 3
    const-string p4, "clickTrackers cannot be null"

    invoke-static {p5, p4}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string p4, "creativeViewTrackers cannot be null"

    invoke-static {p6, p4}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput p1, p0, Lccsansan/co/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    .line 7
    iput p2, p0, Lccsansan/co/getDownloadedRecordByUrl;->unifiedDownload:I

    .line 8
    iput-object p3, p0, Lccsansan/co/getDownloadedRecordByUrl;->addDownloadListener:Lccsansan/co/ActionTypeDetailPage;

    .line 10
    iput-object p5, p0, Lccsansan/co/getDownloadedRecordByUrl;->removeDownloadListener:Ljava/util/List;

    .line 11
    iput-object p6, p0, Lccsansan/co/getDownloadedRecordByUrl;->getDownloadingList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Lccsansan/co/ActionTypeDetailPage;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/co/getDownloadedRecordByUrl;->addDownloadListener:Lccsansan/co/ActionTypeDetailPage;

    return-object v0
.end method

.method public getDownloadingList()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/co/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    return v0
.end method

.method public getDownloadingList(Ljava/util/List;)V
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
    const-string v0, "creativeViewTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/co/getDownloadedRecordByUrl;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
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

    .line 3
    iget-object v0, p0, Lccsansan/co/getDownloadedRecordByUrl;->getDownloadingList:Ljava/util/List;

    return-object v0
.end method

.method public unifiedDownload()I
    .locals 1

    .line 3
    iget v0, p0, Lccsansan/co/getDownloadedRecordByUrl;->unifiedDownload:I

    return v0
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
    const-string v0, "clickTrackers cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/co/getDownloadedRecordByUrl;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
