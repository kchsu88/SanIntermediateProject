.class public Lccsansan/q/addDownloadListener;
.super Lccsanandroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Lccsansan/q/addDownloadListener;

.field private static addDownloadListener:C

.field private static deleteDownItem:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:[C


# instance fields
.field private getDownloadingList:Lccsansan/q/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/q/addDownloadListener;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/q/addDownloadListener;->deleteDownItem:I

    const/16 v0, 0x8

    sput-char v0, Lccsansan/q/addDownloadListener;->addDownloadListener:C

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/q/addDownloadListener;->unifiedDownload:[C

    return-void

    :array_0
    .array-data 2
        0x6ds
        0x61s
        0x64s
        0x73s
        0x2es
        0x6bs
        0x6fs
        0x77s
        0x6es
        0x6cs
        0x62s
        0x43s
        0x52s
        0x45s
        0x41s
        0x54s
        0x20s
        0x42s
        0x4cs
        0x49s
        0x46s
        0x4es
        0x4fs
        0x58s
        0x53s
        0x5fs
        0x72s
        0x65s
        0x63s
        0x28s
        0x69s
        0x47s
        0x50s
        0x4ds
        0x59s
        0x4bs
        0x2cs
        0x75s
        0x74s
        0x79s
        0x70s
        0x66s
        0x68s
        0x67s
        0x44s
        0x55s
        0x30s
        0x29s
        0x3bs
        0x76s
        0x71s
        0x78s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
        0x80s
        0x81s
        0x82s
        0x83s
        0x84s
        0x85s
    .end array-data
.end method

.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 7

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const-string v1, ""

    const-string v2, "\u0001\u0002\u0003\u0004\u0005\u0004\u0003\u0006\u0005\u0003\u0007\u0000\t\n\u0007\u0002\u0003\u0005\n\u0012"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmpl-float v0, v0, v3

    add-int/lit8 v0, v0, 0x13

    invoke-static {v1, v1, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x4c

    int-to-byte v1, v1

    invoke-static {v2, v0, v1}, Lccsansan/q/addDownloadListener;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-direct {p0, p1, v0, v5, v6}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    new-instance p1, Lccsansan/q/removeDownloadListener;

    invoke-direct {p1, p0}, Lccsansan/q/removeDownloadListener;-><init>(Lccsanandroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object p1, p0, Lccsansan/q/addDownloadListener;->getDownloadingList:Lccsansan/q/removeDownloadListener;

    return-void
.end method

.method public static IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;
    .locals 3

    .line 1
    sget v0, Lccsansan/q/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/q/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->unifiedDownload()Lccsansan/q/addDownloadListener;

    move-result-object v0

    iget-object v0, v0, Lccsansan/q/addDownloadListener;->getDownloadingList:Lccsansan/q/removeDownloadListener;

    sget v1, Lccsansan/q/addDownloadListener;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/q/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
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
    sget-object v1, Lccsansan/q/addDownloadListener;->unifiedDownload:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/q/addDownloadListener;->addDownloadListener:C

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

.method private static unifiedDownload()Lccsansan/q/addDownloadListener;
    .locals 3

    .line 1
    sget-object v0, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/q/addDownloadListener;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/q/addDownloadListener;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/q/addDownloadListener;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/q/addDownloadListener;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/q/addDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/q/addDownloadListener;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/q/addDownloadListener;

    return-object v0
.end method


# virtual methods
.method public onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .line 4
    const-string v0, ""

    sget v1, Lccsansan/q/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/q/addDownloadListener;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    const-wide/16 v1, 0x0

    :try_start_0
    const-string v3, "\u000c\r\u000e\u000f\u0008\u000e\u0017\u0008\t\u0016\u0015\n\u0011\u0014\u0015\u0011\u0016\u0017\u0008\u0017\u000f\u0015\u0010\u001b\u0008\u001f\u0013\u0000\u0003\u0006\u001a\u001b\u001c\u001d\u0002\u001e\u0000\u0012\u001e\u001a\u001a\u0006\u0011\u0014\u0017\r\u000f\u001d\u000e\r\u0018(\u000b\u0014&\t\n$\u0013 \n%,$\u000e\u0001\"\u0005\u001a\u001f\u0000\u0012\u0008\u000e\u001f\u0017\"\u0004\u0007\u0000\t\n\u0007\u0002\u0001\u001a\"\u001d\u0008\u0011\u0008\u000e\u001f\u0017,$\u0000\u000e#\u001e\u000e \u001e! /\u0018\u0013\u0008\u000e\u001f\u0017#\u0004!\u0006\'&\u0000\u0013\u0014\u0016\u0008\u000e\u001d\u000f\u0014,\u001e\u0004\u00080\u000b\u0019#\u001e\u001e!\u0018\u0006\u0018\u0013\u0013\u0017\u0017\u001d\"\u0004\"\u001d\u0006!&\u000e\u0010\u0018\u0013\u0017\u0017\u001d!,\u0019\u000e\u0018+\u0006!(\u0012\u0008\u000e\u001f\u0017\"\u001c\u0019\u0003\u0001\u001a1\u0011\u0003)\u0011\u0014\u0017\r\u000f\u001d\u000e\r\u0014(\u000c\u0015\r.\u0017\n\u0016(&\u001c#\u001e\u0008\u0018\u0008\u000e\u001f\u0017\"\u001c\u001c\u001d\u0002\u001e\u0000\u0012\u0008\u000e\u001f\u0017,$\u00af\u00af\u0006\u001d\u0018\u0013\u0008\u000e\u001f\u0017\u0017({"

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v6, v4, v1

    add-int/lit16 v6, v6, 0xee

    invoke-static {v0, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x40

    int-to-byte v4, v4

    invoke-static {v3, v6, v4}, Lccsansan/q/addDownloadListener;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 1
    invoke-virtual {p1, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "\u000c\r\u000e\u000f\u0008\u000e\u0017\u0008\t\u0016\u0015\n\u0011\u0014\u0015\u0011\u0016\u0017\u0008\u0017\u000f\u0015\u0010\u001b\u0008\u001f\u0013\u0000\u0003\u0006\u001a\u001d\u0004\u0019+\u001a\u001a\u001b\u001c\u001d\u0002\u001e\u0000\u0012\u001e\u001a\u001a\u0006\u0011\u0014\u0017\r\u000f\u001d\u000e\r\u0018(\u000b\u0014&\t\n$\u0013 \n%,$\u000e\u0001\"\u0005\u001a\u001f\u0000\u0012\u0008\u000e\u001f\u0017\"\u0004\u0007\u0000\t\n\u0007\u0002\u0001\u001a\"\u001d\u0008\u0011\u0008\u000e\u001f\u0017,$\u0000\u000e#\u001e\u000e \u001e! /\u0018\u0013\u0008\u000e\u001f\u0017#\u0004!\u0006\'&\u0000\u0013\u0014\u0016\u0008\u000e\u001d\u000f\u0014,\u001e\u0004\u00080\u000b\u0019#\u001e\u001e!\u0018\u0006\u0018\u0013\u0013\u0017\u0017\u001d\"\u0004\"\u001d\u0006!&\u000e\u0010\u0018\u0013\u0017\u0017\u001d!,\u0019\u000e\u0018+\u0006!(\u0012\u0008\u000e\u001f\u0017\"\u001c\u0019\u0003\u0001\u001a1\u0011\u0003)\u0011\u0014\u0017\r\u000f\u001d\u000e\r&\u001c#\u001e\u0008\u0018\u0008\u000e\u001f\u0017\"\u001c\u001c\u001d\u0002\u001e\u0000\u0012\u0008\u000e\u001f\u0017%\'-\"\u0002\u0008\t\u0000\u0019\u000e\u0017\u0008\u000f\u0015\u000c\'\u0006\u001a\u0000+\u0011\t!\u001f.&\u0003\u0018\u0000\u0013\u0014\u0016\u0008\u000e\u001d\u000f\u0008\u0014-\u000c\u0016\u000c*\u0015\u0008\u0017,&\u0019++\u0019\u001e$\u00196\u001c\u001a\u0006\u001a\u0000+\u0011\t!\u001f.&\u0003\u0018\u0000\u0013\u0014\u0016\u0008\u000e\u001d\u000f\u0008\u0014-\u000c\u0016\u000c*\u0015\u0008\u0017,&\u001e\u0004\u0007\u0006\u001f\u001c\u0017\u0008\u000f\u0015\u000c\'\u001b\u001c\u0001\u001b\u001a\u0006\u0017\u0008\u000f\u0015\u0008\u0017(7"

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v4

    int-to-byte v4, v4

    add-int/lit16 v4, v4, 0x151

    const/4 v5, 0x0

    invoke-static {v5}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x32

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lccsansan/q/addDownloadListener;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {p1, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    sget p1, Lccsansan/q/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/q/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 2
    :catch_0
    move-exception p1

    invoke-static {v0, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x10

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v3

    const-string v5, ".\u0004\u0000\u000f\u000e\u0001\u0002\u0003)\u0004!\u0006\t\u0002\u000b#"

    cmp-long v6, v3, v1

    add-int/lit8 v6, v6, 0x26

    int-to-byte v1, v6

    invoke-static {v5, v0, v1}, Lccsansan/q/addDownloadListener;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    sget p1, Lccsansan/q/addDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/q/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
