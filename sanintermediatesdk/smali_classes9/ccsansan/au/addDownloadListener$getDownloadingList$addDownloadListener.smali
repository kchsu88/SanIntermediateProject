.class Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener$getDownloadingList;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static getDownloadStatusByUrl:[I

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingRecordByUrl:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/au/addDownloadListener$getDownloadingList;

.field final synthetic addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:I

.field final synthetic unifiedDownload:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:I

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:[I

    return-void

    :array_0
    .array-data 4
        -0x4645d205
        0x38586a74
        0x2eeaaef
        0x141ff9a3
        0x77cb78aa
        0x9da7942
        0x2d7ae1c1
        -0x33ec950a    # -3.8644696E7f
        -0x142b7403
        -0x7cb09786
        -0xbea0d12
        0x58837e80
        -0x3fadff8d
        0x1e4996c9
        -0x443f0f61
        0x44a1301b
        -0x1c965d9a
        -0x20b57d1d
    .end array-data
.end method

.method constructor <init>(Lccsansan/au/addDownloadListener$getDownloadingList;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/au/addDownloadListener$getDownloadingList;

    iput-object p2, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iput p5, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->removeDownloadListener:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDownloadingList([II)Ljava/lang/String;
    .locals 12

    .line 1126
    sget-object v0, Lccsansan/d/getPackageNameByRecord;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [C

    .line 1129
    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    .line 1130
    sget-object v4, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadStatusByUrl:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1132
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    :goto_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    array-length v7, p0

    if-ge v6, v7, :cond_1

    .line 1134
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1135
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    aget v6, p0, v6

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1136
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    shr-int/2addr v6, v7

    int-to-char v6, v6

    const/4 v8, 0x2

    aput-char v6, v1, v8

    .line 1137
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v3

    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v9, 0x3

    aput-char v6, v1, v9

    .line 1141
    aget-char v6, v1, v5

    shl-int/2addr v6, v7

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1142
    aget-char v6, v1, v8

    shl-int/2addr v6, v7

    aget-char v10, v1, v9

    add-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1145
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1148
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 1150
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    .line 1151
    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    invoke-static {v10}, Lccsansan/d/getPackageNameByRecord;->addDownloadListener(I)I

    move-result v10

    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    xor-int/2addr v10, v11

    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1153
    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1154
    sget v11, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v11, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1155
    sput v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1148
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1157
    :cond_0
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1158
    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    sput v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1159
    nop

    .line 1161
    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aget v10, v4, v7

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    .line 1162
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    const/16 v10, 0x11

    aget v10, v4, v10

    xor-int/2addr v6, v10

    sput v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    .line 1165
    new-array v6, v8, [I

    sget v10, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    aput v10, v6, v5

    sget v10, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    aput v10, v6, v3

    .line 1167
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 1168
    sget v6, Lccsansan/d/getPackageNameByRecord;->getDownloadingList:I

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 1169
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v8

    .line 1170
    sget v6, Lccsansan/d/getPackageNameByRecord;->IncentiveDownloadUtils:I

    int-to-char v6, v6

    aput-char v6, v1, v9

    .line 1173
    invoke-static {v4}, Lccsansan/d/getPackageNameByRecord;->getDownloadingList([I)V

    .line 1176
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    aget-char v7, v1, v5

    aput-char v7, v2, v6

    .line 1177
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v3

    aget-char v7, v1, v3

    aput-char v7, v2, v6

    .line 1178
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v8

    aget-char v7, v1, v8

    aput-char v7, v2, v6

    .line 1179
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    shl-int/2addr v6, v3

    add-int/2addr v6, v9

    aget-char v7, v1, v9

    aput-char v7, v2, v6

    .line 1132
    sget v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    add-int/2addr v6, v8

    sput v6, Lccsansan/d/getPackageNameByRecord;->unifiedDownload:I

    goto/16 :goto_0

    .line 1181
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1182
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
.method public addDownloadListener(Ljava/lang/String;)V
    .locals 9

    .line 4
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---->onErrorUrlForNet-->url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x14

    invoke-static {v1, v2}, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/au/addDownloadListener$getDownloadingList;

    iget-object v1, v0, Lccsansan/au/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    iget v2, v0, Lccsansan/au/addDownloadListener$getDownloadingList;->unifiedDownload:I

    iget-object v3, v0, Lccsansan/au/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    iget-object v4, v0, Lccsansan/au/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v5, v0, Lccsansan/au/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:[Ljava/lang/String;

    iget-object v6, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iget-object v7, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    sget p1, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :array_0
    .array-data 4
        0x4cbb49fa    # 9.819336E7f
        0xef2e8c6
        0x1e3ca12a
        -0x39e65bcc
        -0x2c066ed0
        -0x43455da7
        -0x3116f204
        0x16ee0b5a
        0x7e32d5ec
        -0x54fe3795
    .end array-data
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 13

    .line 11
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---onResultUrl-->url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    const/16 v3, 0x14

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 3
    iget-object p1, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-->successNum.get():"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/au/addDownloadListener$getDownloadingList;

    iget-object p1, p1, Lccsansan/au/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p1

    iget-object v1, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/au/addDownloadListener$getDownloadingList;

    iget-object v2, v1, Lccsansan/au/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v1, v1, Lccsansan/au/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->addDownloadListener:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/au/addDownloadListener$getDownloadingList;

    iget-object v8, v2, Lccsansan/au/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:[Ljava/lang/String;

    array-length v4, v8

    const/4 v12, 0x0

    if-ne v1, v4, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->cpiReportInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v12, v12, v12, v12}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v2

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadingList([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/au/addDownloadListener$getDownloadingList;

    iget-object v4, v0, Lccsansan/au/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v5, v0, Lccsansan/au/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    iget-object v6, v0, Lccsansan/au/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget v7, v0, Lccsansan/au/addDownloadListener$getDownloadingList;->unifiedDownload:I

    iget-object v9, v0, Lccsansan/au/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:[Ljava/lang/String;

    move-object v8, p1

    invoke-static/range {v4 .. v9}, Lccsansan/au/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILccsansan/m/getDownloadedList;[Ljava/lang/String;)V

    goto :goto_4

    .line 10
    :cond_0
    iget v0, v2, Lccsansan/au/addDownloadListener$getDownloadingList;->unifiedDownload:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 11
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_4

    :pswitch_0
    sget v0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 10
    :cond_2
    if-eqz p1, :cond_4

    .line 11
    add-int/lit8 v4, v4, 0x45

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v4, v2, Lccsansan/au/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v5, v2, Lccsansan/au/addDownloadListener$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    iget-object v6, v2, Lccsansan/au/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v9, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    iget v10, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->removeDownloadListener:I

    iget-object v0, p0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    move-object v7, p1

    packed-switch v1, :pswitch_data_1

    invoke-static/range {v4 .. v11}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;[Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    :pswitch_1
    invoke-static/range {v4 .. v11}, Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;[Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    :goto_3
    :try_start_0
    div-int/2addr v3, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    :goto_4
    sget p1, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/au/addDownloadListener$getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x4cbb49fa    # 9.819336E7f
        0xef2e8c6
        0x1e3ca12a
        -0x39e65bcc
        -0x2c066ed0
        -0x43455da7
        -0x3116f204
        0x16ee0b5a
        0x7e32d5ec
        -0x54fe3795
    .end array-data

    :array_1
    .array-data 4
        0x4cbb49fa    # 9.819336E7f
        0xef2e8c6
        0x1e3ca12a
        -0x39e65bcc
        -0x2c066ed0
        -0x43455da7
        -0x3116f204
        0x16ee0b5a
        0x7e32d5ec
        -0x54fe3795
    .end array-data

    :array_2
    .array-data 4
        0x4cbb49fa    # 9.819336E7f
        0xef2e8c6
        0x1e3ca12a
        -0x39e65bcc
        -0x2c066ed0
        -0x43455da7
        -0x3116f204
        0x16ee0b5a
        0x7e32d5ec
        -0x54fe3795
    .end array-data
.end method
