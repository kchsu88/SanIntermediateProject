.class public Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;
    }
.end annotation


# static fields
.field private static getDownloadingList:Ljava/lang/String;


# instance fields
.field private IncentiveDownloadUtils:Z

.field private addDownloadListener:Lccsanandroid/view/View;

.field private getDownloadStatusByUrl:Lccsanandroid/view/View;

.field private removeDownloadListener:Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;

.field private unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "get"

    .line 4
    const/4 v3, 0x1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 6
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "qemu.hw.mainkeys"

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    sput-object v0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Lccsanandroid/app/Activity;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 6
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_5

    const/4 v3, 0x2

    .line 8
    new-array v3, v3, [I

    const-string v4, "windowTranslucentStatus"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;Z)I

    move-result v4

    const/4 v6, 0x0

    aput v4, v3, v6

    .line 9
    const-string v4, "windowTranslucentNavigation"

    invoke-static {v4, v5}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;Z)I

    move-result v4

    aput v4, v3, v5

    .line 10
    invoke-virtual {p1, v3}, Lccsanandroid/app/Activity;->obtainStyledAttributes([I)Lccsanandroid/content/res/TypedArray;

    move-result-object v3

    .line 12
    :try_start_0
    invoke-virtual {v3, v6, v6}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->unifiedDownload:Z

    .line 13
    invoke-virtual {v3, v5, v6}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v3}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-virtual {v0}, Lccsanandroid/view/Window;->getAttributes()Lccsanandroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 21
    iget v3, v3, Lccsanandroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    and-int v7, v3, v4

    if-eqz v7, :cond_0

    .line 22
    iput-boolean v5, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->unifiedDownload:Z

    :cond_0
    const/high16 v7, 0x8000000

    and-int/2addr v3, v7

    if-eqz v3, :cond_1

    .line 26
    iput-boolean v5, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Z

    .line 29
    :cond_1
    iget-boolean v3, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->unifiedDownload:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 30
    invoke-virtual {v0, v4}, Lccsanandroid/view/Window;->clearFlags(I)V

    .line 31
    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v2

    const/16 v3, 0x500

    invoke-virtual {v2, v3}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v2, -0x80000000

    .line 32
    invoke-virtual {v0, v2}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 33
    invoke-virtual {v0, v6}, Lccsanandroid/view/Window;->setStatusBarColor(I)V

    .line 36
    :cond_2
    new-instance v0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;

    iget-boolean v2, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->unifiedDownload:Z

    iget-boolean v3, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Z

    const/4 v4, 0x0

    invoke-direct {v0, p1, v2, v3, v4}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;-><init>(Lccsanandroid/app/Activity;ZZLccsancom/san/hybrid/ui/getDownloadedRecordByUrl$unifiedDownload;)V

    iput-object v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;

    .line 38
    invoke-virtual {v0}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener()Z

    move-result v0

    if-nez v0, :cond_3

    .line 39
    iput-boolean v6, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Z

    .line 42
    :cond_3
    iget-boolean v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->unifiedDownload:Z

    if-eqz v0, :cond_4

    .line 43
    invoke-direct {p0, p1, v1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;)V

    .line 45
    :cond_4
    iget-boolean v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Z

    if-eqz v0, :cond_5

    .line 46
    invoke-direct {p0, p1, v1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 47
    invoke-virtual {v3}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 48
    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method private addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;)V
    .locals 2

    .line 6
    new-instance v0, Lccsanandroid/view/View;

    invoke-direct {v0, p1}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadStatusByUrl:Lccsanandroid/view/View;

    .line 8
    iget-object p1, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;

    invoke-virtual {p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 9
    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;

    invoke-virtual {v1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->IncentiveDownloadUtils()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    .line 10
    iput v0, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;

    invoke-virtual {v1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener()I

    move-result v1

    invoke-direct {p1, v1, v0}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x5

    .line 13
    iput v0, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 15
    :goto_0
    iget-object v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadStatusByUrl:Lccsanandroid/view/View;

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p1, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadStatusByUrl:Lccsanandroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    .line 17
    iget-object p1, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadStatusByUrl:Lccsanandroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadStatusByUrl:Lccsanandroid/view/View;

    invoke-virtual {p2, p1}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    return-void
.end method

.method static synthetic getDownloadingList()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    return-object v0
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;)V
    .locals 2

    .line 3
    new-instance v0, Lccsanandroid/view/View;

    invoke-direct {v0, p1}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/view/View;

    .line 4
    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;

    invoke-virtual {v0}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->getDownloadingList()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    const/16 v0, 0x30

    iput v0, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    iget-boolean v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;

    invoke-virtual {v0}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->removeDownloadListener:Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;

    invoke-virtual {v0}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl$getDownloadingList;->addDownloadListener()I

    move-result v0

    iput v0, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 9
    :cond_0
    iget-object v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/view/View;

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    .line 11
    iget-object p1, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/view/View;

    invoke-virtual {p2, p1}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->unifiedDownload:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/view/View;

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public getDownloadingList(Z)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->unifiedDownload:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->addDownloadListener:Lccsanandroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public removeDownloadListener(I)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->getDownloadStatusByUrl:Lccsanandroid/view/View;

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public unifiedDownload(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->IncentiveDownloadUtils(I)V

    .line 2
    invoke-virtual {p0, p1}, Lccsancom/san/hybrid/ui/getDownloadedRecordByUrl;->removeDownloadListener(I)V

    return-void
.end method
