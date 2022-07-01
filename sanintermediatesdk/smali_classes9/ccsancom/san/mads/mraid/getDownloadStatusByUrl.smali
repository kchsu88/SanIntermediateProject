.class Lccsancom/san/mads/mraid/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final IncentiveDownloadUtils:Lccsanandroid/graphics/Rect;

.field private final addDownloadListener:Lccsanandroid/graphics/Rect;

.field private final getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

.field private final getDownloadedRecordByUrl:Lccsanandroid/graphics/Rect;

.field private final getDownloadingList:Lccsanandroid/graphics/Rect;

.field private final getDownloadingRecordByUrl:Lccsanandroid/graphics/Rect;

.field private final removeDownloadListener:Lccsanandroid/graphics/Rect;

.field private final unifiedDownload:Lccsanandroid/graphics/Rect;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    .line 5
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/graphics/Rect;

    .line 6
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsanandroid/graphics/Rect;

    .line 8
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/graphics/Rect;

    .line 9
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->removeDownloadListener:Lccsanandroid/graphics/Rect;

    .line 11
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingList:Lccsanandroid/graphics/Rect;

    .line 12
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

    .line 14
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadedRecordByUrl:Lccsanandroid/graphics/Rect;

    .line 15
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingRecordByUrl:Lccsanandroid/graphics/Rect;

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p1, Lccsanandroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-static {v0}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v0

    iget v1, p1, Lccsanandroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 2
    invoke-static {v1}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v1

    iget v2, p1, Lccsanandroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 3
    invoke-static {v2}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v2

    iget p1, p1, Lccsanandroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    .line 4
    invoke-static {p1}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result p1

    .line 5
    invoke-virtual {p2, v0, v1, v2, p1}, Lccsanandroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()Lccsanandroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->removeDownloadListener:Lccsanandroid/graphics/Rect;

    return-object v0
.end method

.method IncentiveDownloadUtils(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadedRecordByUrl:Lccsanandroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 2
    iget-object p1, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadedRecordByUrl:Lccsanandroid/graphics/Rect;

    iget-object p2, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingRecordByUrl:Lccsanandroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingList(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    return-void
.end method

.method addDownloadListener()Lccsanandroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsanandroid/graphics/Rect;

    return-object v0
.end method

.method deleteDownItem()Lccsanandroid/graphics/Rect;
    .locals 1

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingRecordByUrl:Lccsanandroid/graphics/Rect;

    return-object v0
.end method

.method getDownloadingList()Lccsanandroid/graphics/Rect;
    .locals 1

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadedRecordByUrl:Lccsanandroid/graphics/Rect;

    return-object v0
.end method

.method getDownloadingList(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 2
    iget-object p1, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/graphics/Rect;

    iget-object p2, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->removeDownloadListener:Lccsanandroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingList(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    return-void
.end method

.method removeDownloadListener()Lccsanandroid/graphics/Rect;
    .locals 1

    .line 10
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

    return-object v0
.end method

.method unifiedDownload()Lccsanandroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/graphics/Rect;

    return-object v0
.end method

.method unifiedDownload(II)V
    .locals 2

    .line 6
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 7
    iget-object p1, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/graphics/Rect;

    iget-object p2, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsanandroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingList(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    return-void
.end method

.method unifiedDownload(IIII)V
    .locals 1

    .line 8
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingList:Lccsanandroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 9
    iget-object p1, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingList:Lccsanandroid/graphics/Rect;

    iget-object p2, p0, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadStatusByUrl:Lccsanandroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingList(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    return-void
.end method
