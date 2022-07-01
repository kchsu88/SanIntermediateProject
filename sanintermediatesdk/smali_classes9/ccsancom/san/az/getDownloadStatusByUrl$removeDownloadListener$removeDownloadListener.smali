.class Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->unifiedDownload(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:C

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedRecordByUrl:I

.field private static removeDownloadListener:[C


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/content/Context;

.field final synthetic getDownloadingList:Z

.field final synthetic unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->getDownloadStatusByUrl:I

    const/4 v0, 0x4

    sput-char v0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->removeDownloadListener:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x73s
        0x79s
        0x5fs
        0x69s
        0x6es
        0x74s
        0x61s
        0x6cs
        0x6fs
        0x70s
        0x65s
        0x66s
        0x64s
        0x75s
        0x63s
        0x76s
    .end array-data
.end method

.method constructor <init>(Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;ZLccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    iput-boolean p2, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->getDownloadingList:Z

    iput-object p3, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(IBLjava/lang/String;)Ljava/lang/String;
    .locals 8

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :cond_0
    check-cast p2, [C

    .line 1208
    sget-object v0, Lccsansan/d/getDownloadedCount;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_0
    sget-object v1, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->removeDownloadListener:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:C

    .line 1215
    nop

    .line 1216
    nop

    .line 1218
    new-array v3, p0, [C

    .line 1221
    rem-int/lit8 v4, p0, 0x2

    if-eqz v4, :cond_1

    .line 1223
    add-int/lit8 p0, p0, -0x1

    .line 1224
    aget-char v4, p2, p0

    sub-int/2addr v4, p1

    int-to-char v4, v4

    aput-char v4, v3, p0

    .line 1227
    :cond_1
    const/4 v4, 0x1

    if-le p0, v4, :cond_5

    .line 1229
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    :goto_0
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    if-ge v5, p0, :cond_5

    .line 1233
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, p2, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    .line 1234
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v5, p2, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    .line 1237
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    if-ne v5, v6, :cond_2

    .line 1239
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    sget-char v6, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sub-int/2addr v6, p1

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 1240
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    sub-int/2addr v6, p1

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
.method public run()V
    .locals 7

    .line 19
    nop

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    iget-object v1, v1, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {v1}, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener(Lccsansan/p/getDownloadedList;)V

    .line 2
    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    iget-object v1, v1, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {v1}, Lccsancom/san/az/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/p/getDownloadedList;)V

    .line 3
    iget-boolean v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->getDownloadingList:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 19
    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/16 v1, 0x35

    :goto_0
    const/4 v2, 0x1

    const-string v3, ""

    packed-switch v1, :pswitch_data_0

    .line 12
    :try_start_1
    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 19
    :pswitch_0
    sget v1, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4
    :cond_1
    :try_start_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v4, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    iget-object v4, v4, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v4}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1

    .line 5
    iget-object v4, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    iget-object v4, v4, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v4}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_2

    .line 19
    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 5
    goto :goto_5

    .line 19
    :pswitch_1
    sget v2, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    const/16 v2, 0x27

    goto :goto_2

    :cond_3
    const/16 v2, 0x2e

    :goto_2
    packed-switch v2, :pswitch_data_2

    :try_start_3
    iget-object v1, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    goto :goto_3

    .line 5
    :pswitch_2
    iget-object v1, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 19
    :goto_3
    const/4 v2, 0x0

    :try_start_4
    array-length v2, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    sget v2, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v2, v2, 0x6b

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    goto :goto_6

    :catchall_0
    move-exception v0

    throw v0

    :goto_5
    move-object v1, v3

    .line 5
    :cond_4
    :goto_6
    :try_start_5
    invoke-static {v4, v1}, Lccsansan/bw/getErrorCode;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    iget-object v1, v1, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    const/16 v2, 0x30

    invoke-static {v3, v2, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x16

    invoke-static {v0, v0}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x56

    int-to-byte v3, v3

    const-string v4, "\u0001\u0002\u0001\u0003\u0000\u0007\u0001\u0004\u0007\u0004\u0006\u0003\t\n\u0008\u0006\u0003\n\u0007\u0002\u0006\u000b\u00ba"

    invoke-static {v2, v3, v4}, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils(IBLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    iget-object v3, v2, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v4, "launch_one_activity_fail"

    :try_start_6
    iget-object v2, v2, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lccsancom/san/az/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    iget-object v1, v1, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {v1}, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList(Lccsansan/p/getDownloadedList;)V

    goto :goto_8

    .line 12
    :goto_7
    iget-object v1, v1, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-static {v0, v0}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-static {v0}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x79

    int-to-byte v5, v5

    const-string v6, "\u0001\u0002\u0001\u0003\u0000\u0007\u0001\u0004\u0007\u0004\u0006\u0003\t\n\u0008\u0006\u0003\u0001\u000e\u000f\u0002\u000e\u00ec\u00ec"

    invoke-static {v4, v5, v6}, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils(IBLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    iget-object v4, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    iget-object v5, v4, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iget-object v4, v4, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1, v5, v2, v3, v4}, Lccsancom/san/az/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_8

    :catch_0
    move-exception v1

    .line 17
    iget-object v2, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    iget-object v2, v2, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    const-string v3, "open_error"

    invoke-static {v2, v3}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    iget-object v3, v3, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    iget-object v4, v4, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1, v4}, Lccsancom/san/az/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_2
    .end packed-switch
.end method
