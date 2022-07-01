.class Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncentiveDownloadUtils"
.end annotation


# instance fields
.field IncentiveDownloadUtils:I

.field private final addDownloadListener:[Lccsanandroid/view/View;

.field private final getDownloadingList:Lccsanandroid/os/Handler;

.field private final removeDownloadListener:Ljava/lang/Runnable;

.field private unifiedDownload:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lccsanandroid/os/Handler;[Lccsanandroid/view/View;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/Runnable;

    .line 29
    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/os/Handler;

    .line 30
    iput-object p2, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->addDownloadListener:[Lccsanandroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/os/Handler;[Lccsanandroid/view/View;Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;-><init>(Lccsanandroid/os/Handler;[Lccsanandroid/view/View;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;)[Lccsanandroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->addDownloadListener:[Lccsanandroid/view/View;

    return-object p0
.end method

.method static synthetic addDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->unifiedDownload()V

    return-void
.end method

.method private unifiedDownload()V
    .locals 1

    .line 2
    iget v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method IncentiveDownloadUtils()V
    .locals 2

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/Runnable;

    return-void
.end method

.method addDownloadListener(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/Runnable;

    .line 3
    iget-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->addDownloadListener:[Lccsanandroid/view/View;

    array-length p1, p1

    iput p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    .line 4
    iget-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/os/Handler;

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$getDownloadedList$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
