.class Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/banner/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncentiveDownloadUtils"
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:I

.field private final addDownloadListener:I

.field private getDownloadingList:J

.field private final removeDownloadListener:Lccsanandroid/graphics/Rect;


# direct methods
.method constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/graphics/Rect;

    .line 5
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:J

    .line 8
    iput p1, p0, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    .line 9
    iput p2, p0, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:I

    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:J

    sub-long/2addr v2, v4

    iget v0, p0, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method removeDownloadListener()V
    .locals 2

    .line 1
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:J

    return-void
.end method

.method removeDownloadListener(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 2
    invoke-virtual {p2}, Lccsanandroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p2}, Lccsanandroid/view/View;->getHeight()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/graphics/Rect;

    invoke-virtual {p2, p1}, Lccsanandroid/view/View;->getGlobalVisibleRect(Lccsanandroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 17
    :cond_2
    iget-object p1, p0, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1}, Lccsanandroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    .line 18
    invoke-virtual {p2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    .line 19
    invoke-static {p1, v1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(FLccsanandroid/content/Context;)I

    move-result p1

    .line 21
    iget-object v1, p0, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/graphics/Rect;

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 22
    invoke-virtual {p2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p2

    .line 23
    invoke-static {v1, p2}, Lccsansan/bw/toString;->IncentiveDownloadUtils(FLccsanandroid/content/Context;)I

    move-result p2

    mul-int p1, p1, p2

    int-to-long p1, p1

    .line 27
    iget v1, p0, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method unifiedDownload()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
