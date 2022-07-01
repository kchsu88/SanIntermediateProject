.class Lccsansan/f/removeDownloadListener$getDownloadedList;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/xz/base/XzRecord;ZZLccsansan/aw/getDownloadingRecordByUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static getDownloadStatusByUrl:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Z

.field final synthetic addDownloadListener:Lccsancom/san/xz/api/unifiedDownload;

.field final synthetic getDownloadingList:Lccsancom/san/xz/base/XzRecord;

.field final synthetic removeDownloadListener:Lccsansan/aw/getDownloadingRecordByUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadedList;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadedList;->getDownloadStatusByUrl:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/api/unifiedDownload;Lccsancom/san/xz/base/XzRecord;ZLccsansan/aw/getDownloadingRecordByUrl;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/f/removeDownloadListener$getDownloadedList;->addDownloadListener:Lccsancom/san/xz/api/unifiedDownload;

    iput-object p3, p0, Lccsansan/f/removeDownloadListener$getDownloadedList;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    iput-boolean p4, p0, Lccsansan/f/removeDownloadListener$getDownloadedList;->IncentiveDownloadUtils:Z

    iput-object p5, p0, Lccsansan/f/removeDownloadListener$getDownloadedList;->removeDownloadListener:Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 5

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$getDownloadedList;->getDownloadStatusByUrl:I

    and-int/lit8 v1, v0, 0x35

    xor-int/lit8 v0, v0, 0x35

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    or-int v2, v1, v0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadedList;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/f/removeDownloadListener$getDownloadedList;->addDownloadListener:Lccsancom/san/xz/api/unifiedDownload;

    iget-object v1, p0, Lccsansan/f/removeDownloadListener$getDownloadedList;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    iget-boolean v2, p0, Lccsansan/f/removeDownloadListener$getDownloadedList;->IncentiveDownloadUtils:Z

    iget-object v4, p0, Lccsansan/f/removeDownloadListener$getDownloadedList;->removeDownloadListener:Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-interface {v0, v1, v2, v4}, Lccsancom/san/xz/api/unifiedDownload;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;ZLccsansan/aw/getDownloadingRecordByUrl;)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$getDownloadedList;->addDownloadListener:Lccsancom/san/xz/api/unifiedDownload;

    iget-object v1, p0, Lccsansan/f/removeDownloadListener$getDownloadedList;->getDownloadingList:Lccsancom/san/xz/base/XzRecord;

    iget-boolean v2, p0, Lccsansan/f/removeDownloadListener$getDownloadedList;->IncentiveDownloadUtils:Z

    iget-object v4, p0, Lccsansan/f/removeDownloadListener$getDownloadedList;->removeDownloadListener:Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-interface {v0, v1, v2, v4}, Lccsancom/san/xz/api/unifiedDownload;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;ZLccsansan/aw/getDownloadingRecordByUrl;)V

    goto :goto_2

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget v0, Lccsansan/f/removeDownloadListener$getDownloadedList;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x65

    and-int/lit8 v0, v0, 0x65

    shl-int/2addr v0, v3

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadedList;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
