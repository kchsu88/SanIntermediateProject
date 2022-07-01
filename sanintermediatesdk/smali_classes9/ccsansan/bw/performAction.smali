.class public Lccsansan/bw/performAction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bw/performAction$unifiedDownload;,
        Lccsansan/bw/performAction$IncentiveDownloadUtils;
    }
.end annotation


# static fields
.field private static final IncentiveDownloadUtils:I

.field private static final getDownloadingList:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lccsansan/bw/performAction;->IncentiveDownloadUtils:I

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lccsansan/bw/performAction;->getDownloadingList:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lccsansan/bw/performAction;->addDownloadListener(Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic addDownloadListener()I
    .locals 1

    .line 2
    sget v0, Lccsansan/bw/performAction;->IncentiveDownloadUtils:I

    return v0
.end method

.method private static addDownloadListener(Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;
    .locals 12

    const-string v0, "BlurUtils"

    if-nez p0, :cond_0

    .line 2
    const-string p1, "blurImage: bmp = null"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    int-to-float p1, p1

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, p1

    .line 9
    invoke-static {v4}, Lccsansan/bw/performAction;->getDownloadingList(F)Lccsanandroid/graphics/Matrix;

    move-result-object v10

    .line 10
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Lccsanandroid/graphics/Bitmap;->createBitmap(Lccsanandroid/graphics/Bitmap;IIIILccsanandroid/graphics/Matrix;Z)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    if-gtz p2, :cond_2

    const/4 p2, 0x1

    :cond_2
    const/16 v3, 0x19

    if-le p2, v3, :cond_3

    const/16 p2, 0x19

    .line 18
    :cond_3
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, p2, :cond_4

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v3, p2, :cond_4

    .line 19
    new-instance v3, Lccsansan/bw/performAction$unifiedDownload;

    invoke-direct {v3, v4}, Lccsansan/bw/performAction$unifiedDownload;-><init>(Lccsansan/bw/performAction$addDownloadListener;)V

    .line 20
    invoke-virtual {v3, p1, p2}, Lccsansan/bw/performAction$unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/graphics/Bitmap;I)Lccsanandroid/graphics/Bitmap;

    move-result-object v4

    .line 22
    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 23
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 24
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "blurImage: usedTime = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static addDownloadListener(Lccsanandroid/view/View;Lccsansan/bw/performAction$IncentiveDownloadUtils;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lccsansan/bw/performAction;->unifiedDownload(Lccsanandroid/view/View;)Lccsanandroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1}, Lccsansan/bw/performAction;->unifiedDownload(Lccsanandroid/graphics/Bitmap;Lccsansan/bw/performAction$IncentiveDownloadUtils;)V

    return-void
.end method

.method private static getDownloadingList(F)Lccsanandroid/graphics/Matrix;
    .locals 1

    .line 16
    new-instance v0, Lccsanandroid/graphics/Matrix;

    invoke-direct {v0}, Lccsanandroid/graphics/Matrix;-><init>()V

    .line 17
    invoke-virtual {v0, p0, p0}, Lccsanandroid/graphics/Matrix;->setScale(FF)V

    return-object v0
.end method

.method private static unifiedDownload(Lccsanandroid/view/View;)Lccsanandroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->setDrawingCacheEnabled(Z)V

    const/high16 v1, 0x80000

    .line 6
    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->setDrawingCacheQuality(I)V

    .line 7
    invoke-virtual {p0}, Lccsanandroid/view/View;->buildDrawingCache()V

    .line 8
    invoke-virtual {p0}, Lccsanandroid/view/View;->getDrawingCache()Lccsanandroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v5

    .line 12
    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v6

    const/high16 v0, 0x3f000000    # 0.5f

    .line 13
    invoke-static {v0}, Lccsansan/bw/performAction;->getDownloadingList(F)Lccsanandroid/graphics/Matrix;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lccsanandroid/graphics/Bitmap;->createBitmap(Lccsanandroid/graphics/Bitmap;IIIILccsanandroid/graphics/Matrix;Z)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 15
    invoke-virtual {p0}, Lccsanandroid/view/View;->destroyDrawingCache()V

    return-object v0
.end method

.method static synthetic unifiedDownload()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/bw/performAction;->getDownloadingList:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static unifiedDownload(Lccsanandroid/graphics/Bitmap;Lccsansan/bw/performAction$IncentiveDownloadUtils;)V
    .locals 2

    .line 4
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bw/performAction$addDownloadListener;

    invoke-direct {v1, p0, p1}, Lccsansan/bw/performAction$addDownloadListener;-><init>(Lccsanandroid/graphics/Bitmap;Lccsansan/bw/performAction$IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method
