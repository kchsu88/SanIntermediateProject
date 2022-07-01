.class Lccsansan/p/addDownloadListener$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/addDownloadListener;->getDownloadedList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:C

.field private static unifiedDownload:[C


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Lccsansan/p/addDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/p/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/p/addDownloadListener$addDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v0, 0x4

    sput-char v0, Lccsansan/p/addDownloadListener$addDownloadListener;->removeDownloadListener:C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/p/addDownloadListener$addDownloadListener;->unifiedDownload:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x61s
        0x64s
        0x5fs
        0x62s
        0x72s
        0x6fs
        0x77s
        0x73s
        0x65s
        0x69s
        0x6es
        0x74s
        0x6cs
        0x63s
        0x66s
        0x67s
    .end array-data
.end method

.method constructor <init>(Lccsansan/p/addDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->getDownloadingList:Lccsansan/p/addDownloadListener;

    iput-object p2, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;
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
    sget-object v1, Lccsansan/p/addDownloadListener$addDownloadListener;->unifiedDownload:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/p/addDownloadListener$addDownloadListener;->removeDownloadListener:C

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
.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    sget v0, Lccsansan/p/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener$addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 18
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    iget-object v0, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/bw/getActionType;->addDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    return-void

    .line 6
    :cond_3
    :goto_1
    iget-object v0, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/bw/getActionType;->addDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 9
    iget-object v0, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->getDownloadingList:Lccsansan/p/addDownloadListener;

    iget-object v1, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/addDownloadListener;Ljava/lang/String;)Lccsansan/p/addDownloadListener$getDownloadingList;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 7
    :pswitch_1
    iget-object v0, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->getDownloadingList:Lccsansan/p/addDownloadListener;

    iget-object v1, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/p/addDownloadListener;->addDownloadListener(Lccsansan/p/addDownloadListener;Ljava/lang/String;)V

    goto :goto_4

    .line 9
    :goto_3
    return-void

    .line 12
    :cond_5
    invoke-static {v0}, Lccsansan/p/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/p/addDownloadListener$getDownloadingList;)V

    .line 14
    new-instance v1, Lccsansan/p/removeDownloadListener;

    invoke-static {v2}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x11

    const/16 v4, 0x30

    const-string v5, ""

    invoke-static {v5, v4, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    int-to-byte v4, v4

    const-string v5, "\u0001\u0002\u0003\u0000\u0005\u0006\u0007\u0004\u000c\u0008\u0001\n\u000b\u0006\u0008\u0003nn"

    invoke-static {v5, v3, v4}, Lccsansan/p/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lccsansan/p/removeDownloadListener;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v3, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v4, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lccsansan/p/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->getDownloadingList:Lccsansan/p/addDownloadListener;

    invoke-static {v1}, Lccsansan/p/addDownloadListener;->getDownloadingList(Lccsansan/p/addDownloadListener;)Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 17
    iget-object v1, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->getDownloadingList:Lccsansan/p/addDownloadListener;

    invoke-static {v1}, Lccsansan/p/addDownloadListener;->getDownloadingList(Lccsansan/p/addDownloadListener;)Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;

    move-result-object v1

    iget-object v3, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;->addDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lccsansan/p/addDownloadListener$addDownloadListener;->getDownloadingList:Lccsansan/p/addDownloadListener;

    invoke-static {v1, v0}, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/addDownloadListener;Lccsansan/p/addDownloadListener$getDownloadingList;)V

    sget v0, Lccsansan/p/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener$addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    :cond_6
    :goto_4
    sget v0, Lccsansan/p/addDownloadListener$addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto :goto_5

    :cond_7
    const/4 v0, 0x6

    :goto_5
    packed-switch v0, :pswitch_data_2

    goto :goto_6

    :pswitch_2
    return-void

    :goto_6
    const/16 v0, 0x59

    :try_start_0
    div-int/2addr v0, v2
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_2
    .end packed-switch
.end method
