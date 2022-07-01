.class final Lccsansan/au/addDownloadListener$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:[Ljava/lang/String;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadedRecordByUrl:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic getDownloadingRecordByUrl:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;

.field final synthetic unifiedDownload:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    iput p5, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->unifiedDownload:I

    iput-object p6, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:[Ljava/lang/String;

    iput-object p7, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    iput-object p8, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 11

    .line 1
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    .line 2
    iget v1, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->unifiedDownload:I

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 3
    iput v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    .line 4
    iget-object v1, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v1, v2}, Lccsansan/au/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 9
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 11
    :goto_0
    iget-object v2, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 13
    aget-object v2, v2, v1

    invoke-static {v2}, Lccsansan/ab/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 14
    new-instance v10, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v8

    move-object v5, v0

    move-object v6, v9

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;-><init>(Lccsansan/au/addDownloadListener$getDownloadingList;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;I)V

    iget-object v2, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/au/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {v9, v10, v2, v3}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
