.class public Lccsansan/cr/addDownloadListener$removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cr/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "removeDownloadListener"
.end annotation


# instance fields
.field private final getDownloadingList:Lccsanandroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsansan/cr/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsanandroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getDownloadingList(Lccsanandroid/view/View;Lccsanandroid/view/View;ILjava/lang/Integer;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 2
    invoke-virtual {p2}, Lccsanandroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lccsanandroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lccsansan/cr/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsanandroid/graphics/Rect;

    invoke-virtual {p2, p1}, Lccsanandroid/view/View;->getGlobalVisibleRect(Lccsanandroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 12
    :cond_1
    iget-object p1, p0, Lccsansan/cr/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1}, Lccsanandroid/graphics/Rect;->height()I

    move-result p1

    int-to-long v1, p1

    iget-object p1, p0, Lccsansan/cr/addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1}, Lccsanandroid/graphics/Rect;->width()I

    move-result p1

    int-to-long v3, p1

    mul-long v1, v1, v3

    .line 13
    invoke-virtual {p2}, Lccsanandroid/view/View;->getHeight()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {p2}, Lccsanandroid/view/View;->getWidth()I

    move-result p1

    int-to-long p1, p1

    mul-long v3, v3, p1

    const-wide/16 p1, 0x0

    cmp-long v5, v3, p1

    if-gtz v5, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    if-eqz p4, :cond_4

    .line 19
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_4

    .line 20
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    cmp-long p4, v1, p2

    if-ltz p4, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    const-wide/16 v5, 0x64

    mul-long v1, v1, v5

    int-to-long p2, p3

    mul-long p2, p2, v3

    cmp-long p4, v1, p2

    if-ltz p4, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_0
    return v0
.end method

.method public removeDownloadListener(JI)Z
    .locals 2

    .line 1
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    int-to-long p1, p3

    cmp-long p3, v0, p1

    if-ltz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method