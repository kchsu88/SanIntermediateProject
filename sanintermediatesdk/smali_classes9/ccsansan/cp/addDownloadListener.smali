.class public Lccsansan/cp/addDownloadListener;
.super Lccsanandroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:[C

.field private static deleteDownItem:Z

.field private static getDownloadStatusByUrl:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:Z

.field private static unifiedDownload:Lccsansan/cp/addDownloadListener;


# instance fields
.field private getDownloadingList:Lccsansan/cp/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/cp/addDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cp/addDownloadListener;->getDownloadStatusByUrl:I

    const/16 v1, 0xb

    sput v1, Lccsansan/cp/addDownloadListener;->IncentiveDownloadUtils:I

    sput-boolean v0, Lccsansan/cp/addDownloadListener;->deleteDownItem:Z

    sput-boolean v0, Lccsansan/cp/addDownloadListener;->removeDownloadListener:Z

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/cp/addDownloadListener;->addDownloadListener:[C

    return-void

    :array_0
    .array-data 2
        0x6cs
        0x6fs
        0x7as
        0x82s
        0x79s
        0x77s
        0x39s
        0x6ds
        0x5es
        0x80s
        0x7ds
        0x6es
        0x70s
        0x4fs
        0x53s
        0x7bs
    .end array-data
.end method

.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 8

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-string v5, "\u0088\u0082\u0087\u0082\u0081\u0083\u0086\u0085\u0084\u0083\u0082\u0082\u0081"

    const/4 v6, 0x1

    cmp-long v7, v0, v3

    rsub-int v0, v7, 0x80

    invoke-static {v2, v0, v2, v5}, Lccsansan/cp/addDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-direct {p0, p1, v0, v2, v6}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    new-instance p1, Lccsansan/cp/IncentiveDownloadUtils;

    invoke-direct {p1, p0}, Lccsansan/cp/IncentiveDownloadUtils;-><init>(Lccsanandroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object p1, p0, Lccsansan/cp/addDownloadListener;->getDownloadingList:Lccsansan/cp/IncentiveDownloadUtils;

    return-void
.end method

.method private static addDownloadListener()Lccsansan/cp/addDownloadListener;
    .locals 3

    .line 1
    sget-object v0, Lccsansan/cp/addDownloadListener;->unifiedDownload:Lccsansan/cp/addDownloadListener;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/cp/addDownloadListener;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/cp/addDownloadListener;->unifiedDownload:Lccsansan/cp/addDownloadListener;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/cp/addDownloadListener;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/cp/addDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsansan/cp/addDownloadListener;->unifiedDownload:Lccsansan/cp/addDownloadListener;

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
    sget-object v0, Lccsansan/cp/addDownloadListener;->unifiedDownload:Lccsansan/cp/addDownloadListener;

    return-object v0
.end method

.method private static removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
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

    .line 1163
    sget-object v0, Lccsansan/d/resume;->getDownloadingList:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_0
    sget-object v1, Lccsansan/cp/addDownloadListener;->addDownloadListener:[C

    .line 1166
    sget v2, Lccsansan/cp/addDownloadListener;->IncentiveDownloadUtils:I

    .line 1168
    sget-boolean v3, Lccsansan/cp/addDownloadListener;->deleteDownItem:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1170
    nop

    .line 1171
    array-length p0, p3

    .line 1172
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 1174
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_0
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p2, v3, :cond_2

    .line 1176
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

    .line 1174
    sget p2, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_0

    .line 1179
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p1

    .line 1182
    :cond_3
    sget-boolean p3, Lccsansan/cp/addDownloadListener;->removeDownloadListener:Z

    if-eqz p3, :cond_5

    .line 1184
    nop

    .line 1185
    array-length p2, p0

    .line 1186
    sput p2, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p2, p2, [C

    .line 1188
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_1
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_4

    .line 1190
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

    .line 1188
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_1

    .line 1193
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0

    return-object p0

    .line 1198
    :cond_5
    nop

    .line 1199
    array-length p0, p2

    .line 1200
    sput p0, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    new-array p0, p0, [C

    .line 1202
    sput v4, Lccsansan/d/resume;->unifiedDownload:I

    :goto_2
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    sget v3, Lccsansan/d/resume;->IncentiveDownloadUtils:I

    if-ge p3, v3, :cond_6

    .line 1204
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

    .line 1202
    sget p3, Lccsansan/d/resume;->unifiedDownload:I

    add-int/lit8 p3, p3, 0x1

    sput p3, Lccsansan/d/resume;->unifiedDownload:I

    goto :goto_2

    .line 1207
    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 1209
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static removeDownloadListener()Lccsansan/cp/IncentiveDownloadUtils;
    .locals 3

    .line 1
    sget v0, Lccsansan/cp/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cp/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/cp/addDownloadListener;->addDownloadListener()Lccsansan/cp/addDownloadListener;

    move-result-object v0

    iget-object v0, v0, Lccsansan/cp/addDownloadListener;->getDownloadingList:Lccsansan/cp/IncentiveDownloadUtils;

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/cp/addDownloadListener;->addDownloadListener()Lccsansan/cp/addDownloadListener;

    move-result-object v0

    iget-object v0, v0, Lccsansan/cp/addDownloadListener;->getDownloadingList:Lccsansan/cp/IncentiveDownloadUtils;

    goto :goto_2

    :goto_1
    const/16 v2, 0x44

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget v1, Lccsansan/cp/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cp/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 3
    sget v0, Lccsansan/cp/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cp/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "CREATE TABLE IF NOT EXISTS source_record (_id INTEGER PRIMARY KEY,complete_time LONG,start_time LONG,status INTEGER,filepath TEXT,type INTEGER,source_url TEXT,expire LONG,complete_size LONG,all_size LONG,retry INTEGER,item TEXT );"

    packed-switch v0, :pswitch_data_0

    .line 3
    goto :goto_1

    .line 1
    :pswitch_0
    :try_start_0
    invoke-virtual {p1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x4e

    :try_start_1
    div-int/2addr p1, v1
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :goto_2
    sget p1, Lccsansan/cp/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cp/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 1
    const/16 p1, 0x17

    goto :goto_3

    :cond_1
    const/16 p1, 0x4c

    :goto_3
    packed-switch p1, :pswitch_data_1

    .line 3
    :pswitch_1
    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :catch_0
    move-exception p1

    invoke-static {v1}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "\u008b\u008d\u0090\u0086\u008d\u008f\u0082\u0081\u0083\u0086\u0085\u0084\u0083\u008e\u008d\u008c\u008b\u008a\u0083\u0089"

    cmpl-float v0, v0, v1

    rsub-int/lit8 v0, v0, 0x7f

    invoke-static {v2, v0, v2, v3}, Lccsansan/cp/addDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4c
        :pswitch_1
    .end packed-switch
.end method

.method public onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    sget p1, Lccsansan/cp/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cp/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
