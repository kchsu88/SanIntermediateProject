.class public Lccsansan/ca/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile IncentiveDownloadUtils:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {}, Lccsansan/bw/getErrorCode;->ActionTypeDetailPage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/ca/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 3
    sget-object v0, Lccsansan/ca/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lccsansan/ca/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    const-class v0, Lccsansan/ca/getDownloadingList;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-static {}, Lccsansan/ca/getDownloadingList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsansan/ca/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 6
    sget-object v1, Lccsansan/ca/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p0}, Lccsansan/ca/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)V

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_1
    :goto_0
    sget-object p0, Lccsansan/ca/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    .line 12
    sput-object p0, Lccsansan/ca/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 14
    :cond_2
    sget-object p0, Lccsansan/ca/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic getDownloadingList(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lccsansan/ca/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object p0
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/cg/removeDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/cg/removeDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    new-instance p0, Lccsansan/ca/getDownloadingList$unifiedDownload;

    invoke-direct {p0}, Lccsansan/ca/getDownloadingList$unifiedDownload;-><init>()V

    invoke-virtual {v0, p0}, Lccsansan/cg/removeDownloadListener;->getDownloadingList(Lccsansan/ca/IncentiveDownloadUtils;)V

    return-void
.end method

.method private static removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lccsansan/ca/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 1
    new-instance v0, Lccsansan/cg/removeDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/cg/removeDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0}, Lccsansan/cg/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p0

    return p0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lccsansan/ca/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)V

    return-void
.end method
