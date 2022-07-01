.class Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/proaz/OutProAzOperatorActivity;->unifiedDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:C

.field private static addDownloadListener:I

.field private static getDownloadStatusByUrl:I

.field private static unifiedDownload:[C


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/proaz/OutProAzOperatorActivity;

.field final synthetic removeDownloadListener:Lccsansan/p/getDownloadedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->getDownloadStatusByUrl:I

    const/4 v0, 0x5

    sput-char v0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->IncentiveDownloadUtils:C

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->unifiedDownload:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x4fs
        0x75s
        0x74s
        0x50s
        0x72s
        0x6fs
        0x49s
        0x6es
        0x73s
        0x61s
        0x6cs
        0x70s
        0x65s
        0x41s
        0x63s
        0x69s
        0x76s
        0x79s
        0x23s
        0x78s
        0x46s
        0x53s
        0x20s
        0x6bs
        0x51s
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/proaz/OutProAzOperatorActivity;Lccsansan/p/getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->getDownloadingList:Lccsancom/san/proaz/OutProAzOperatorActivity;

    iput-object p2, p0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1208
    sget-object v0, Lccsansan/d/getDownloadedCount;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_0
    sget-object v1, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->unifiedDownload:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->IncentiveDownloadUtils:C

    .line 1215
    nop

    .line 1216
    nop

    .line 1218
    new-array v3, p1, [C

    .line 1221
    rem-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    .line 1223
    add-int/lit8 p1, p1, -0x1

    .line 1224
    aget-char v4, p0, p1

    sub-int/2addr v4, p2

    int-to-char v4, v4

    aput-char v4, v3, p1

    .line 1227
    :cond_1
    const/4 v4, 0x1

    if-le p1, v4, :cond_5

    .line 1229
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    :goto_0
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    if-ge v5, p1, :cond_5

    .line 1233
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    .line 1234
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    .line 1237
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    if-ne v5, v6, :cond_2

    .line 1239
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    sget-char v6, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 1240
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_1

    .line 1245
    :cond_2
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 1246
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 1247
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 1248
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 1251
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    if-ne v5, v6, :cond_3

    .line 1253
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 1254
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 1256
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 1257
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 1259
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1260
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1261
    goto :goto_1

    .line 1264
    :cond_3
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    if-ne v5, v6, :cond_4

    .line 1266
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 1267
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 1269
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 1270
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 1272
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1273
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1274
    goto :goto_1

    .line 1281
    :cond_4
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v6

    .line 1282
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v6, v7

    .line 1284
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1285
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1229
    :goto_1
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    goto/16 :goto_0

    .line 1291
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1292
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public callBack(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget p1, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x3d

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->getDownloadingList:Lccsancom/san/proaz/OutProAzOperatorActivity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->getDownloadingList:Lccsancom/san/proaz/OutProAzOperatorActivity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    :goto_2
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p1, 0x11

    :try_start_1
    div-int/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public execute()V
    .locals 8

    .line 2
    sget v0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/16 v0, 0x30

    const-string v1, ""

    invoke-static {v1, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x12

    int-to-byte v2, v2

    const-string v3, "\u0001\u0002\u0003\u0004\u0000\t\u0007\u0008\u0007\u0003\u0005\u000e\u000f\u0005\u000c\r\t\u000e\u0000\u0007\u0003\u000e\u000c\u0004\u0010\u0011\u0011\u0000\u008b"

    invoke-static {v3, v0, v2}, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x21

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x37

    int-to-byte v1, v1

    const-string v4, "\u0011\r\u0011\u000e\n\u0018\u0000\u000b\u000b\u0014\u0013\t\u009c\u009c\u0008\u0002\u0006\n\u0014\u0011\u0006\u0011\u0008\u0014\u0011\u0002\u0011\u0005\u0007\u0003\u0005\u000e\u00a3"

    invoke-static {v4, v2, v1}, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->removeDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    const-string v6, "\u0001\u0002\u0003\u0004\u0000\t\u0015\u0000\u00b9\u00b9\u0018\u000b\u0002\u000e\u0011\u000c\u0007\u0008\u0007\u0003\u0005\u000e\u00b9"

    cmp-long v7, v1, v4

    add-int/lit8 v7, v7, 0x16

    invoke-static {v3}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x4d

    int-to-byte v1, v1

    invoke-static {v6, v7, v1}, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsancom/san/proaz/deleteDownItem;->IncentiveDownloadUtils(Ljava/lang/String;Lccsansan/p/getDownloadedList;)V

    sget v0, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/OutProAzOperatorActivity$getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
