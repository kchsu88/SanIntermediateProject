.class public Lccsancom/san/mads/mraid/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;,
        Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;,
        Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedRecordByUrl;,
        Lccsancom/san/mads/mraid/removeDownloadListener$pause;,
        Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;
    }
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:I

.field public static final addDownloadListener:[B


# instance fields
.field private ActionTypeDetailPage:Z

.field private final ActionTypeDownload:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

.field private final ActionTypeReserveApp:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

.field private IncentiveSDK:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

.field private IncentiveSDK$1:I

.field private final deleteDownItem:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

.field private deleteDownList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private execute:Ljava/lang/Integer;

.field private final getDownloadStatusByUrl:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;

.field private getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

.field private final getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

.field private final getDownloadedRecordByUrl:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

.field private getDownloadingCount:Lccsanandroid/view/ViewGroup;

.field private final getDownloadingList:Lccsanandroid/widget/FrameLayout;

.field private final getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

.field private getPackageNameByRecord:Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

.field private getThumbPathByRecord:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;

.field private final pause:I

.field private final removeDownloadListener:Lccsanandroid/content/Context;

.field private resolveUrl:Z

.field private final resume:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

.field private shouldTryHandlingAction:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

.field private trackReportClick:Lccsancom/san/mads/mraid/removeDownloadListener$pause;

.field private trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

.field private final unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedCount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/mads/mraid/removeDownloadListener;->addDownloadListener:[B

    const/16 v0, 0x53

    sput v0, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils:I

    return-void

    :array_0
    .array-data 1
        0x72t
        0x5ft
        0x37t
        -0x3ct
        0x6t
        0x17t
        -0x1ct
        0x19t
        0xat
        0x10t
        -0x2t
        0xet
        0x6t
        -0x10t
        0x1ct
        0x15t
        -0x5t
        0xet
        0x6t
        0x15t
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/mads/mraid/getDownloadedCount;)V
    .locals 6

    .line 1
    new-instance v3, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-direct {v3, p2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/mraid/getDownloadedCount;)V

    new-instance v4, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    sget-object v0, Lccsancom/san/mads/mraid/getDownloadedCount;->INTERSTITIAL:Lccsancom/san/mads/mraid/getDownloadedCount;

    invoke-direct {v4, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/mraid/getDownloadedCount;)V

    new-instance v5, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;

    invoke-direct {v5}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/san/mads/mraid/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsancom/san/mads/mraid/getDownloadedCount;Lccsancom/san/mads/mraid/IncentiveDownloadUtils;Lccsancom/san/mads/mraid/IncentiveDownloadUtils;Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;)V

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/mads/mraid/getDownloadedCount;Lccsancom/san/mads/mraid/IncentiveDownloadUtils;Lccsancom/san/mads/mraid/IncentiveDownloadUtils;Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lccsancom/san/mads/mraid/deleteDownList;->LOADING:Lccsancom/san/mads/mraid/deleteDownList;

    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

    .line 16
    new-instance v1, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;

    invoke-direct {v1, p0}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;-><init>(Lccsancom/san/mads/mraid/removeDownloadListener;)V

    iput-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getThumbPathByRecord:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->ActionTypeDetailPage:Z

    .line 27
    sget-object v2, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->NONE:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    iput-object v2, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->shouldTryHandlingAction:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    .line 28
    iput-boolean v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->resolveUrl:Z

    .line 29
    new-instance v1, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;

    invoke-direct {v1, p0}, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;-><init>(Lccsancom/san/mads/mraid/removeDownloadListener;)V

    iput-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->ActionTypeReserveApp:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    .line 116
    new-instance v2, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingList;

    invoke-direct {v2, p0}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingList;-><init>(Lccsancom/san/mads/mraid/removeDownloadListener;)V

    iput-object v2, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->ActionTypeDownload:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    .line 212
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    .line 213
    invoke-static {v3}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 214
    instance-of v4, p1, Lccsanandroid/app/Activity;

    if-eqz v4, :cond_0

    .line 215
    new-instance v4, Ljava/lang/ref/WeakReference;

    check-cast p1, Lccsanandroid/app/Activity;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownList:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 219
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    invoke-direct {p1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownList:Ljava/lang/ref/WeakReference;

    .line 222
    :goto_0
    iput-object p2, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedCount;

    .line 223
    iput-object p3, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    .line 224
    iput-object p4, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    .line 225
    iput-object p5, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;

    .line 227
    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

    .line 229
    invoke-virtual {v3}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p1

    .line 230
    new-instance p2, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    iget p1, p1, Lccsanandroid/util/DisplayMetrics;->density:F

    invoke-direct {p2, v3, p1}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;-><init>(Lccsanandroid/content/Context;F)V

    iput-object p2, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    .line 231
    new-instance p1, Lccsanandroid/widget/FrameLayout;

    invoke-direct {p1, v3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    .line 232
    new-instance p1, Lccsansan/cx/unifiedDownload;

    invoke-direct {p1, v3}, Lccsansan/cx/unifiedDownload;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    .line 233
    new-instance p2, Lccsancom/san/mads/mraid/removeDownloadListener$addDownloadListener;

    invoke-direct {p2, p0}, Lccsancom/san/mads/mraid/removeDownloadListener$addDownloadListener;-><init>(Lccsancom/san/mads/mraid/removeDownloadListener;)V

    invoke-virtual {p1, p2}, Lccsansan/cx/unifiedDownload;->setOnCloseListener(Lccsansan/cx/unifiedDownload$removeDownloadListener;)V

    .line 240
    new-instance p2, Lccsanandroid/view/View;

    invoke-direct {p2, v3}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    .line 241
    new-instance p5, Lccsancom/san/mads/mraid/removeDownloadListener$removeDownloadListener;

    invoke-direct {p5, p0}, Lccsancom/san/mads/mraid/removeDownloadListener$removeDownloadListener;-><init>(Lccsancom/san/mads/mraid/removeDownloadListener;)V

    invoke-virtual {p2, p5}, Lccsanandroid/view/View;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 246
    new-instance p5, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p5, v0, v0}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p5}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getThumbPathByRecord:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;

    invoke-virtual {p1, v3}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;)V

    .line 251
    invoke-virtual {p3, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;)V

    .line 252
    invoke-virtual {p4, v2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;)V

    .line 253
    new-instance p1, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    invoke-direct {p1}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;-><init>()V

    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->resume:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    const/16 p1, 0x307

    .line 261
    sget p2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p2, p3, :cond_1

    const/16 p1, 0x1307

    .line 265
    :cond_1
    iput p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->pause:I

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    return-object p0
.end method

