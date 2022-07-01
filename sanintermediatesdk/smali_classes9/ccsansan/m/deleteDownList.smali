.class public Lccsansan/m/deleteDownList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private getDownloadingList:J

.field private removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unifiedDownload:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/m/deleteDownList;->getDownloadingList:J

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/m/deleteDownList;->removeDownloadListener:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/m/deleteDownList;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object v0
.end method

.method public IncentiveDownloadUtils(J)V
    .locals 0

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lccsansan/m/deleteDownList;->removeDownloadListener:Ljava/util/List;

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lccsansan/m/deleteDownList;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method public getDownloadingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/m/deleteDownList;->removeDownloadListener:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadingList(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lccsansan/m/deleteDownList;->getDownloadingList:J

    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeDownloadListener()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/m/deleteDownList;->unifiedDownload:I

    return v0
.end method

.method public removeDownloadListener(I)V
    .locals 0

    .line 1
    iput p1, p0, Lccsansan/m/deleteDownList;->unifiedDownload:I

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unifiedDownload()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/m/deleteDownList;->getDownloadingList:J

    return-wide v0
.end method
