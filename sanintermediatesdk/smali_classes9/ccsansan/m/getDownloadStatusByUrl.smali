.class public Lccsansan/m/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:I

.field private addDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unifiedDownload:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/m/getDownloadStatusByUrl;->unifiedDownload:J

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/m/getDownloadStatusByUrl;->addDownloadListener:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/util/List;
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
    iget-object v0, p0, Lccsansan/m/getDownloadStatusByUrl;->addDownloadListener:Ljava/util/List;

    return-object v0
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

    .line 4
    iput-object p1, p0, Lccsansan/m/getDownloadStatusByUrl;->addDownloadListener:Ljava/util/List;

    return-void
.end method

.method public addDownloadListener()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/m/getDownloadStatusByUrl;->unifiedDownload:J

    return-wide v0
.end method

.method public removeDownloadListener(I)V
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/m/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    return-void
.end method

.method public unifiedDownload()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/m/getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    return v0
.end method

.method public unifiedDownload(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lccsansan/m/getDownloadStatusByUrl;->unifiedDownload:J

    return-void
.end method
