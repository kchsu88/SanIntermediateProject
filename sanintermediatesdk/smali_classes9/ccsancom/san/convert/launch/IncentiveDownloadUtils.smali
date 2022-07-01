.class public Lccsancom/san/convert/launch/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Ljava/util/concurrent/locks/Lock;

.field private getDownloadingList:Ljava/util/concurrent/locks/Condition;

.field private removeDownloadListener:I

.field private unifiedDownload:Lccsansan/bk/unifiedDownload;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->removeDownloadListener:I

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(I)Lccsancom/san/convert/launch/IncentiveDownloadUtils;
    .locals 0

    .line 5
    iput p1, p0, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->removeDownloadListener:I

    return-object p0
.end method

.method public addDownloadListener()I
    .locals 1

    .line 1
    iget v0, p0, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->removeDownloadListener:I

    return v0
.end method

.method public addDownloadListener(Ljava/util/concurrent/locks/Condition;)Lccsancom/san/convert/launch/IncentiveDownloadUtils;
    .locals 0

    .line 4
    iput-object p1, p0, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method public addDownloadListener(Lccsansan/bk/unifiedDownload;)Lccsancom/san/convert/launch/IncentiveDownloadUtils;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/bk/unifiedDownload;

    return-object p0
.end method

.method public getDownloadingList(Ljava/util/concurrent/locks/Lock;)Lccsancom/san/convert/launch/IncentiveDownloadUtils;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public getDownloadingList()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 3
    iget-object v0, p0, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public removeDownloadListener()Lccsansan/bk/unifiedDownload;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/bk/unifiedDownload;

    return-object v0
.end method

.method public unifiedDownload()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/convert/launch/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method
