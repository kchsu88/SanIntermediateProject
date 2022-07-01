.class Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ay/getDownloadingList$removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ay/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getDownloadedRecordByUrl"
.end annotation


# instance fields
.field private addDownloadListener:Lccsansan/aj/getDownloadingList;


# direct methods
.method public constructor <init>(Lccsansan/aj/getDownloadingList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;)Lccsansan/aj/getDownloadingList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    return-object p0
.end method


# virtual methods
.method public getDownloadingList(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lccsansan/k/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p2}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;

    invoke-direct {v0, p0, p2}, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;-><init>(Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object p1, p1, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
