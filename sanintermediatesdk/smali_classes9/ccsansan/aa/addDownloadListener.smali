.class public Lccsansan/aa/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static IncentiveDownloadUtils:Lccsansan/k/getDownloadingList$addDownloadListener;

.field private static final unifiedDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lccsansan/k/removeDownloadListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field addDownloadListener:Lccsansan/k/addDownloadListener$unifiedDownload;

.field private getDownloadingList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsansan/k/removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsansan/aa/addDownloadListener;->unifiedDownload:Ljava/util/List;

    .line 88
    new-instance v0, Lccsansan/aa/addDownloadListener$unifiedDownload;

    invoke-direct {v0}, Lccsansan/aa/addDownloadListener$unifiedDownload;-><init>()V

    sput-object v0, Lccsansan/aa/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/k/getDownloadingList$addDownloadListener;

    return-void
.end method

.method public constructor <init>(Lccsansan/k/removeDownloadListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsansan/aa/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lccsansan/aa/addDownloadListener;->unifiedDownload:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-direct {p0}, Lccsansan/aa/addDownloadListener;->removeDownloadListener()V

    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/k/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic addDownloadListener()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/aa/addDownloadListener;->unifiedDownload:Ljava/util/List;

    return-object v0
.end method

.method public static addDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/k/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 5
    :cond_0
    invoke-static {p0}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDownloadingList()V
    .locals 1

    .line 2
    sget-object v0, Lccsansan/aa/addDownloadListener;->unifiedDownload:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private removeDownloadListener()V
    .locals 1

    .line 6
    new-instance v0, Lccsansan/aa/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/aa/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/aa/addDownloadListener;)V

    iput-object v0, p0, Lccsansan/aa/addDownloadListener;->addDownloadListener:Lccsansan/k/addDownloadListener$unifiedDownload;

    .line 52
    invoke-static {v0}, Lccsansan/k/addDownloadListener;->unifiedDownload(Lccsansan/k/addDownloadListener$unifiedDownload;)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 2

    .line 2
    sget-object v0, Lccsansan/aa/addDownloadListener;->unifiedDownload:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsansan/aa/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lccsansan/aa/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lccsansan/aa/addDownloadListener;->getDownloadingList:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)Lccsansan/k/unifiedDownload;
    .locals 0

    .line 2
    invoke-static {p1}, Lccsansan/k/addDownloadListener;->getDownloadedRecordByUrl(Ljava/lang/String;)Lccsansan/k/unifiedDownload;

    move-result-object p1

    return-object p1
.end method
