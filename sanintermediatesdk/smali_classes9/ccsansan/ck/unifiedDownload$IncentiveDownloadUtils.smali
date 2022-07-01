.class public Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ck/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncentiveDownloadUtils"
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:Z

.field private getDownloadingList:Z

.field private removeDownloadListener:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Z

    .line 5
    iput-boolean p1, p0, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Z

    return-void
.end method

.method static synthetic addDownloadListener(Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Z

    return p0
.end method

.method static synthetic getDownloadingList(Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Z

    return p0
.end method

.method static synthetic unifiedDownload(Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Z

    return p0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Z)Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Z

    return-object p0
.end method

.method public IncentiveDownloadUtils()Lccsansan/ck/unifiedDownload;
    .locals 1

    .line 3
    new-instance v0, Lccsansan/ck/unifiedDownload;

    invoke-direct {v0, p0}, Lccsansan/ck/unifiedDownload;-><init>(Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;)V

    return-object v0
.end method

.method public getDownloadingList(Z)Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsansan/ck/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Z

    return-object p0
.end method
