.class public Lccsansan/dh/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveSDK:[C

.field private static getPackageNameByRecord:C

.field private static getThumbPathByRecord:I

.field private static trackReportClick:I


# instance fields
.field private IncentiveDownloadUtils:J

.field private addDownloadListener:Ljava/lang/String;

.field private deleteDownItem:J

.field private deleteDownList:J

.field private getDownloadStatusByUrl:J

.field private getDownloadedCount:J

.field private getDownloadedList:J

.field private getDownloadedRecordByUrl:I

.field private getDownloadingCount:J

.field private getDownloadingList:Ljava/lang/String;

.field private getDownloadingRecordByUrl:Z

.field private pause:J

.field private removeDownloadListener:Ljava/lang/String;

.field private resume:J

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    const/4 v0, 0x3

    sput-char v0, Lccsansan/dh/getDownloadingList;->getPackageNameByRecord:C

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dh/getDownloadingList;->IncentiveSDK:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x69s
        0x6es
        0x73s
        0x74s
        0x61s
        0x6cs
        0x65s
        0x72s
        0x6as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lccsansan/dh/getDownloadingList;->getDownloadedRecordByUrl:I

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;
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
    sget-object v1, Lccsansan/dh/getDownloadingList;->IncentiveSDK:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/dh/getDownloadingList;->getPackageNameByRecord:C

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
.method public IncentiveDownloadUtils(J)V
    .locals 3

    .line 1
    sget v0, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v2, 0x0

    iput-wide p1, p0, Lccsansan/dh/getDownloadingList;->IncentiveDownloadUtils:J

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x57

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
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
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public addDownloadListener(J)V
    .locals 2

    .line 1
    sget v0, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    :goto_0
    iput-wide p1, p0, Lccsansan/dh/getDownloadingList;->resume:J

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x36

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0xe

    goto :goto_1

    :cond_1
    const/4 p1, 0x6

    :goto_1
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_1
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 26
    sget v0, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/dh/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public getDownloadStatusByUrl(J)V
    .locals 3

    .line 1
    sget v0, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-wide p1, p0, Lccsansan/dh/getDownloadingList;->getDownloadedCount:J

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
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
    sget p1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p1, 0x5d

    :try_start_1
    div-int/2addr p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadedList(J)V
    .locals 2

    .line 1
    sget v0, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-wide p1, p0, Lccsansan/dh/getDownloadingList;->pause:J

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedRecordByUrl(J)V
    .locals 3

    .line 2
    sget v0, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 v1, v0, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x3a

    goto :goto_0

    :cond_0
    const/16 v1, 0x16

    :goto_0
    const/4 v2, 0x0

    iput-wide p1, p0, Lccsansan/dh/getDownloadingList;->deleteDownList:J

    packed-switch v1, :pswitch_data_0

    :try_start_0
    array-length p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 p1, 0x35

    goto :goto_1

    :cond_1
    const/16 p1, 0x51

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    :try_start_1
    array-length p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList(J)V
    .locals 2

    .line 2
    sget v0, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    iput-wide p1, p0, Lccsansan/dh/getDownloadingList;->deleteDownItem:J

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
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
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    add-int/lit8 v1, v0, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/dh/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public getDownloadingRecordByUrl(J)V
    .locals 3

    .line 5
    sget v0, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    const/4 v2, 0x0

    iput-wide p1, p0, Lccsansan/dh/getDownloadingList;->getDownloadingCount:J

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    array-length p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x10

    goto :goto_2

    :cond_1
    const/16 p1, 0xf

    :goto_2
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    add-int/lit8 v1, v0, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/dh/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public removeDownloadListener(Z)Lccsanorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 25
    nop

    .line 1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/dh/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lccsansan/dh/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lccsansan/dh/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 5
    iget-wide v1, p0, Lccsansan/dh/getDownloadingList;->IncentiveDownloadUtils:J

    const-string v3, "event_time"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 6
    iget-boolean v1, p0, Lccsansan/dh/getDownloadingList;->getDownloadingRecordByUrl:Z

    const-string v2, "is_sys_app"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 7
    iget v1, p0, Lccsansan/dh/getDownloadingList;->getDownloadedRecordByUrl:I

    const-string v2, "usage_count"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 8
    iget-wide v1, p0, Lccsansan/dh/getDownloadingList;->getDownloadedList:J

    const-string v3, "cache_size"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 9
    iget-object v1, p0, Lccsansan/dh/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    const/16 v1, 0x4b

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 10
    :cond_1
    iget-object v1, p0, Lccsansan/dh/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    const-string v2, "app_label"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 12
    :goto_1
    iget-wide v1, p0, Lccsansan/dh/getDownloadingList;->getDownloadingCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 25
    const/16 v5, 0x3d

    goto :goto_2

    :cond_2
    const/16 v5, 0x14

    :goto_2
    packed-switch v5, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    sget v5, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 v5, v5, 0x6d

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 12
    :cond_3
    nop

    .line 13
    const-string v5, "apk_size"

    invoke-virtual {v0, v5, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 15
    :goto_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsansan/dh/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v1, v2}, Lccsansan/bw/toString;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_6

    .line 25
    sget p1, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 17
    :cond_4
    iget-wide v5, p0, Lccsansan/dh/getDownloadingList;->deleteDownItem:J

    const-string p1, "cache_create_time"

    invoke-virtual {v0, p1, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 18
    iget-wide v5, p0, Lccsansan/dh/getDownloadingList;->getDownloadStatusByUrl:J

    const-string p1, "last_modify"

    invoke-virtual {v0, p1, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 19
    iget-wide v5, p0, Lccsansan/dh/getDownloadingList;->deleteDownList:J

    const-string p1, "data_size"

    invoke-virtual {v0, p1, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 21
    iget-wide v5, p0, Lccsansan/dh/getDownloadingList;->resume:J

    const-string p1, "obb_create_time"

    invoke-virtual {v0, p1, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 22
    iget-wide v5, p0, Lccsansan/dh/getDownloadingList;->getDownloadedCount:J

    const-string p1, "last_obb_modify"

    invoke-virtual {v0, p1, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 23
    iget-wide v5, p0, Lccsansan/dh/getDownloadingList;->pause:J

    const-string p1, "obb_size"

    invoke-virtual {v0, p1, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 25
    sget p1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    packed-switch p1, :pswitch_data_2

    .line 23
    :cond_6
    :pswitch_2
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v5

    const-string p1, "\u0001\u0002\u0000\u0005\u0005\u0003\u0003\u0008\u0088"

    cmp-long v2, v5, v3

    rsub-int/lit8 v2, v2, 0xa

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x16

    int-to-byte v3, v3

    invoke-static {p1, v2, v3}, Lccsansan/dh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {v0, p1, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public removeDownloadListener(I)V
    .locals 2

    .line 4
    sget v0, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    iput p1, p0, Lccsansan/dh/getDownloadingList;->getDownloadedRecordByUrl:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
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
    sget p1, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 p1, 0x30

    :try_start_1
    div-int/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener(J)V
    .locals 4

    .line 27
    sget v0, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-wide p1, p0, Lccsansan/dh/getDownloadingList;->getDownloadedList:J

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x36

    :try_start_0
    div-int/2addr p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v2, 0x25

    :goto_2
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/dh/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0x4f

    goto :goto_0

    :cond_1
    const/16 p1, 0x13

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(J)V
    .locals 3

    .line 1
    sget v0, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 v1, v0, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-wide p1, p0, Lccsansan/dh/getDownloadingList;->getDownloadStatusByUrl:J

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lccsansan/dh/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x2d

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Z)V
    .locals 4

    .line 3
    sget v0, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    iput-boolean p1, p0, Lccsansan/dh/getDownloadingList;->getDownloadingRecordByUrl:Z

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsansan/dh/getDownloadingList;->trackReportClick:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dh/getDownloadingList;->getThumbPathByRecord:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
