.class Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener;->onStartCommand(Lccsanandroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:[C

.field private static getDownloadedList:I

.field private static getDownloadingList:C

.field private static removeDownloadListener:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/f/removeDownloadListener;

.field final synthetic unifiedDownload:Lccsanandroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->getDownloadedList:I

    const/4 v0, 0x6

    sput-char v0, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:C

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->addDownloadListener:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x44s
        0x6fs
        0x77s
        0x6es
        0x6cs
        0x61s
        0x64s
        0x53s
        0x65s
        0x72s
        0x76s
        0x69s
        0x63s
        0x78s
        0x74s
        0x5fs
        0x6ds
        0x75s
        0x6bs
        0x79s
        0x70s
        0x73s
        0x20s
        0x2cs
        0x52s
        0x21s
        0x66s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
    .end array-data
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;Lccsanandroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/f/removeDownloadListener;

    iput-object p2, p0, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/content/Intent;

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
    sget-object v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->addDownloadListener:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->getDownloadingList:C

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
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 35
    nop

    .line 1
    iget-object v0, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 35
    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 1
    const/4 v0, 0x0

    goto :goto_1

    .line 35
    :pswitch_0
    sget v4, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->removeDownloadListener:I

    add-int/lit8 v4, v4, 0x3

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->getDownloadedList:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    .line 1
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand action"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    rsub-int/lit8 v6, v6, 0xf

    invoke-static {v3}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1c

    int-to-byte v8, v8

    const-string v9, "\u0001\u0002\u0003\u0004\u0005\u0002\u0000\u000b\u0008\t\n\u000b\u0006\u0011\u0081"

    invoke-static {v9, v6, v8}, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsansan/ap/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;)V

    .line 4
    const-string v4, "com.san.sdk.ACTION_IXZ_CLOUD_ITEM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 35
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 25
    nop

    .line 27
    const-string v3, "com.san.sdk.ACTION_IXZ_RESUME"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_7

    .line 5
    :pswitch_1
    iget-object v0, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/content/Intent;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, 0x13

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const-string v6, "cache_path"

    const-string v8, "\u0007\u000e\u000f\u0008\u0003\u0011\u0007\u0000\u0003\u0004\u0005\u0002\u0000\u000b\u0011\t\u0014\u000e\u00d0"

    const-string v14, "\u0007\u000e\u000f\u0008\u0003\u0011\u0007\u0000\u0003\u0004\u0005\u0002\u0000\u000b\u0010\r\u0005\u0002\u000c\u000b\u0010\u000c\n\u0003"

    const-string v15, "\u0007\u000e\u000f\u0008\u0003\u0011\u0007\u0000\u0003\u0004\u0005\u0002\u0000\u000b\u0010\r\u0005\u0002\u000c\u000b\u0010\u000c\n\u0003\u000c\u0015\u0007\u0014"

    const-string v5, "portal"

    cmp-long v16, v10, v12

    add-int/lit8 v10, v16, 0x62

    int-to-byte v10, v10

    invoke-static {v8, v4, v10}, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v0, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/content/Intent;

    invoke-static {v3, v3, v3}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x18

    invoke-static {v3, v3, v3, v3}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v10

    rsub-int/lit8 v10, v10, 0x52

    int-to-byte v10, v10

    invoke-static {v14, v8, v10}, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v8, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/content/Intent;

    invoke-static {v3}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1c

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v11

    shr-int/lit8 v11, v11, 0x16

    rsub-int/lit8 v11, v11, 0x56

    int-to-byte v11, v11

    invoke-static {v15, v10, v11}, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 8
    iget-object v10, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/content/Intent;

    invoke-virtual {v10, v5}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    iget-object v10, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/content/Intent;

    invoke-virtual {v10, v6}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 35
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    nop

    :goto_3
    packed-switch v2, :pswitch_data_2

    .line 9
    iget-object v2, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/content/Intent;

    invoke-virtual {v2, v6}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :pswitch_2
    const/4 v2, 0x0

    goto :goto_5

    .line 35
    :goto_4
    sget v6, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->removeDownloadListener:I

    add-int/lit8 v6, v6, 0x19

    rem-int/lit16 v10, v6, 0x80

    sput v10, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->getDownloadedList:I

    rem-int/lit8 v6, v6, 0x2

    .line 11
    :goto_5
    :try_start_0
    new-instance v6, Lccsanorg/json/JSONObject;

    invoke-direct {v6, v4}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "type"

    .line 12
    invoke-virtual {v6, v10}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lccsansan/cs/unifiedDownload;->fromString(Ljava/lang/String;)Lccsansan/cs/unifiedDownload;

    move-result-object v10

    .line 14
    sget-object v11, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    if-ne v10, v11, :cond_4

    .line 15
    new-instance v10, Lccsansan/ae/unifiedDownload;

    invoke-direct {v10, v6}, Lccsansan/ae/unifiedDownload;-><init>(Lccsanorg/json/JSONObject;)V

    .line 16
    new-instance v6, Lccsancom/san/xz/base/XzRecord;

    new-instance v11, Lccsancom/san/xz/base/IncentiveDownloadUtils;

    invoke-direct {v11, v8, v0}, Lccsancom/san/xz/base/IncentiveDownloadUtils;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v10, v11, v5}, Lccsancom/san/xz/base/XzRecord;-><init>(Lccsansan/ae/getDownloadingList;Lccsancom/san/xz/base/IncentiveDownloadUtils;Ljava/lang/String;)V

    goto :goto_6

    :cond_4
    nop

    .line 35
    const/4 v6, 0x0

    .line 16
    :goto_6
    if-eqz v6, :cond_5

    .line 20
    iget-object v0, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/f/removeDownloadListener;

    invoke-static {v0, v6, v5, v2}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    goto/16 :goto_9

    .line 21
    :cond_5
    new-instance v0, Lccsanorg/json/JSONException;

    const-string v2, "\u0017\u0002\u000f\u001b\n\u0014\t\n\u0007\u0003\u000b\u0015\u0012\n\u0002\u0003\u0004\u0005\u0002\u0000\u000c\u001e\u0006\u000e\u0003\u0007\n\u0012\t\u0017\u0015\u0004\u0010\u0005\u0001\u001c"

    invoke-static {v3}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    shr-int/lit8 v5, v5, 0x6

    rsub-int/lit8 v5, v5, 0x24

    invoke-static {v3}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x3c

    int-to-byte v6, v6

    invoke-static {v2, v5, v6}, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lccsanorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal cloud item!, cloudItem = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    add-int/2addr v2, v7

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v5

    const-string v6, "\u0001\u0002\u0003\u0004\u0005\u0002\u0000\u000b\u0014\u001c\u000b\u0011\u0002\n|"

    const-string v7, ""

    cmpl-float v4, v5, v4

    add-int/lit8 v4, v4, 0x1c

    int-to-byte v4, v4

    invoke-static {v9, v2, v4}, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/f/removeDownloadListener;

    invoke-static {v7, v3}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    invoke-static {v3, v3}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    invoke-static {v6, v2, v3}, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Ljava/lang/String;)V

    goto :goto_9

    .line 28
    :goto_7
    iget-object v0, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/f/removeDownloadListener;

    invoke-static {v0}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 29
    iget-object v0, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/f/removeDownloadListener;

    sget-object v3, Lccsancom/san/xz/base/XzRecord$Status;->AUTO_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-static {v0, v3, v2}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord$Status;Z)V

    goto :goto_9

    :cond_6
    nop

    .line 30
    const-string v3, "com.san.sdk.ACTION_IXZ_DISALLOW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 35
    const/16 v7, 0x27

    goto :goto_8

    :cond_7
    nop

    :goto_8
    packed-switch v7, :pswitch_data_3

    .line 31
    iget-object v0, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/f/removeDownloadListener;

    sget-object v2, Lccsancom/san/xz/base/XzRecord$Status;->AUTO_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-static {v0, v2}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord$Status;)V

    goto :goto_9

    :pswitch_3
    nop

    .line 32
    const-string v3, "com.san.sdk.ACTION_IXZ_START_SILENCE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33
    iget-object v0, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/f/removeDownloadListener;

    invoke-static {v0}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    sget v0, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    .line 34
    :cond_8
    iget-object v0, v1, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/f/removeDownloadListener;

    sget-object v3, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-static {v0, v3, v2}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord$Status;Z)V

    .line 35
    sget v0, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    :cond_9
    invoke-static {}, Lccsansan/bn/getDownloadingList;->addDownloadListener()V

    :cond_a
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x10
        :pswitch_3
    .end packed-switch
.end method
