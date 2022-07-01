.class public Lccsansan/aq/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:Ljava/lang/Object;

.field private static addDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/br/IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static getDownloadingList:I

.field private static removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/br/IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile unifiedDownload:Lccsansan/aq/deleteDownItem;


# instance fields
.field private getDownloadStatusByUrl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsansan/aq/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsansan/aq/deleteDownItem;->addDownloadListener:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsansan/aq/deleteDownItem;->removeDownloadListener:Ljava/util/List;

    .line 6
    const/4 v0, 0x2

    sput v0, Lccsansan/aq/deleteDownItem;->getDownloadingList:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/aq/deleteDownItem;->getDownloadStatusByUrl:J

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsansan/aq/deleteDownItem;->addDownloadListener:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsansan/aq/deleteDownItem;->removeDownloadListener:Ljava/util/List;

    return-void
.end method

.method public static getDownloadingList()Lccsansan/aq/deleteDownItem;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/aq/deleteDownItem;->unifiedDownload:Lccsansan/aq/deleteDownItem;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/aq/deleteDownItem;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/aq/deleteDownItem;->unifiedDownload:Lccsansan/aq/deleteDownItem;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/aq/deleteDownItem;

    invoke-direct {v1}, Lccsansan/aq/deleteDownItem;-><init>()V

    sput-object v1, Lccsansan/aq/deleteDownItem;->unifiedDownload:Lccsansan/aq/deleteDownItem;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/aq/deleteDownItem;->unifiedDownload:Lccsansan/aq/deleteDownItem;

    return-object v0
.end method


# virtual methods
.method public IncentiveDownloadUtils()Lccsansan/br/IncentiveDownloadUtils;
    .locals 7

    .line 1
    sget-object v0, Lccsansan/aq/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lccsansan/aq/deleteDownItem;->addDownloadListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-lez v1, :cond_0

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lccsansan/aq/deleteDownItem;->getDownloadStatusByUrl:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 5
    sget-object v1, Lccsansan/aq/deleteDownItem;->addDownloadListener:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/br/IncentiveDownloadUtils;

    .line 6
    sget-object v4, Lccsansan/aq/deleteDownItem;->addDownloadListener:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    new-instance v3, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    invoke-virtual {v1, v3}, Lccsanandroid/widget/LinearLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "Hybrid"

    .line 9
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHybridWebView mAvailable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 12
    :cond_0
    :try_start_2
    new-instance v1, Lccsansan/br/IncentiveDownloadUtils;

    new-instance v3, Lccsanandroid/content/MutableContextWrapper;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lccsanandroid/content/MutableContextWrapper;-><init>(Lccsanandroid/content/Context;)V

    invoke-direct {v1, v3}, Lccsansan/br/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;)V

    .line 13
    new-instance v3, Lccsanandroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14
    invoke-virtual {v1, v3}, Lccsanandroid/widget/LinearLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "Hybrid"

    .line 15
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHybridWebView new = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :goto_0
    :try_start_4
    sget-object v2, Lccsansan/aq/deleteDownItem;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    const/4 v1, 0x0

    .line 23
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public IncentiveDownloadUtils(Lccsansan/br/IncentiveDownloadUtils;)V
    .locals 4

    .line 10
    sget-object v0, Lccsansan/aq/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/widget/LinearLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/MutableContextWrapper;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/MutableContextWrapper;->setBaseContext(Lccsanandroid/content/Context;)V

    .line 12
    sget-object v1, Lccsansan/aq/deleteDownItem;->addDownloadListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lccsansan/aq/deleteDownItem;->getDownloadingList:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v2, :cond_0

    const-string v1, "Hybrid"

    .line 13
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetDelayed webview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadStatusByUrl()V

    .line 15
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lccsansan/aq/deleteDownItem;->getDownloadStatusByUrl:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const-string v1, "Hybrid"

    .line 17
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWebView webview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v1, Lccsansan/aq/deleteDownItem;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p1}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList()V

    .line 22
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public addDownloadListener(Lccsansan/br/IncentiveDownloadUtils;)V
    .locals 2

    .line 30
    sget-object v0, Lccsansan/aq/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lccsansan/aq/deleteDownItem;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 32
    sget-object v1, Lccsansan/aq/deleteDownItem;->addDownloadListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
