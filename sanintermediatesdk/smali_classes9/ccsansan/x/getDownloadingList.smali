.class public Lccsansan/x/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/x/getDownloadingList$IncentiveDownloadUtils;,
        Lccsansan/x/getDownloadingList$removeDownloadListener;
    }
.end annotation


# static fields
.field private static ActionTypeDownload:[C = null

.field private static ActionTypeReserveApp:I = 0x0

.field private static getActionType:C = '\u0000'

.field private static final getDownloadingList:[Ljava/lang/String;

.field private static performAction:I = 0x0

.field private static unifiedDownload:Z = false


# instance fields
.field private ActionTypeDetailPage:J

.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private IncentiveSDK:J

.field private IncentiveSDK$1:J

.field private addDownloadListener:Ljava/lang/String;

.field private final deleteDownItem:Ljava/lang/String;

.field private deleteDownList:J

.field private execute:Lccsanorg/json/JSONArray;

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedCount:J

.field private getDownloadedList:I

.field private final getDownloadedRecordByUrl:Ljava/lang/String;

.field private getDownloadingCount:J

.field private getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

.field private getPackageNameByRecord:J

.field private getThumbPathByRecord:J

.field private pause:J

.field private performActionWhenOffline:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private removeDownloadListener:Ljava/lang/String;

.field private resolveUrl:I

.field private resume:J

.field private shouldTryHandlingAction:Ljava/lang/String;

.field private trackReportClick:J

.field private trackReportShow:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    sput v0, Lccsansan/x/getDownloadingList;->performAction:I

    const/4 v1, 0x1

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    invoke-static {}, Lccsansan/x/getDownloadingList;->pause()V

    const/4 v2, 0x4

    .line 1
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "net.dns1"

    aput-object v3, v2, v0

    const-string v3, "net.dns2"

    aput-object v3, v2, v1

    const-string v3, "net.dns3"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    const-string v5, "net.dns4"

    aput-object v5, v2, v3

    sput-object v2, Lccsansan/x/getDownloadingList;->getDownloadingList:[Ljava/lang/String;

    sget v2, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v2, v2, 0xb

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/2addr v2, v4

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->execute:Lccsanorg/json/JSONArray;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->performActionWhenOffline:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    iput-object p1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lccsansan/x/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lccsansan/x/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lccsansan/x/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lccsansan/x/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    .line 40
    sget-object p1, Lccsansan/x/getDownloadingList$removeDownloadListener;->Init:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object p1, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 42
    sget-boolean p1, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Http request("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "):"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpAnalyzer.AD"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;
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
    sget-object v1, Lccsansan/x/getDownloadingList;->ActionTypeDownload:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/x/getDownloadingList;->getActionType:C

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

.method private getThumbPathByRecord()Z
    .locals 3

    .line 4
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x52

    goto :goto_0

    :cond_0
    const/16 v0, 0x35

    :goto_0
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    goto :goto_4

    :goto_2
    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/16 v0, 0x27

    goto :goto_3

    :cond_1
    const/16 v0, 0xf

    :goto_3
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :goto_4
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :cond_2
    iget-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    const-string v2, "/feedback/upload"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    :pswitch_1
    const/4 v0, 0x0

    sget v2, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v1, 0x0

    :goto_5
    return v1

    :catchall_0
    move-exception v0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch
.end method

.method static pause()V
    .locals 1

    const/4 v0, 0x4

    sput-char v0, Lccsansan/x/getDownloadingList;->getActionType:C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/x/getDownloadingList;->ActionTypeDownload:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x64s
        0x6fs
        0x77s
        0x6es
        0x6cs
        0x61s
        0x5fs
        0x73s
        0x70s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
    .end array-data
.end method

.method public static removeDownloadListener()[Ljava/lang/String;
    .locals 11

    .line 19
    nop

    .line 5
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Lccsansan/x/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList()V

    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    sget-object v4, Lccsansan/x/getDownloadingList;->getDownloadingList:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/x/getDownloadingList$IncentiveDownloadUtils;->getDownloadingList()V

    .line 2
    new-array v0, v1, [Ljava/lang/String;

    .line 4
    sget-object v4, Lccsansan/x/getDownloadingList;->getDownloadingList:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_8

    .line 19
    sget v8, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v8, v8, 0x1d

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    .line 4
    const/16 v8, 0x14

    goto :goto_1

    :cond_1
    const/16 v8, 0x60

    :goto_1
    const-string v9, ""

    packed-switch v8, :pswitch_data_0

    aget-object v8, v4, v6

    .line 5
    invoke-static {v8, v9}, Lccsansan/x/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    goto :goto_4

    .line 19
    :pswitch_0
    aget-object v8, v4, v6

    .line 5
    invoke-static {v8, v9}, Lccsansan/x/getDownloadingList$IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x19

    :try_start_0
    div-int/2addr v9, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    .line 4
    const/16 v9, 0x3a

    goto :goto_2

    :cond_2
    const/16 v9, 0x52

    :goto_2
    packed-switch v9, :pswitch_data_1

    :goto_3
    :pswitch_1
    goto :goto_7

    .line 19
    :catchall_0
    move-exception v0

    throw v0

    .line 6
    :goto_4
    :pswitch_2
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 4
    const/4 v9, 0x0

    goto :goto_5

    :cond_3
    const/4 v9, 0x1

    :goto_5
    packed-switch v9, :pswitch_data_2

    goto :goto_3

    .line 5
    :pswitch_3
    sget v9, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v9, v9, 0x45

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_4

    .line 6
    :cond_4
    if-ge v7, v1, :cond_5

    .line 4
    const/4 v9, 0x1

    goto :goto_6

    :cond_5
    const/4 v9, 0x0

    :goto_6
    packed-switch v9, :pswitch_data_3

    .line 6
    add-int/lit8 v9, v7, 0x1

    .line 19
    aput-object v8, v0, v7

    move v7, v9

    goto :goto_8

    :cond_6
    :goto_7
    nop

    .line 4
    sget v8, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v8, v8, 0x3

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_7

    .line 19
    :cond_7
    nop

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private unifiedDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 114
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    .line 0
    :cond_0
    if-eqz p1, :cond_1

    .line 114
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x2e

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v4, -0x1

    if-le v0, v4, :cond_2

    .line 114
    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_3

    add-int/2addr v0, v3

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget p1, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 p1, p1, 0x2

    :cond_3
    :pswitch_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 2

    .line 2
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    goto :goto_2

    :pswitch_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceConnectSStart, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_1
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->ConnectSStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 1
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(J)V
    .locals 2

    .line 18
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 15
    :cond_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceRecvBodyEnd, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 16
    :cond_1
    iput-wide p1, p0, Lccsansan/x/getDownloadingList;->resume:J

    .line 17
    sget-object p1, Lccsansan/x/getDownloadingList$removeDownloadListener;->RecvBodyEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object p1, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 18
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lccsansan/x/getDownloadingList;->trackReportShow:J

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 23
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 20
    :cond_0
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->ConnectStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 21
    iput-object p1, p0, Lccsansan/x/getDownloadingList;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 22
    sget-boolean p1, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trace connect start, id:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ip:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpAnalyzer.AD"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget p1, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    :cond_1
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    return-void
.end method

.method public addDownloadListener()V
    .locals 4

    .line 5
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_2

    :goto_1
    goto :goto_2

    :pswitch_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "traceDnsStop, id:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HttpAnalyzer.AD"

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 2
    :cond_2
    :pswitch_1
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    sget-object v2, Lccsansan/x/getDownloadingList$removeDownloadListener;->DNSEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v2, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 4
    iget-wide v2, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lccsansan/x/getDownloadingList;->IncentiveSDK:J

    .line 5
    iput-wide v0, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public addDownloadListener(IJLjava/lang/String;)V
    .locals 2

    .line 14
    nop

    .line 2
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response header end, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3
    :cond_0
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->RecvHeaderEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 4
    iput p1, p0, Lccsansan/x/getDownloadingList;->getDownloadedList:I

    .line 5
    iput-wide p2, p0, Lccsansan/x/getDownloadingList;->deleteDownList:J

    .line 6
    iput-object p4, p0, Lccsansan/x/getDownloadingList;->shouldTryHandlingAction:Ljava/lang/String;

    .line 8
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 9
    iget-wide p3, p0, Lccsansan/x/getDownloadingList;->IncentiveSDK$1:J

    sub-long p3, p1, p3

    iput-wide p3, p0, Lccsansan/x/getDownloadingList;->getDownloadingCount:J

    .line 10
    iget-wide p3, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lccsansan/x/getDownloadingList;->trackReportShow:J

    .line 11
    iput-wide p1, p0, Lccsansan/x/getDownloadingList;->trackReportClick:J

    .line 13
    iget p1, p0, Lccsansan/x/getDownloadingList;->getDownloadedList:I

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_1

    .line 14
    const/16 p2, 0x9

    goto :goto_0

    :cond_1
    const/16 p2, 0x48

    :goto_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    sget p2, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 p2, p2, 0x7

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    .line 13
    :cond_2
    const/16 p2, 0x12c

    if-lt p1, p2, :cond_3

    .line 14
    const/16 p1, 0xb

    goto :goto_1

    :cond_3
    const/16 p1, 0x29

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    .line 13
    :goto_2
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lccsansan/x/getDownloadingList;->removeDownloadListener(Ljava/lang/Exception;)V

    sget p1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 p1, p1, 0x2

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 3
    sget p1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    .line 1
    :cond_0
    sget-boolean p1, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "traceDnsStart, id:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpAnalyzer.AD"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget p1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 2
    :cond_1
    sget-object p1, Lccsansan/x/getDownloadingList$removeDownloadListener;->DNSStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object p1, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 3
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    return-void
.end method

.method public deleteDownItem()V
    .locals 4

    .line 4
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceConnectFailed, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x52

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2
    :cond_2
    :pswitch_0
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lccsansan/x/getDownloadingList;->getThumbPathByRecord:J

    .line 4
    iput-wide v0, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    return-void

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public deleteDownList()V
    .locals 4

    .line 4
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    const/16 v2, 0x28

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceSendHeaderEnd, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2
    :cond_1
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->SendHeaderEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 4
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lccsansan/x/getDownloadingList;->getPackageNameByRecord:J

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 5
    const-class v0, Lccsansan/x/getDownloadingList;

    sget v1, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, p1, :cond_0

    .line 1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 5
    :catchall_0
    move-exception p1

    throw p1

    .line 0
    :cond_1
    if-ne p0, p1, :cond_3

    .line 5
    :goto_1
    sget p1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 1
    const/16 p1, 0x3e

    goto :goto_2

    :cond_2
    const/16 p1, 0x21

    :goto_2
    packed-switch p1, :pswitch_data_1

    .line 5
    goto :goto_3

    :pswitch_0
    return v2

    :goto_3
    const/16 p1, 0x1c

    :try_start_1
    div-int/2addr p1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v2

    :catchall_1
    move-exception p1

    throw p1

    .line 0
    :cond_3
    :pswitch_1
    if-eqz p1, :cond_6

    .line 5
    sget v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_2
    array-length v2, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq v0, v1, :cond_5

    goto :goto_4

    .line 5
    :catchall_2
    move-exception p1

    throw p1

    .line 1
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 5
    :goto_4
    sget p1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_5

    .line 3
    :cond_5
    check-cast p1, Lccsansan/x/getDownloadingList;

    .line 5
    iget-object v0, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object p1, p1, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_5
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadStatusByUrl()V
    .locals 5

    .line 3
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    const/16 v3, 0x22

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "traceSendHeaderStart, id:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HttpAnalyzer.AD"

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_1
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->SendHeaderStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 3
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    .line 1
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 3
    :pswitch_1
    return-void

    .line 1
    :goto_3
    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadedCount()V
    .locals 2

    .line 3
    nop

    .line 1
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceRecvHeaderStart, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2
    :cond_1
    :pswitch_0
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->RecvHeaderStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 3
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedList()V
    .locals 4

    .line 2
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    goto :goto_2

    :pswitch_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/16 v3, 0x48

    :try_start_0
    div-int/2addr v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceConnectSEnd, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    :cond_1
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->ConnectSEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedRecordByUrl()V
    .locals 4

    .line 5
    nop

    .line 1
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceConnectEnd, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2
    :cond_1
    :pswitch_0
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->ConnectEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 3
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lccsansan/x/getDownloadingList;->getThumbPathByRecord:J

    .line 5
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingCount()V
    .locals 2

    .line 2
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceSendBodyStart, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_1
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->SendBodyStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v1, v0, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v1

    :goto_1
    const/16 v0, 0x19

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingRecordByUrl()V
    .locals 2

    .line 3
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceConnectAcquired, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 2
    :cond_1
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->ConnectAcquire:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 3
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    return-void
.end method

.method public hashCode()I
    .locals 3

    .line 1
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sget v1, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :goto_1
    const/16 v1, 0x40

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/Exception;)V
    .locals 16

    .line 110
    move-object/from16 v1, p0

    const-string v0, "*.m3u8"

    sget v2, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v2, v2, 0x2

    const-string v3, "HttpAnalyzer.AD"

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 23
    iget-object v2, v1, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v5, 0x1f

    :try_start_0
    div-int/2addr v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v5, v3

    goto/16 :goto_17

    .line 110
    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 23
    :cond_1
    iget-object v2, v1, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    :goto_1
    iget-object v2, v1, Lccsansan/x/getDownloadingList;->performActionWhenOffline:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 28
    :cond_2
    sget-boolean v2, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trace END, id:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_3
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v1, Lccsansan/x/getDownloadingList;->IncentiveSDK$1:J

    sub-long/2addr v6, v8

    iput-wide v6, v1, Lccsansan/x/getDownloadingList;->getDownloadedCount:J

    .line 31
    iget v2, v1, Lccsansan/x/getDownloadingList;->getDownloadedList:I

    const/16 v6, 0xc8

    if-lt v2, v6, :cond_5

    const/16 v6, 0x12c

    if-ge v2, v6, :cond_4

    .line 23
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 31
    :pswitch_0
    if-nez p1, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_7

    .line 23
    sget v6, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v6, v6, 0x21

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    .line 33
    :cond_6
    sget-object v6, Lccsansan/x/getDownloadingList$removeDownloadListener;->Success:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v6, v1, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 23
    sget v6, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v6, v6, 0x3b

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v6, v6, 0x2

    .line 33
    :cond_7
    if-eqz v2, :cond_8

    .line 23
    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    const/4 v2, 0x1

    :goto_5
    const/4 v6, 0x0

    const-string v7, ""

    packed-switch v2, :pswitch_data_1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http status:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lccsansan/x/getDownloadingList;->getDownloadedList:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_c

    goto :goto_6

    .line 110
    :pswitch_1
    sget v2, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v2, v2, 0x59

    rem-int/lit16 v8, v2, 0x80

    sput v8, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    const/16 v2, 0x32

    :try_start_1
    div-int/2addr v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v0

    throw v2

    .line 33
    :cond_9
    goto :goto_9

    .line 34
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 110
    sget v8, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v8, v8, 0x1d

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_a

    .line 34
    :cond_a
    const-string v8, "no message"

    goto :goto_7

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 110
    nop

    .line 34
    :goto_7
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_c
    move-object v6, v7

    :goto_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 37
    :goto_9
    :try_start_2
    iget-object v2, v1, Lccsansan/x/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    const-string v8, "?"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 38
    new-instance v8, Ljava/net/URL;

    iget-object v9, v1, Lccsansan/x/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lccsansan/x/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    if-gez v2, :cond_d

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    :cond_d
    invoke-virtual {v10, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lccsansan/x/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 41
    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 42
    invoke-direct {v1, v10}, Lccsansan/x/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 43
    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    :goto_a
    goto :goto_b

    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "*."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    .line 45
    :goto_b
    iget-object v11, v1, Lccsansan/x/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    const-string v12, "googlevideo.com"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 47
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v12

    const-string v13, "http_stats_rate_denom"

    const/16 v14, 0xa

    invoke-static {v12, v13, v14}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    .line 48
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v14, "*.mpd"

    if-nez v13, :cond_12

    .line 23
    sget v13, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v13, v13, 0x2d

    rem-int/lit16 v15, v13, 0x80

    sput v15, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v13, v13, 0x2

    if-nez v13, :cond_10

    :try_start_3
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v15, 0x36

    :try_start_4
    div-int/2addr v15, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v13, :cond_f

    const/4 v13, 0x1

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    :goto_c
    packed-switch v13, :pswitch_data_2

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v2, v0

    throw v2

    .line 48
    :cond_10
    :try_start_5
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    :goto_d
    invoke-direct/range {p0 .. p0}, Lccsansan/x/getDownloadingList;->getThumbPathByRecord()Z

    move-result v13

    if-nez v13, :cond_11

    .line 23
    const/4 v5, 0x0

    goto :goto_e

    :cond_11
    nop

    :goto_e
    packed-switch v5, :pswitch_data_3

    goto :goto_f

    .line 48
    :pswitch_2
    invoke-static {v12}, Lccsansan/bn/unifiedDownload;->removeDownloadListener(I)Z

    move-result v5

    if-nez v5, :cond_12

    if-nez v11, :cond_12

    return-void

    .line 51
    :cond_12
    :goto_f
    :pswitch_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/ab/removeDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v5

    .line 53
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v13, "trace_id"

    .line 54
    :try_start_6
    iget-object v15, v1, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v13, "url"

    if-eqz v11, :cond_13

    .line 55
    :try_start_7
    iget-object v2, v1, Lccsansan/x/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    :cond_13
    invoke-virtual {v12, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v2, "portal"

    .line 56
    :try_start_8
    iget-object v13, v1, Lccsansan/x/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v2, v1, Lccsansan/x/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-nez v2, :cond_14

    const-string v2, "load_type"

    .line 58
    :try_start_9
    iget-object v13, v1, Lccsansan/x/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v2, "host"

    .line 60
    invoke-virtual {v12, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "path"

    .line 61
    invoke-virtual {v12, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "network"

    .line 62
    invoke-virtual {v12, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v2, "result"

    .line 63
    :try_start_a
    iget-object v5, v1, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    invoke-virtual {v5}, Lccsansan/x/getDownloadingList$removeDownloadListener;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v2, "total_duration"

    .line 64
    :try_start_b
    iget-wide v4, v1, Lccsansan/x/getDownloadingList;->getDownloadedCount:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v2, "first_recv_duration"

    .line 65
    :try_start_c
    iget-wide v4, v1, Lccsansan/x/getDownloadingList;->getDownloadingCount:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v2, "content_length"

    .line 66
    :try_start_d
    iget-wide v4, v1, Lccsansan/x/getDownloadingList;->deleteDownList:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v2, "error_code"

    .line 67
    :try_start_e
    iget v4, v1, Lccsansan/x/getDownloadingList;->getDownloadedList:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "error_msg"

    .line 68
    invoke-virtual {v12, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const-string v2, "ipaddr"

    .line 70
    :try_start_f
    iget-object v4, v1, Lccsansan/x/getDownloadingList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const-string v2, "dns_duration"

    .line 71
    :try_start_10
    iget-wide v4, v1, Lccsansan/x/getDownloadingList;->IncentiveSDK:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const-string v2, "connect_duration"

    .line 72
    :try_start_11
    iget-wide v4, v1, Lccsansan/x/getDownloadingList;->getThumbPathByRecord:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const-string v2, "send_duration"

    .line 73
    :try_start_12
    iget-wide v4, v1, Lccsansan/x/getDownloadingList;->getPackageNameByRecord:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    const-string v2, "recv_duration"

    .line 74
    :try_start_13
    iget-wide v4, v1, Lccsansan/x/getDownloadingList;->trackReportShow:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    const-string v2, "resp_duration"

    .line 75
    :try_start_14
    iget-wide v4, v1, Lccsansan/x/getDownloadingList;->trackReportClick:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    const-string v2, "read_bytes"

    .line 76
    :try_start_15
    iget-wide v4, v1, Lccsansan/x/getDownloadingList;->resume:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    const-string v2, "cdn_cache"

    .line 77
    :try_start_16
    iget-object v4, v1, Lccsansan/x/getDownloadingList;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    const-string v2, "redirect_count"

    .line 78
    :try_start_17
    iget v4, v1, Lccsansan/x/getDownloadingList;->resolveUrl:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    const-string v2, "redirect_urls"

    .line 79
    :try_start_18
    iget-object v4, v1, Lccsansan/x/getDownloadingList;->execute:Lccsanorg/json/JSONArray;

    invoke-virtual {v4}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    const-string v2, "write_bytes"

    .line 80
    :try_start_19
    iget-wide v4, v1, Lccsansan/x/getDownloadingList;->pause:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    const-string v2, "imsi"

    .line 81
    :try_start_1a
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsansan/bw/setAdFormat;->removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v2, v1, Lccsansan/x/getDownloadingList;->getDownloadStatusByUrl:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    if-eqz v2, :cond_17

    .line 23
    sget v4, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v4, v4, 0x39

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_15

    .line 83
    :cond_15
    :try_start_1b
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 84
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 85
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz v11, :cond_17

    :cond_16
    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/setErrorMessage;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serveraddr_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lccsansan/x/getDownloadingList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    :cond_17
    nop

    .line 91
    :try_start_1c
    invoke-static {}, Lccsansan/x/getDownloadingList;->removeDownloadListener()[Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    move-object v4, v7

    const/4 v2, 0x0

    .line 92
    :goto_10
    :try_start_1d
    array-length v5, v0

    if-ge v2, v5, :cond_1a

    const/4 v5, 0x4

    if-ge v2, v5, :cond_18

    .line 23
    const/16 v5, 0x33

    goto :goto_11

    :cond_18
    const/16 v5, 0x3e

    :goto_11
    packed-switch v5, :pswitch_data_4

    .line 92
    aget-object v5, v0, v2

    if-eqz v5, :cond_1a

    aget-object v5, v0, v2

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    if-eqz v2, :cond_19

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :catchall_3
    move-exception v0

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object v4, v7

    :cond_1a
    :goto_12
    :pswitch_4
    :try_start_1e
    const-string v0, "dns_server"

    .line 98
    invoke-virtual {v12, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-wide v4, v1, Lccsansan/x/getDownloadingList;->resume:J

    const/4 v0, 0x0

    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-eqz v8, :cond_1d

    iget-wide v13, v1, Lccsansan/x/getDownloadingList;->trackReportShow:J
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    cmp-long v8, v13, v10

    if-nez v8, :cond_1b

    goto :goto_13

    :cond_1b
    long-to-float v4, v4

    mul-float v4, v4, v6

    div-float/2addr v4, v2

    long-to-float v5, v13

    mul-float v5, v5, v6

    div-float/2addr v5, v2

    div-float/2addr v4, v5

    .line 23
    sget v5, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v5, v5, 0x6f

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1c

    .line 110
    :cond_1c
    goto :goto_14

    .line 23
    :cond_1d
    :goto_13
    sget v4, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v4, v4, 0x2b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1e

    .line 110
    :cond_1e
    const/4 v4, 0x0

    .line 100
    :goto_14
    :try_start_1f
    iget-wide v13, v1, Lccsansan/x/getDownloadingList;->getPackageNameByRecord:J

    move-object v5, v3

    iget-wide v2, v1, Lccsansan/x/getDownloadingList;->trackReportClick:J

    add-long/2addr v13, v2

    .line 101
    iget-wide v2, v1, Lccsansan/x/getDownloadingList;->pause:J
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    cmp-long v8, v2, v10

    if-eqz v8, :cond_20

    cmp-long v8, v13, v10

    if-nez v8, :cond_1f

    goto :goto_15

    :cond_1f
    long-to-float v0, v2

    mul-float v0, v0, v6

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    long-to-float v3, v13

    mul-float v3, v3, v6

    div-float/2addr v3, v2

    div-float/2addr v0, v3

    :cond_20
    :goto_15
    const/4 v2, 0x0

    invoke-static {v7, v2}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0xe

    invoke-static {v7, v2, v2}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1c

    int-to-byte v2, v2

    const-string v6, "\u0001\u0002\u0003\u0000\u0005\u0000\u0004\u0001\u0007\u0004\t\n\u0008\u0001"

    invoke-static {v6, v3, v2}, Lccsansan/x/getDownloadingList;->addDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 102
    :try_start_20
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0

    const-string v2, "upload_speed"

    .line 103
    :try_start_21
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0

    const-string v2, "Net_HttpConnectDetail"

    if-eqz v0, :cond_21

    .line 105
    :try_start_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_21
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v12}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0

    goto :goto_16

    :catch_0
    move-exception v0

    .line 108
    sget-boolean v2, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v2, :cond_22

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Net_HttpConnectDetailerror:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Stats.Net"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_16
    return-void

    .line 23
    :cond_23
    move-object v5, v3

    .line 110
    :goto_17
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_24

    const-string v0, "trace id is null or stats has completed!"

    invoke-static {v5, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3e
        :pswitch_4
    .end packed-switch
.end method

.method public resume()V
    .locals 2

    .line 2
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceRecvBodyStart, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_2
    :pswitch_0
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->RecvBodyStart:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload()V
    .locals 2

    .line 3
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trace Start, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_1
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/x/getDownloadingList;->IncentiveSDK$1:J

    .line 3
    iput-wide v0, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public unifiedDownload(ILjava/lang/String;)V
    .locals 3

    .line 22
    sget v0, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 22
    :catchall_0
    move-exception p1

    throw p1

    .line 20
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "traceRevRedirect, id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", httpCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",location:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpAnalyzer.AD"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget p1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 21
    :cond_1
    iget p1, p0, Lccsansan/x/getDownloadingList;->resolveUrl:I

    add-int/2addr p1, v1

    iput p1, p0, Lccsansan/x/getDownloadingList;->resolveUrl:I

    .line 22
    iget-object p1, p0, Lccsansan/x/getDownloadingList;->execute:Lccsanorg/json/JSONArray;

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(J)V
    .locals 2

    .line 27
    sget v0, Lccsansan/x/getDownloadingList;->performAction:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    sget-boolean v0, Lccsansan/x/getDownloadingList;->unifiedDownload:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 27
    :catchall_0
    move-exception p1

    throw p1

    .line 24
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceSendBodyEnd, id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/x/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpAnalyzer.AD"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_1
    sget-object v0, Lccsansan/x/getDownloadingList$removeDownloadListener;->SendBodyEnd:Lccsansan/x/getDownloadingList$removeDownloadListener;

    iput-object v0, p0, Lccsansan/x/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/x/getDownloadingList$removeDownloadListener;

    .line 26
    iput-wide p1, p0, Lccsansan/x/getDownloadingList;->pause:J

    .line 27
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lccsansan/x/getDownloadingList;->ActionTypeDetailPage:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lccsansan/x/getDownloadingList;->getPackageNameByRecord:J

    .line 24
    sget p1, Lccsansan/x/getDownloadingList;->ActionTypeReserveApp:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/x/getDownloadingList;->performAction:I

    rem-int/lit8 p1, p1, 0x2

    .line 27
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
