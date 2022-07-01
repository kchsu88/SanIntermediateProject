.class public Lccsansan/k/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/k/unifiedDownload$unifiedDownload;
    }
.end annotation


# instance fields
.field protected IncentiveDownloadUtils:Lccsansan/k/unifiedDownload$unifiedDownload;

.field protected addDownloadListener:J

.field protected getDownloadingList:Ljava/lang/String;

.field protected removeDownloadListener:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lccsansan/k/unifiedDownload$unifiedDownload;->WAITING:Lccsansan/k/unifiedDownload$unifiedDownload;

    iput-object v0, p0, Lccsansan/k/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/k/unifiedDownload$unifiedDownload;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/k/unifiedDownload;->getDownloadingList:Ljava/lang/String;

    return-object v0
.end method

.method public addDownloadListener()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/k/unifiedDownload;->addDownloadListener:J

    return-wide v0
.end method

.method public addDownloadListener(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/k/unifiedDownload;->removeDownloadListener:J

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/k/unifiedDownload;->getDownloadingList:Ljava/lang/String;

    return-void
.end method

.method public getDownloadingList()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lccsansan/k/unifiedDownload;->removeDownloadListener:J

    return-wide v0
.end method

.method public removeDownloadListener()Lccsansan/k/unifiedDownload$unifiedDownload;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/k/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/k/unifiedDownload$unifiedDownload;

    return-object v0
.end method

.method public removeDownloadListener(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lccsansan/k/unifiedDownload;->addDownloadListener:J

    return-void
.end method

.method public unifiedDownload(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 3
    sget-object p1, Lccsansan/k/unifiedDownload$unifiedDownload;->WAITING:Lccsansan/k/unifiedDownload$unifiedDownload;

    iput-object p1, p0, Lccsansan/k/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/k/unifiedDownload$unifiedDownload;

    goto :goto_0

    .line 4
    :pswitch_0
    sget-object p1, Lccsansan/k/unifiedDownload$unifiedDownload;->NO_ENOUGH_STORAGE:Lccsansan/k/unifiedDownload$unifiedDownload;

    iput-object p1, p0, Lccsansan/k/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/k/unifiedDownload$unifiedDownload;

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object p1, Lccsansan/k/unifiedDownload$unifiedDownload;->MOBILE_PAUSE:Lccsansan/k/unifiedDownload$unifiedDownload;

    iput-object p1, p0, Lccsansan/k/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/k/unifiedDownload$unifiedDownload;

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object p1, Lccsansan/k/unifiedDownload$unifiedDownload;->AUTO_PAUSE:Lccsansan/k/unifiedDownload$unifiedDownload;

    iput-object p1, p0, Lccsansan/k/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/k/unifiedDownload$unifiedDownload;

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object p1, Lccsansan/k/unifiedDownload$unifiedDownload;->COMPLETED:Lccsansan/k/unifiedDownload$unifiedDownload;

    iput-object p1, p0, Lccsansan/k/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/k/unifiedDownload$unifiedDownload;

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object p1, Lccsansan/k/unifiedDownload$unifiedDownload;->ERROR:Lccsansan/k/unifiedDownload$unifiedDownload;

    iput-object p1, p0, Lccsansan/k/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/k/unifiedDownload$unifiedDownload;

    goto :goto_0

    .line 9
    :pswitch_5
    sget-object p1, Lccsansan/k/unifiedDownload$unifiedDownload;->PROCESSING:Lccsansan/k/unifiedDownload$unifiedDownload;

    iput-object p1, p0, Lccsansan/k/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/k/unifiedDownload$unifiedDownload;

    goto :goto_0

    .line 10
    :pswitch_6
    sget-object p1, Lccsansan/k/unifiedDownload$unifiedDownload;->USER_PAUSE:Lccsansan/k/unifiedDownload$unifiedDownload;

    iput-object p1, p0, Lccsansan/k/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/k/unifiedDownload$unifiedDownload;

    goto :goto_0

    .line 11
    :pswitch_7
    sget-object p1, Lccsansan/k/unifiedDownload$unifiedDownload;->WAITING:Lccsansan/k/unifiedDownload$unifiedDownload;

    iput-object p1, p0, Lccsansan/k/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/k/unifiedDownload$unifiedDownload;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