.method static synthetic addDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    return-object p0
.end method

.method private static addDownloadListener(IBI)Ljava/lang/String;
    .locals 7

    mul-int/lit8 p2, p2, 0x3

    add-int/lit8 p2, p2, 0x67

    sget-object v0, Lccsancom/san/mads/mraid/removeDownloadListener;->addDownloadListener:[B

    mul-int/lit8 p0, p0, 0x2

    rsub-int/lit8 p0, p0, 0x4

    mul-int/lit8 p1, p1, 0x4

    rsub-int/lit8 p1, p1, 0x11

    new-array v1, p1, [B

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, p2

    const/4 v4, 0x0

    move p2, p1

    move p1, p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    int-to-byte v5, p2

    aput-byte v5, v1, v3

    if-ne v4, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v3, v0, p0

    move v6, p1

    move p1, p0

    move p0, p2

    move p2, v6

    :goto_1
    add-int/2addr p0, v3

    add-int/lit8 p0, p0, -0x8

    add-int/lit8 p1, p1, 0x1

    move v3, v4

    move v6, p2

    move p2, p0

    move p0, p1

    move p1, v6

    goto :goto_0
.end method

.method static synthetic deleteDownItem(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadStatusByUrl;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    return-object p0
.end method

.method private deleteDownList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    invoke-virtual {v0}, Lccsansan/cx/unifiedDownload;->addDownloadListener()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic getDownloadStatusByUrl(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/deleteDownList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

    return-object p0
.end method

.method private getDownloadedCount()V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveSDK:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    return-void
.end method

.method static synthetic getDownloadedList(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/view/ViewGroup;
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->pause()Lccsanandroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method private getDownloadedRecordByUrl()I
    .locals 2

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    .line 3
    const-string v1, "window"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/WindowManager;

    .line 4
    invoke-interface {v0}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadedCount;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedCount;

    return-object p0
.end method

.method private getDownloadingCount()V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    return-void
.end method

.method static synthetic getDownloadingList(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    return-object p0
.end method

.method private getDownloadingList(Lccsancom/san/mads/mraid/deleteDownList;)V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAID state set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ads.MraidController"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

    .line 43
    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

    .line 44
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {v1, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/deleteDownList;)V

    .line 47
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->deleteDownItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {v1, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/deleteDownList;)V

    .line 51
    :cond_0
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getPackageNameByRecord:Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    if-eqz v1, :cond_1

    .line 52
    invoke-static {v1, v0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;Lccsancom/san/mads/mraid/deleteDownList;Lccsancom/san/mads/mraid/deleteDownList;)V

    :cond_1
    const/4 p1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getDownloadingList(Ljava/lang/Runnable;)V
    .locals 5

    .line 30
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;->IncentiveDownloadUtils()V

    .line 33
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;

    const/4 v2, 0x2

    new-array v2, v2, [Lccsanandroid/view/View;

    iget-object v3, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;->removeDownloadListener([Lccsanandroid/view/View;)Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;

    move-result-object v1

    new-instance v2, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;

    invoke-direct {v2, p0, v0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadStatusByUrl;-><init>(Lccsancom/san/mads/mraid/removeDownloadListener;Lccsanandroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic getDownloadingRecordByUrl(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->resume:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    return-object p0
.end method

.method private pause()Lccsanandroid/view/ViewGroup;
    .locals 2

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingCount:Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lccsansan/cx/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Lccsanandroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    :goto_0
    return-object v0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getPackageNameByRecord:Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    return-object p0
.end method

.method static synthetic resume(Lccsancom/san/mads/mraid/removeDownloadListener;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl()I

    move-result p0

    return p0
.end method

.method private resume()Lccsanandroid/view/ViewGroup;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingCount:Lccsanandroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->pause()Lccsanandroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingCount:Lccsanandroid/view/ViewGroup;

    .line 6
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingCount:Lccsanandroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic unifiedDownload(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    return-object p0
.end method

.method static unifiedDownload(Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;Lccsancom/san/mads/mraid/deleteDownList;Lccsancom/san/mads/mraid/deleteDownList;)V
    .locals 1

    .line 2
    invoke-static {p0}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 4
    invoke-static {p2}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lccsancom/san/mads/mraid/deleteDownList;->EXPANDED:Lccsancom/san/mads/mraid/deleteDownList;

    if-ne p2, v0, :cond_0

    .line 7
    invoke-interface {p0}, Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;->addDownloadListener()V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 8
    sget-object v0, Lccsancom/san/mads/mraid/deleteDownList;->DEFAULT:Lccsancom/san/mads/mraid/deleteDownList;

    if-ne p2, v0, :cond_1

    .line 9
    invoke-interface {p0}, Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;->getDownloadingList()V

    goto :goto_0

    .line 10
    :cond_1
    sget-object v0, Lccsancom/san/mads/mraid/deleteDownList;->HIDDEN:Lccsancom/san/mads/mraid/deleteDownList;

    if-ne p2, v0, :cond_2

    .line 11
    invoke-interface {p0}, Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;->getDownloadingList()V

    goto :goto_0

    .line 12
    :cond_2
    sget-object v0, Lccsancom/san/mads/mraid/deleteDownList;->RESIZED:Lccsancom/san/mads/mraid/deleteDownList;

    if-ne p1, v0, :cond_3

    sget-object p1, Lccsancom/san/mads/mraid/deleteDownList;->DEFAULT:Lccsancom/san/mads/mraid/deleteDownList;

    if-ne p2, p1, :cond_3

    const/4 p1, 0x1

    .line 13
    invoke-interface {p0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;->unifiedDownload(Z)V

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    const/4 p1, 0x0

    .line 15
    invoke-interface {p0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;->unifiedDownload(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static unifiedDownload(Ljava/lang/String;Lccsanandroid/content/Context;)V
    .locals 3

    const-string v0, "http"

    if-nez p0, :cond_0

    return-void

    .line 312
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lccsansan/ab/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const-string v2, "market://details?"

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 317
    invoke-static {p0, v0}, Lccsanandroid/content/Intent;->parseUri(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    move-result-object p0

    const-string v0, "com.android.vending"

    .line 318
    invoke-virtual {p0, v0}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    goto :goto_1

    :cond_2
    nop

    .line 320
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    new-instance v0, Lccsanandroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android.intent.action.VIEW"

    :try_start_1
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    move-object p0, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 324
    invoke-static {p0, v0}, Lccsanandroid/content/Intent;->parseUri(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.category.BROWSABLE"

    .line 327
    invoke-virtual {p0, v0}, Lccsanandroid/content/Intent;->addCategory(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Lccsanandroid/content/Intent;->setSelector(Lccsanandroid/content/Intent;)V

    :goto_1
    const/high16 v0, 0x10000000

    .line 334
    invoke-virtual {p0, v0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 335
    invoke-virtual {p1, p0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 337
    const-string p1, "Ads.MraidController"

    const-string v0, "handle click exception"

    invoke-static {p1, v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils(III)I
    .locals 0

    .line 56
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public IncentiveDownloadUtils()Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveSDK:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    :goto_0
    return-object v0
.end method

.method IncentiveDownloadUtils(I)V
    .locals 0

    .line 40
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Ljava/lang/Runnable;)V

    return-void
.end method

.method public IncentiveDownloadUtils(Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getPackageNameByRecord:Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedRecordByUrl;)V
    .locals 3

    .line 17
    const-string v0, "htmlData cannot be null"

    invoke-static {p1, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-eqz p2, :cond_0

    .line 22
    invoke-interface {p2, v0}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedRecordByUrl;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;)V

    .line 24
    :cond_0
    iget-object p2, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {p2, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;)V

    .line 25
    iget-object p2, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object p2, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {p2, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)V

    return-void
.end method

.method IncentiveDownloadUtils(Ljava/net/URI;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-eqz v0, :cond_7

    .line 166
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedCount;

    sget-object v1, Lccsancom/san/mads/mraid/getDownloadedCount;->INTERSTITIAL:Lccsancom/san/mads/mraid/getDownloadedCount;

    if-ne v0, v1, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

    sget-object v1, Lccsancom/san/mads/mraid/deleteDownList;->DEFAULT:Lccsancom/san/mads/mraid/deleteDownList;

    if-eq v0, v1, :cond_1

    sget-object v2, Lccsancom/san/mads/mraid/deleteDownList;->RESIZED:Lccsancom/san/mads/mraid/deleteDownList;

    if-eq v0, v2, :cond_1

    return-void

    .line 174
    :cond_1
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList()V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 181
    new-instance v2, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    iget-object v3, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {v2, v3}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;-><init>(Lccsanandroid/content/Context;)V

    iput-object v2, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveSDK:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    .line 182
    iget-object v3, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {v3, v2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;)V

    .line 185
    iget-object v2, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    .line 189
    :cond_3
    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 191
    iget-object v3, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

    const/4 v4, 0x4

    if-ne v3, v1, :cond_5

    .line 193
    invoke-direct {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->resume()Lccsanandroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v1

    iput v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveSDK$1:I

    .line 194
    invoke-direct {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->resume()Lccsanandroid/view/ViewGroup;

    move-result-object v1

    iget v3, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->pause:I

    invoke-virtual {v1, v3}, Lccsanandroid/view/ViewGroup;->setSystemUiVisibility(I)V

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveSDK:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {v0, v1, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 199
    :cond_4
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->removeView(Lccsanandroid/view/View;)V

    .line 200
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {v0, v1, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :goto_1
    invoke-direct {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->resume()Lccsanandroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    new-instance v3, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 205
    :cond_5
    sget-object v1, Lccsancom/san/mads/mraid/deleteDownList;->RESIZED:Lccsancom/san/mads/mraid/deleteDownList;

    if-ne v3, v1, :cond_6

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->removeView(Lccsanandroid/view/View;)V

    .line 210
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {v0, v1, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveSDK:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {v0, v1, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 216
    :cond_6
    :goto_2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {p0, p2}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Z)V

    .line 221
    sget-object p1, Lccsancom/san/mads/mraid/deleteDownList;->EXPANDED:Lccsancom/san/mads/mraid/deleteDownList;

    invoke-direct {p0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/mraid/deleteDownList;)V

    return-void

    .line 222
    :cond_7
    new-instance p1, Lccsancom/san/mads/mraid/addDownloadListener;

    const-string p2, "Unable to expand after the WebView is destroyed"

    invoke-direct {p1, p2}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method IncentiveDownloadUtils(Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;)Z
    .locals 7

    .line 251
    sget-object v0, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->NONE:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 255
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 263
    :cond_1
    :try_start_0
    const-class v3, Lccsanandroid/app/Activity;

    int-to-byte v4, v2

    int-to-byte v5, v4

    int-to-byte v6, v5

    invoke-static {v4, v5, v6}, Lccsancom/san/mads/mraid/removeDownloadListener;->addDownloadListener(IBI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Lccsanandroid/content/ComponentName;

    .line 264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lccsanandroid/content/ComponentName;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 265
    invoke-virtual {v3, v4, v2}, Lccsanandroid/content/pm/PackageManager;->getActivityInfo(Lccsanandroid/content/ComponentName;I)Lccsanandroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_1
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    iget v3, v0, Lccsanandroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 274
    invoke-virtual {p1}, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->getActivityInfoOrientation()I

    move-result p1

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 279
    :cond_3
    iget p1, v0, Lccsanandroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x80

    .line 280
    invoke-static {p1, v3}, Lccsansan/bw/toString;->unifiedDownload(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 283
    iget p1, v0, Lccsanandroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v0, 0x400

    .line 284
    invoke-static {p1, v0}, Lccsansan/bw/toString;->unifiedDownload(II)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 263
    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    throw v0

    :cond_5
    throw p1
    :try_end_2
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    :catch_0
    move-exception p1

    return v2
.end method

.method IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z
    .locals 0

    .line 29
    invoke-virtual {p2}, Lccsanandroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method addDownloadListener(IIIILccsansan/cx/unifiedDownload$unifiedDownload;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 57
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    iget-object v6, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-eqz v6, :cond_a

    .line 63
    iget-object v6, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

    sget-object v7, Lccsancom/san/mads/mraid/deleteDownList;->LOADING:Lccsancom/san/mads/mraid/deleteDownList;

    if-eq v6, v7, :cond_9

    sget-object v7, Lccsancom/san/mads/mraid/deleteDownList;->HIDDEN:Lccsancom/san/mads/mraid/deleteDownList;

    if-ne v6, v7, :cond_0

    goto/16 :goto_2

    .line 66
    :cond_0
    sget-object v7, Lccsancom/san/mads/mraid/deleteDownList;->EXPANDED:Lccsancom/san/mads/mraid/deleteDownList;

    if-eq v6, v7, :cond_8

    .line 70
    iget-object v6, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedCount;

    sget-object v7, Lccsancom/san/mads/mraid/getDownloadedCount;->INTERSTITIAL:Lccsancom/san/mads/mraid/getDownloadedCount;

    if-eq v6, v7, :cond_7

    int-to-float v6, v1

    .line 75
    iget-object v7, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v6, v7}, Lccsansan/cx/removeDownloadListener;->unifiedDownload(FLccsanandroid/content/Context;)I

    move-result v6

    int-to-float v7, v2

    .line 76
    iget-object v8, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v7, v8}, Lccsansan/cx/removeDownloadListener;->unifiedDownload(FLccsanandroid/content/Context;)I

    move-result v7

    int-to-float v8, v3

    .line 77
    iget-object v9, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v8, v9}, Lccsansan/cx/removeDownloadListener;->unifiedDownload(FLccsanandroid/content/Context;)I

    move-result v8

    int-to-float v9, v4

    .line 78
    iget-object v10, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v9, v10}, Lccsansan/cx/removeDownloadListener;->unifiedDownload(FLccsanandroid/content/Context;)I

    move-result v9

    .line 79
    iget-object v10, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    invoke-virtual {v10}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingList()Lccsanandroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Lccsanandroid/graphics/Rect;->left:I

    add-int/2addr v10, v8

    .line 80
    iget-object v8, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    invoke-virtual {v8}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->getDownloadingList()Lccsanandroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Lccsanandroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    .line 81
    new-instance v9, Lccsanandroid/graphics/Rect;

    add-int/2addr v6, v10

    add-int v11, v8, v7

    invoke-direct {v9, v10, v8, v6, v11}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    const-string v6, ")"

    const-string v8, ") and offset ("

    const-string v10, "resizeProperties specified a size ("

    const-string v11, ", "

    if-nez p6, :cond_2

    .line 85
    iget-object v12, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    invoke-virtual {v12}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->unifiedDownload()Lccsanandroid/graphics/Rect;

    move-result-object v12

    .line 86
    invoke-virtual {v9}, Lccsanandroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v12}, Lccsanandroid/graphics/Rect;->width()I

    move-result v14

    if-gt v13, v14, :cond_1

    invoke-virtual {v9}, Lccsanandroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v12}, Lccsanandroid/graphics/Rect;->height()I

    move-result v14

    if-gt v13, v14, :cond_1

    .line 96
    iget v13, v12, Lccsanandroid/graphics/Rect;->left:I

    iget v14, v9, Lccsanandroid/graphics/Rect;->left:I

    iget v15, v12, Lccsanandroid/graphics/Rect;->right:I

    invoke-virtual {v9}, Lccsanandroid/graphics/Rect;->width()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v0, v13, v14, v15}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(III)I

    move-result v13

    .line 97
    iget v14, v12, Lccsanandroid/graphics/Rect;->top:I

    iget v15, v9, Lccsanandroid/graphics/Rect;->top:I

    iget v12, v12, Lccsanandroid/graphics/Rect;->bottom:I

    invoke-virtual {v9}, Lccsanandroid/graphics/Rect;->height()I

    move-result v16

    sub-int v12, v12, v16

    invoke-virtual {v0, v14, v15, v12}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(III)I

    move-result v12

    .line 98
    invoke-virtual {v9, v13, v12}, Lccsanandroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 99
    :cond_1
    new-instance v5, Lccsancom/san/mads/mraid/addDownloadListener;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") that doesn\'t allow the ad to appear within the max allowed size ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    .line 103
    invoke-virtual {v1}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    .line 104
    invoke-virtual {v1}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw v5

    .line 114
    :cond_2
    :goto_0
    new-instance v12, Lccsanandroid/graphics/Rect;

    invoke-direct {v12}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 115
    iget-object v13, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    invoke-virtual {v13, v5, v9, v12}, Lccsansan/cx/unifiedDownload;->getDownloadingList(Lccsansan/cx/unifiedDownload$unifiedDownload;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 116
    iget-object v13, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    invoke-virtual {v13}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->unifiedDownload()Lccsanandroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13, v12}, Lccsanandroid/graphics/Rect;->contains(Lccsanandroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 125
    invoke-virtual {v9, v12}, Lccsanandroid/graphics/Rect;->contains(Lccsanandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 133
    iget-object v1, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsansan/cx/unifiedDownload;->setCloseVisible(Z)V

    .line 134
    iget-object v1, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    invoke-virtual {v1, v5}, Lccsansan/cx/unifiedDownload;->setClosePosition(Lccsansan/cx/unifiedDownload$unifiedDownload;)V

    .line 137
    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9}, Lccsanandroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v9}, Lccsanandroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    iget v2, v9, Lccsanandroid/graphics/Rect;->left:I

    iget-object v3, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    invoke-virtual {v3}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->unifiedDownload()Lccsanandroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Lccsanandroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Lccsanandroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 139
    iget v2, v9, Lccsanandroid/graphics/Rect;->top:I

    iget-object v3, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    invoke-virtual {v3}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->unifiedDownload()Lccsanandroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Lccsanandroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Lccsanandroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 140
    iget-object v2, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

    sget-object v3, Lccsancom/san/mads/mraid/deleteDownList;->DEFAULT:Lccsancom/san/mads/mraid/deleteDownList;

    if-ne v2, v3, :cond_3

    .line 141
    iget-object v2, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    iget-object v3, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {v2, v3}, Lccsanandroid/widget/FrameLayout;->removeView(Lccsanandroid/view/View;)V

    .line 142
    iget-object v2, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 143
    iget-object v2, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    iget-object v3, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    new-instance v4, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-direct/range {p0 .. p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->resume()Lccsanandroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    invoke-virtual {v2, v3, v1}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 146
    :cond_3
    sget-object v3, Lccsancom/san/mads/mraid/deleteDownList;->RESIZED:Lccsancom/san/mads/mraid/deleteDownList;

    if-ne v2, v3, :cond_4

    .line 147
    iget-object v2, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 149
    :cond_4
    :goto_1
    iget-object v1, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    invoke-virtual {v1, v5}, Lccsansan/cx/unifiedDownload;->setClosePosition(Lccsansan/cx/unifiedDownload$unifiedDownload;)V

    .line 151
    sget-object v1, Lccsancom/san/mads/mraid/deleteDownList;->RESIZED:Lccsancom/san/mads/mraid/deleteDownList;

    invoke-direct {v0, v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/mraid/deleteDownList;)V

    return-void

    .line 152
    :cond_5
    new-instance v2, Lccsancom/san/mads/mraid/addDownloadListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") that don\'t allow the close region to appear within the resized ad."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_6
    new-instance v5, Lccsancom/san/mads/mraid/addDownloadListener;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") that doesn\'t allow the close region to appear within the max allowed size ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    .line 157
    invoke-virtual {v1}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    .line 158
    invoke-virtual {v1}, Lccsancom/san/mads/mraid/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw v5

    .line 159
    :cond_7
    new-instance v1, Lccsancom/san/mads/mraid/addDownloadListener;

    const-string v2, "Not allowed to resize from an interstitial ad"

    invoke-direct {v1, v2}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_8
    new-instance v1, Lccsancom/san/mads/mraid/addDownloadListener;

    const-string v2, "Not allowed to resize from an already expanded ad"

    invoke-direct {v1, v2}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_2
    return-void

    .line 161
    :cond_a
    new-instance v1, Lccsancom/san/mads/mraid/addDownloadListener;

    const-string v2, "Unable to resize after the WebView is destroyed"

    invoke-direct {v1, v2}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method addDownloadListener(Lccsancom/san/mads/mraid/getDownloadingList;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getPackageNameByRecord:Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;->getDownloadingList(Lccsancom/san/mads/mraid/getDownloadingList;)V

    :cond_0
    return-void
.end method

.method addDownloadListener()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedCount;

    sget-object v2, Lccsancom/san/mads/mraid/getDownloadedCount;->INLINE:Lccsancom/san/mads/mraid/getDownloadedCount;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    .line 9
    :cond_1
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->resume:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    invoke-virtual {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/app/Activity;Lccsanandroid/view/View;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteDownItem()Lccsanandroid/widget/FrameLayout;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    return-object v0
.end method

.method getDownloadStatusByUrl()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->resume()Lccsanandroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveSDK$1:I

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->execute:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Lccsanandroid/app/Activity;I)V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->execute:Ljava/lang/Integer;

    return-void
.end method

.method getDownloadedList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->shouldTryHandlingAction:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    sget-object v1, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->NONE:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    if-ne v0, v1, :cond_2

    .line 226
    iget-boolean v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->ActionTypeDetailPage:Z

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadStatusByUrl()V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_1

    .line 239
    invoke-static {v0}, Lccsansan/bw/toString;->unifiedDownload(Lccsanandroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(I)V

    goto :goto_0

    .line 240
    :cond_1
    new-instance v0, Lccsancom/san/mads/mraid/addDownloadListener;

    const-string v1, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v0, v1}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_2
    invoke-virtual {v0}, Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;->getActivityInfoOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(I)V

    :goto_0
    return-void
.end method

.method getDownloadingList()V
    .locals 6

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->resume:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    iget-object v2, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    .line 3
    invoke-virtual {v1, v2}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->resume:Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;

    iget-object v3, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    .line 4
    invoke-virtual {v2, v3}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    .line 5
    invoke-static {v3}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    .line 6
    invoke-static {v4}, Lccsancom/san/mads/mraid/getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v4

    .line 7
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->addDownloadListener()Z

    move-result v5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(ZZZZZ)V

    .line 14
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedCount;

    invoke-virtual {v0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/mads/mraid/getDownloadedCount;)V

    .line 15
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Z)V

    .line 16
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList:Lccsancom/san/mads/mraid/getDownloadStatusByUrl;

    invoke-virtual {v0, v1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/mads/mraid/getDownloadStatusByUrl;)V

    .line 17
    sget-object v0, Lccsancom/san/mads/mraid/deleteDownList;->DEFAULT:Lccsancom/san/mads/mraid/deleteDownList;

    invoke-direct {p0, v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/mraid/deleteDownList;)V

    .line 18
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedRecordByUrl:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener()V

    return-void
.end method

.method getDownloadingList(Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0, p1}, Lccsancom/san/mads/mraid/MraidVideoPlayerActivity;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected getDownloadingList(Z)V
    .locals 2

    .line 285
    invoke-direct {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownList()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lccsansan/cx/unifiedDownload;->setCloseVisible(Z)V

    .line 291
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportClick:Lccsancom/san/mads/mraid/removeDownloadListener$pause;

    if-eqz v0, :cond_1

    .line 292
    invoke-interface {v0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener$pause;->addDownloadListener(Z)V

    :cond_1
    return-void
.end method

.method getDownloadingList(ZLccsancom/san/mads/mraid/getDownloadingRecordByUrl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p2}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iput-boolean p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->ActionTypeDetailPage:Z

    .line 299
    iput-object p2, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->shouldTryHandlingAction:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    .line 301
    iget-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

    sget-object p2, Lccsancom/san/mads/mraid/deleteDownList;->EXPANDED:Lccsancom/san/mads/mraid/deleteDownList;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedCount;

    sget-object p2, Lccsancom/san/mads/mraid/getDownloadedCount;->INTERSTITIAL:Lccsancom/san/mads/mraid/getDownloadedCount;

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->resolveUrl:Z

    if-nez p1, :cond_1

    .line 303
    :cond_0
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedList()V

    :cond_1
    return-void

    .line 304
    :cond_2
    new-instance p1, Lccsancom/san/mads/mraid/addDownloadListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to force orientation to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getDownloadingRecordByUrl()V
    .locals 4

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

    sget-object v1, Lccsancom/san/mads/mraid/deleteDownList;->LOADING:Lccsancom/san/mads/mraid/deleteDownList;

    if-eq v0, v1, :cond_7

    sget-object v1, Lccsancom/san/mads/mraid/deleteDownList;->HIDDEN:Lccsancom/san/mads/mraid/deleteDownList;

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    sget-object v2, Lccsancom/san/mads/mraid/deleteDownList;->EXPANDED:Lccsancom/san/mads/mraid/deleteDownList;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload:Lccsancom/san/mads/mraid/getDownloadedCount;

    sget-object v3, Lccsancom/san/mads/mraid/getDownloadedCount;->INTERSTITIAL:Lccsancom/san/mads/mraid/getDownloadedCount;

    if-ne v0, v3, :cond_3

    .line 13
    :cond_2
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadStatusByUrl()V

    .line 16
    :cond_3
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount:Lccsancom/san/mads/mraid/deleteDownList;

    sget-object v3, Lccsancom/san/mads/mraid/deleteDownList;->RESIZED:Lccsancom/san/mads/mraid/deleteDownList;

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    goto :goto_0

    .line 33
    :cond_4
    sget-object v2, Lccsancom/san/mads/mraid/deleteDownList;->DEFAULT:Lccsancom/san/mads/mraid/deleteDownList;

    if-ne v0, v2, :cond_7

    .line 34
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 35
    invoke-direct {p0, v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/mraid/deleteDownList;)V

    goto :goto_2

    .line 36
    :cond_5
    :goto_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownItem:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveSDK:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-eqz v0, :cond_6

    .line 39
    invoke-direct {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount()V

    .line 40
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/FrameLayout;->removeView(Lccsanandroid/view/View;)V

    goto :goto_1

    .line 43
    :cond_6
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->removeView(Lccsanandroid/view/View;)V

    .line 44
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    new-instance v2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList:Lccsanandroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 48
    :goto_1
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    invoke-static {v0}, Lccsansan/cx/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/view/View;)V

    .line 51
    sget-object v0, Lccsancom/san/mads/mraid/deleteDownList;->DEFAULT:Lccsancom/san/mads/mraid/deleteDownList;

    invoke-direct {p0, v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/mraid/deleteDownList;)V

    :cond_7
    :goto_2
    return-void
.end method

.method removeDownloadListener()V
    .locals 1

    .line 1
    new-instance v0, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsancom/san/mads/mraid/removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/mraid/removeDownloadListener;)V

    invoke-direct {p0, v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeDownloadListener(Z)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->resolveUrl:Z

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->trackReportShow:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0, p1}, Lccsancom/san/mads/webview/getDownloadStatusByUrl;->unifiedDownload(Lccsanandroid/webkit/WebView;Z)V

    .line 8
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveSDK:Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    if-eqz v0, :cond_1

    .line 9
    invoke-static {v0, p1}, Lccsancom/san/mads/webview/getDownloadStatusByUrl;->unifiedDownload(Lccsanandroid/webkit/WebView;Z)V

    :cond_1
    return-void
.end method

.method public unifiedDownload()V
    .locals 3

    .line 10
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;->IncentiveDownloadUtils()V

    .line 13
    :try_start_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getThumbPathByRecord:Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    :goto_0
    iget-boolean v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->resolveUrl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener(Z)V

    .line 26
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/cx/unifiedDownload;

    invoke-static {v0}, Lccsansan/cx/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/view/View;)V

    .line 29
    invoke-direct {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingCount()V

    .line 30
    invoke-direct {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadedCount()V

    .line 31
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadStatusByUrl()V

    return-void

    .line 32
    :cond_1
    throw v0
.end method

.method unifiedDownload(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->deleteDownList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_1

    .line 35
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->shouldTryHandlingAction:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    invoke-virtual {p0, v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->execute:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->execute:Ljava/lang/Integer;

    .line 44
    :cond_0
    invoke-static {v0, p1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Lccsanandroid/app/Activity;I)V

    return-void

    .line 45
    :cond_1
    new-instance p1, Lccsancom/san/mads/mraid/addDownloadListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to lock orientation to unsupported value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->shouldTryHandlingAction:Lccsancom/san/mads/mraid/getDownloadingRecordByUrl;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lccsancom/san/mads/mraid/addDownloadListener;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method unifiedDownload(Ljava/lang/String;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getPackageNameByRecord:Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0}, Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;->removeDownloadListener()V

    .line 307
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->getPackageNameByRecord:Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    invoke-interface {v0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {p1, v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Lccsanandroid/content/Context;)V

    return-void
.end method

.method unifiedDownload(Lccsanandroid/webkit/ConsoleMessage;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
