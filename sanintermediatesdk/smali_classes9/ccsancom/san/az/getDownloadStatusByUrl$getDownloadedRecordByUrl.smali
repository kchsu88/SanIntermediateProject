.class final Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic getDownloadingList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    sget p1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;->unifiedDownload:I

    xor-int/lit8 v0, p1, 0x61

    and-int/lit8 p1, p1, 0x61

    const/4 v1, 0x1

    shl-int/2addr p1, v1

    neg-int p1, p1

    neg-int p1, p1

    xor-int v2, v0, p1

    and-int/2addr p1, v0

    shl-int/2addr p1, v1

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 p1, 0x33

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    const-string v0, "direct_active"

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-static {p1, v0}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-static {p1, v0}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget p1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x7c

    sub-int/2addr p1, v1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p1, 0x58

    :try_start_1
    div-int/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x4d

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x4d

    and-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
