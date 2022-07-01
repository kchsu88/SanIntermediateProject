.class final Lccsansan/au/addDownloadListener$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/k/addDownloadListener$unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->unifiedDownload()Lccsansan/k/addDownloadListener$unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Z

.field private static addDownloadListener:I

.field private static getDownloadedList:I

.field private static getDownloadingList:Z

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:[C

.field private static unifiedDownload:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    const/16 v1, 0x67

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lccsansan/au/addDownloadListener$removeDownloadListener;->unifiedDownload:[C

    const/16 v1, 0xe3

    sput v1, Lccsansan/au/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    sput-boolean v0, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList:Z

    sput-boolean v0, Lccsansan/au/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Z

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lccsansan/au/addDownloadListener$removeDownloadListener;->removeDownloadListener:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x62s
        0x61s
        0x61s
        0x69s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x61s
        0x69s
        0x73s
        0x6as
        0x69s
        0x73s
        0x32s
        0x68s
        0x6as
        0x65s
        0x53s
        0x55s
        0x62s
        0x68s
        0x6ds
        0x6ds
        0x72s
        0x73s
        0x59s
        0x59s
        0x6es
        0x47s
        0x49s
        0x6bs
        0x69s
        0x69s
        0x6cs
        0x73s
        0x6es
        0x5as
        0x58s
        0x62s
        0x68s
        0x6ds
        0x6ds
        0x72s
        0x73s
        0x59s
        0x5bs
        0x76s
        0x66s
        0x5bs
        0x52s
        0x5as
        0x6cs
        0x66s
        0x45s
        0x43s
        0x11s
        0x45s
        0x66s
        0x6cs
        0x5as
        0x52s
        0x5bs
        0x66s
        0x76s
        0x5bs
        0x59s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x58s
        0x5as
        0x6es
        0x73s
        0x6cs
        0x69s
        0x69s
        0x6bs
        0x49s
        0x47s
        0x6es
        0x59s
        0x59s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x53s
        0x59s
        0x6es
        0x6es
        0x6es
        0x68s
        0x6cs
        0x6cs
    .end array-data

    nop

    :array_1
    .array-data 2
        0x124s
        0x146s
        0x157s
        0x14cs
        0x152s
        0x151s
        0x127s
        0x15as
        0x14fs
        0x144s
        0x147s
        0x12bs
        0x148s
        0x153s
        0x155s
        0x106s
        0x14as
        0x136s
        0x15cs
        0x156s
        0x12fs
        0x103s
        0x142s
        0x149s
        0x158s
        0x133s
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;
    .locals 12

    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    check-cast p1, [B

    .line 1195
    sget-object v0, Lccsansan/d/shouldTryHandlingAction;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    const/4 v1, 0x0

    :try_start_0
    aget v2, p0, v1

    .line 1199
    const/4 v3, 0x1

    aget v4, p0, v3

    .line 1200
    const/4 v5, 0x2

    aget v6, p0, v5

    .line 1201
    const/4 v7, 0x3

    aget v7, p0, v7

    .line 1203
    sget-object v8, Lccsansan/au/addDownloadListener$removeDownloadListener;->unifiedDownload:[C

    .line 1204
    new-array v9, v4, [C

    .line 1206
    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1209
    if-eqz p1, :cond_3

    .line 1211
    new-array v2, v4, [C

    .line 1212
    nop

    .line 1214
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    const/4 v8, 0x0

    :goto_0
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge v10, v4, :cond_2

    .line 1216
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-byte v10, p1, v10

    if-ne v10, v3, :cond_1

    .line 1218
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_1

    .line 1222
    :cond_1
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    .line 1225
    :goto_1
    sget v8, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v8, v2, v8

    .line 1214
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr v10, v3

    sput v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_0

    .line 1228
    :cond_2
    move-object v9, v2

    .line 1232
    :cond_3
    if-lez v7, :cond_4

    .line 1234
    new-array p1, v4, [C

    .line 1236
    invoke-static {v9, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1237
    sub-int v2, v4, v7

    invoke-static {p1, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1238
    invoke-static {p1, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    :cond_4
    if-eqz p2, :cond_6

    .line 1244
    new-array p1, v4, [C

    .line 1246
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_2
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p2, v4, :cond_5

    .line 1248
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sub-int v2, v4, v2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p1, p2

    .line 1246
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p2, v3

    sput p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_2

    .line 1251
    :cond_5
    move-object v9, p1

    .line 1255
    :cond_6
    if-lez v6, :cond_7

    .line 1257
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_3
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p1, v4, :cond_7

    .line 1259
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char p2, v9, p2

    aget v1, p0, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p1

    .line 1257
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p1, v3

    sput p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_3

    .line 1263
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1264
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p3, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :cond_0
    check-cast p3, [B

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_1
    check-cast p0, [C

    .line 2163
    sget-object v0, Lccsansan/d/resume;->getDownloadingList:Ljava/lang/Object;

    monitor-enter v0

    .line 2165
    :try_start_0
    sget-object v1, Lccsansan/au/addDownloadListener$removeDownloadListener;->removeDownloadListener:[C

    .line 2166
    sget v2, Lccsansan/au/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    .line 2168
    sget-boolean v3, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 2170
    nop

    .line 2171
    array-length p0, p3

    .line 2172
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 2174
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_0
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p2, v3, :cond_2

    .line 2176
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget-byte v3, p3, v3

    add-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p2

    .line 2174
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_0

    .line 2179
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    .line 2182
    :cond_3
    sget-boolean p3, Lccsansan/au/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Z

    if-eqz p3, :cond_5

    .line 2184
    nop

    .line 2185
    array-length p2, p0

    .line 2186
    sput p2, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p2, p2, [C

    .line 2188
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_1
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_4

    .line 2190
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget-char v3, p0, v3

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p2, p3

    .line 2188
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_1

    .line 2193
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p0

    .line 2198
    :cond_5
    nop

    .line 2199
    array-length p0, p2

    .line 2200
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 2202
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_2
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_6

    .line 2204
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lccsansan/d/resume;->unifiedDownload:I

    sub-int/2addr v3, v4

    aget v3, p2, v3

    sub-int/2addr v3, p1

    aget-char v3, v1, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 2202
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_2

    .line 2207
    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 2209
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 6

    .line 3
    nop

    .line 1
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object p5

    invoke-static {p2, p1}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p6

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-string v1, "\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsansan/au/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, p6}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p5, ""

    const/16 p6, 0x30

    invoke-static {p5, p6, v2, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7e

    const/4 v1, 0x0

    const-string v3, "\u008f\u008d\u008e\u0089\u008d\u008c\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v1, v0, v1, v3}, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, p6, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result p5

    add-int/lit16 p5, p5, 0x80

    const-string p6, "\u0083\u008f\u008a\u0083\u0092\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u0087\u0086\u0085\u0096\u008f\u008d\u0086\u008d\u0083\u0094\u0084\u0095\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u0087\u0094\u0093\u0092\u008b\u0081\u0083\u008d\u0091\u0090"

    invoke-static {v1, p5, v1, p6}, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p5

    .line 2
    invoke-static {v0, p5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p5

    new-instance p6, Lccsansan/au/addDownloadListener$removeDownloadListener$addDownloadListener;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lccsansan/au/addDownloadListener$removeDownloadListener$addDownloadListener;-><init>(Lccsansan/au/addDownloadListener$removeDownloadListener;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p5, p6}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x11
        0x0
        0x0
    .end array-data
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .line 9
    sget p4, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p4, p4, 0x6f

    rem-int/lit16 p5, p4, 0x80

    sput p5, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p4, p4, 0x2

    if-nez p4, :cond_0

    .line 7
    :cond_0
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object p4

    invoke-static {p2, p1}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p5

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x0

    const-string v3, "\u0094\u0094\u008d\u0082\u0082\u0099\u0094\u0097\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u008b\u0097\u008b\u008a"

    invoke-static {v2, v1, v2, v3}, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, p5}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result p4

    shr-int/lit8 p4, p4, 0x16

    rsub-int/lit8 p4, p4, 0x7f

    const-string p5, "\u008f\u008d\u008e\u0089\u008d\u008c\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v2, p4, v2, p5}, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x4

    new-array p5, p5, [I

    fill-array-data p5, :array_0

    const-string v1, "\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001"

    invoke-static {p5, v1, v0}, Lccsansan/au/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p5

    .line 8
    invoke-static {p4, p5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p1, p2, p3}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x51

    goto :goto_0

    :cond_1
    const/16 p1, 0x30

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x3d

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3b
        0x2c
        0x0
        0x0
    .end array-data
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 4
    sget v0, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    invoke-static {p2, p1}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p2}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x0

    const-string v3, "\u008f\u0085\u008f\u008f\u008d\u0097\u008d\u0091\u008a\u008f\u0085\u0083\u0094\u0097\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u008b\u0097\u008b\u008a"

    invoke-static {v2, v1, v2, v3}, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    sget p1, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x51

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    .line 3
    nop

    .line 1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget p1, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_0
    invoke-static/range {p1 .. p6}, Lccsansan/au/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;JJ)V

    sget p1, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 11

    .line 6
    nop

    .line 4
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    move-object v3, p1

    move-object v4, p2

    invoke-static {p2, p1}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x7f

    const/4 v9, 0x0

    const-string v5, "\u008b\u008d\u0089\u0084\u008a\u0098\u0097\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u008b\u0097\u008b\u008a"

    invoke-static {v9, v2, v9, v5}, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    add-int/lit8 v0, v0, 0x7f

    const-string v1, "\u008f\u008d\u008e\u0089\u008d\u008c\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v9, v0, v9, v1}, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x1

    const-string v5, "\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001"

    invoke-static {v1, v5, v2}, Lccsansan/au/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v10, Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;

    move-object v1, v10

    move-object v2, p0

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lccsansan/au/addDownloadListener$removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/au/addDownloadListener$removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v10}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    :try_start_0
    array-length v0, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x11
        0x2a
        0x0
        0x29
    .end array-data
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 23
    nop

    .line 13
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/au/addDownloadListener$removeDownloadListener$unifiedDownload;

    invoke-direct {v1, p0, p2}, Lccsansan/au/addDownloadListener$removeDownloadListener$unifiedDownload;-><init>(Lccsansan/au/addDownloadListener$removeDownloadListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 21
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    invoke-static {p2, p1}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "\u008d\u0083\u008d\u0089\u008d\u008b\u0097\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u008b\u0097\u008b\u008a"

    cmp-long v7, v1, v3

    add-int/lit8 v7, v7, 0x7e

    invoke-static {v5, v7, v5, v6}, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-static {p1}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    sget p1, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .line 12
    nop

    .line 10
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object p3

    invoke-static {p2, p1}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    const-string v0, ""

    invoke-static {v0}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v0

    add-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    const-string v2, "\u008d\u0094\u0099\u008a\u008e\u0097\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u008b\u0097\u008b\u008a"

    invoke-static {v1, v0, v1, v2}, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide p3

    const-wide/16 v2, 0x0

    const-string v0, "\u008f\u008d\u008e\u0089\u008d\u008c\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    const-string v4, "\u008d\u0094\u0099\u008a\u009a\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u0087\u0086\u0085\u0096\u008f\u008d\u0086\u008d\u0083\u0094\u0084\u0095\u008b\u008a\u0085\u0089\u0086\u0088\u0085\u0087\u0094\u0093\u0092\u008b\u0081\u0083\u008d\u0091\u0090"

    cmp-long v5, p3, v2

    rsub-int p3, v5, 0x80

    invoke-static {v1, p3, v1, v0}, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result p4

    shr-int/lit8 p4, p4, 0x10

    add-int/lit8 p4, p4, 0x7f

    invoke-static {v1, p4, v1, v4}, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingList(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    .line 11
    invoke-static {p3, p4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p3

    new-instance p4, Lccsansan/au/addDownloadListener$removeDownloadListener$getDownloadingList;

    invoke-direct {p4, p0, p1, p2}, Lccsansan/au/addDownloadListener$removeDownloadListener$getDownloadingList;-><init>(Lccsansan/au/addDownloadListener$removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/au/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
