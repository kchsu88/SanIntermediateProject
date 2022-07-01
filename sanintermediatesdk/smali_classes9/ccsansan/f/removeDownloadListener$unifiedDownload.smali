.class Lccsansan/f/removeDownloadListener$unifiedDownload;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsancom/san/xz/base/XzRecord;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static getDownloadStatusByUrl:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:J

.field final synthetic addDownloadListener:Lccsancom/san/xz/api/unifiedDownload;

.field final synthetic getDownloadingList:Lccsancom/san/xz/base/XzRecord;

.field final synthetic removeDownloadListener:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$unifiedDownload;->getDownloadStatusByUrl:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/api/unifiedDownload;Lccsancom/san/xz/base/XzRecord;JJ)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/f/removeDownloadListener$unifiedDownload;->addDownloadListener:Lccsancom/san/xz/api/unifiedDownload;

    iput-object p3, p0, Lccsansan/f/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    iput-wide p4, p0, Lccsansan/f/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:J

    iput-wide p6, p0, Lccsansan/f/removeDownloadListener$unifiedDownload;->removeDownloadListener:J

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 13

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x17

    or-int/lit8 v0, v0, 0x17

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v0, 0x35

    goto :goto_0

    :cond_0
    const/16 v0, 0x39

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v7, p0, Lccsansan/f/removeDownloadListener$unifiedDownload;->addDownloadListener:Lccsancom/san/xz/api/unifiedDownload;

    iget-object v8, p0, Lccsansan/f/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    iget-wide v9, p0, Lccsansan/f/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:J

    iget-wide v11, p0, Lccsansan/f/removeDownloadListener$unifiedDownload;->removeDownloadListener:J

    invoke-interface/range {v7 .. v12}, Lccsancom/san/xz/api/unifiedDownload;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;JJ)V

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lccsansan/f/removeDownloadListener$unifiedDownload;->addDownloadListener:Lccsancom/san/xz/api/unifiedDownload;

    iget-object v2, p0, Lccsansan/f/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    iget-wide v3, p0, Lccsansan/f/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:J

    iget-wide v5, p0, Lccsansan/f/removeDownloadListener$unifiedDownload;->removeDownloadListener:J

    invoke-interface/range {v1 .. v6}, Lccsancom/san/xz/api/unifiedDownload;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;JJ)V

    goto :goto_2

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch
.end method
