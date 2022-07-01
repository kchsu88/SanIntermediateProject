.class public abstract Lccsansan/db/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/db/getDownloadingList$getDownloadingList;
    }
.end annotation


# instance fields
.field protected IncentiveDownloadUtils:Lccsansan/db/getDownloadingList$getDownloadingList;

.field private addDownloadListener:Lccsansan/dt/removeDownloadListener;

.field private getDownloadStatusByUrl:Lccsansan/ck/getDownloadedCount;

.field private getDownloadedList:Lccsansan/ck/getDownloadedList;

.field private getDownloadingList:Lccsansan/db/IncentiveDownloadUtils;

.field private removeDownloadListener:Lccsanandroid/graphics/Point;

.field protected unifiedDownload:Lccsancom/san/ads/AdFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/db/getDownloadingList;)Lccsansan/dt/removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/db/getDownloadingList;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    return-object p0
.end method

.method private removeDownloadListener(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 26
    new-instance p1, Lccsansan/ck/getDownloadedCount;

    iget-object v0, p0, Lccsansan/db/getDownloadingList;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-direct {p1, v0}, Lccsansan/ck/getDownloadedCount;-><init>(Lccsansan/dt/removeDownloadListener;)V

    iput-object p1, p0, Lccsansan/db/getDownloadingList;->getDownloadStatusByUrl:Lccsansan/ck/getDownloadedCount;

    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Lccsansan/ck/getDownloadedList;

    iget-object v0, p0, Lccsansan/db/getDownloadingList;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    new-instance v1, Lccsansan/db/getDownloadingList$unifiedDownload;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lccsansan/db/getDownloadingList$unifiedDownload;-><init>(Lccsansan/db/getDownloadingList;Lccsanandroid/os/Looper;)V

    invoke-direct {p1, v0, v1}, Lccsansan/ck/getDownloadedList;-><init>(Lccsansan/dt/removeDownloadListener;Lccsanandroid/os/Handler;)V

    iput-object p1, p0, Lccsansan/db/getDownloadingList;->getDownloadedList:Lccsansan/ck/getDownloadedList;

    :goto_0
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lccsansan/db/getDownloadingList;->getDownloadedList:Lccsansan/ck/getDownloadedList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lccsansan/ck/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/graphics/Rect;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "ActionTrigger is NUll!!!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v0, "Mads.BaseFullScreen"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/db/getDownloadingList;->getDownloadStatusByUrl:Lccsansan/ck/getDownloadedCount;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lccsansan/ck/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "WebActionTrigger is NUll!!!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p2, "Mads.BaseFullScreen"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public abstract IncentiveDownloadUtils(Ljava/lang/String;)V
.end method

.method public IncentiveDownloadUtils()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
.end method

.method public addDownloadListener()Lccsansan/dt/removeDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/db/getDownloadingList;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    return-object v0
.end method

.method protected addDownloadListener(Lccsanandroid/content/Context;II)V
    .locals 4

    .line 14
    const-string v0, "window"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/WindowManager;

    .line 15
    invoke-interface {p1}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Display;->getWidth()I

    move-result v0

    .line 16
    invoke-interface {p1}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/Display;->getHeight()I

    move-result p1

    int-to-float v1, v0

    int-to-float p3, p3

    div-float/2addr v1, p3

    int-to-float v2, p1

    int-to-float p2, p2

    div-float/2addr v2, p2

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    .line 22
    new-instance p3, Lccsanandroid/graphics/Point;

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p3, v0, p1}, Lccsanandroid/graphics/Point;-><init>(II)V

    iput-object p3, p0, Lccsansan/db/getDownloadingList;->removeDownloadListener:Lccsanandroid/graphics/Point;

    goto :goto_0

    .line 24
    :cond_0
    new-instance p2, Lccsanandroid/graphics/Point;

    mul-float p3, p3, v2

    float-to-int p3, p3

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-direct {p2, p3, p1}, Lccsanandroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lccsansan/db/getDownloadingList;->removeDownloadListener:Lccsanandroid/graphics/Point;

    :goto_0
    return-void
.end method

.method public abstract addDownloadListener(Ljava/lang/String;)V
.end method

.method public addDownloadListener(Lccsansan/db/getDownloadingList$getDownloadingList;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lccsansan/db/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingList$getDownloadingList;

    return-void
.end method

.method protected getDownloadedRecordByUrl()Lccsanandroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/db/getDownloadingList;->removeDownloadListener:Lccsanandroid/graphics/Point;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    const-string v0, "Mads.BaseFullScreen"

    const-string v1, "Point adSize not initialization"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lccsanandroid/graphics/Point;

    invoke-direct {v0}, Lccsanandroid/graphics/Point;-><init>()V

    return-object v0
.end method

.method public getDownloadingList(Lccsanandroid/content/Context;)I
    .locals 1

    .line 25
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method protected abstract getDownloadingList(I)Lccsanandroid/graphics/Point;
.end method

.method public getDownloadingList()Lccsansan/db/IncentiveDownloadUtils;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/db/getDownloadingList;->getDownloadingList:Lccsansan/db/IncentiveDownloadUtils;

    return-object v0
.end method

.method protected getDownloadingList(Lccsanandroid/content/Context;I)V
    .locals 2

    .line 7
    invoke-virtual {p0, p2}, Lccsansan/db/getDownloadingList;->getDownloadingList(I)Lccsanandroid/graphics/Point;

    move-result-object p2

    .line 8
    iget v0, p2, Lccsanandroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget p2, p2, Lccsanandroid/graphics/Point;->x:I

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 10
    const-string p2, "window"

    invoke-virtual {p1, p2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/WindowManager;

    .line 11
    invoke-interface {p1}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/Display;->getWidth()I

    move-result p1

    .line 13
    new-instance p2, Lccsanandroid/graphics/Point;

    int-to-float v1, p1

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-direct {p2, p1, v0}, Lccsanandroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lccsansan/db/getDownloadingList;->removeDownloadListener:Lccsanandroid/graphics/Point;

    return-void
.end method

.method public getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lccsansan/db/getDownloadingList;->getDownloadedList:Lccsansan/ck/getDownloadedList;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lccsansan/ck/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "ActionTrigger is NUll!!!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p2, "Mads.BaseFullScreen"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 33
    iget-object v0, p0, Lccsansan/db/getDownloadingList;->getDownloadedList:Lccsansan/ck/getDownloadedList;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lccsansan/ck/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public abstract removeDownloadListener()V
.end method

.method public removeDownloadListener(Lccsancom/san/ads/AdFormat;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/db/getDownloadingList;->unifiedDownload:Lccsancom/san/ads/AdFormat;

    return-void
.end method

.method public abstract unifiedDownload()V
.end method

.method public unifiedDownload(Lccsansan/dt/removeDownloadListener;Lccsansan/db/IncentiveDownloadUtils;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lccsansan/db/getDownloadingList;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    .line 4
    iput-object p2, p0, Lccsansan/db/getDownloadingList;->getDownloadingList:Lccsansan/db/IncentiveDownloadUtils;

    .line 5
    invoke-static {p1}, Lccsansan/dt/getDownloadedList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z

    move-result p1

    invoke-direct {p0, p1}, Lccsansan/db/getDownloadingList;->removeDownloadListener(Z)V

    return-void
.end method
