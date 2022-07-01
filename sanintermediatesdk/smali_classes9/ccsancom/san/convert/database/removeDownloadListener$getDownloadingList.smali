.class Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;
.super Lccsanandroidx/room/EntityDeletionOrUpdateAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/convert/database/removeDownloadListener;-><init>(Lccsanandroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lccsancom/san/convert/database/ConvertIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:C

.field private static getDownloadingList:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->getDownloadingList:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    const-wide v1, -0x1d0e7ae7d4ceaa54L    # -4.132465276269949E168

    sput-wide v1, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->unifiedDownload:J

    sput-char v0, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->addDownloadListener:C

    sput v0, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/convert/database/removeDownloadListener;Lccsanandroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lccsanandroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    .line 1126
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p4, v1

    .line 1128
    const/4 p2, 0x2

    aget-char v2, p1, p2

    int-to-char p3, p3

    add-int/2addr v2, p3

    int-to-char p3, v2

    aput-char p3, p1, p2

    .line 1130
    array-length p3, p0

    .line 1131
    new-array v2, p3, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p3, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p1, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p1, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p4, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p0, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->unifiedDownload:J

    xor-long/2addr v3, v5

    sget v5, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->addDownloadListener:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v1

    .line 1132
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1154
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1155
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 8

    .line 87
    nop

    .line 1
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 85
    sget v0, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    rem-int/2addr v0, v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 7
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1b

    const/4 v4, 0x3

    if-nez v0, :cond_2

    .line 85
    sget v0, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->getDownloadingList:I

    add-int/2addr v0, v3

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    nop

    .line 8
    :goto_1
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 87
    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 12
    :goto_2
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 62
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    const/4 v5, 0x4

    packed-switch v0, :pswitch_data_0

    .line 15
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4

    .line 12
    :pswitch_0
    nop

    .line 13
    invoke-interface {p1, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 17
    :goto_4
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener()I

    move-result v0

    int-to-long v5, v0

    const/4 v0, 0x5

    invoke-interface {p1, v0, v5, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 18
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x6

    if-nez v0, :cond_4

    .line 19
    invoke-interface {p1, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 21
    :cond_4
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 23
    :goto_5
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x7

    if-nez v0, :cond_6

    .line 87
    sget v0, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    .line 23
    :cond_5
    nop

    .line 24
    invoke-interface {p1, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 26
    :cond_6
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 29
    :goto_6
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl()Z

    move-result v0

    int-to-long v5, v0

    const/16 v0, 0x8

    .line 30
    invoke-interface {p1, v0, v5, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 32
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl()Z

    move-result v0

    int-to-long v5, v0

    const/16 v0, 0x9

    .line 33
    invoke-interface {p1, v0, v5, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 34
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem()J

    move-result-wide v5

    const/16 v0, 0xa

    invoke-interface {p1, v0, v5, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 35
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount()J

    move-result-wide v5

    const/16 v0, 0xb

    invoke-interface {p1, v0, v5, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 36
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 62
    const/16 v0, 0x47

    goto :goto_7

    :cond_7
    const/16 v0, 0x2e

    :goto_7
    const/16 v5, 0xc

    packed-switch v0, :pswitch_data_1

    .line 39
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_8

    .line 36
    :pswitch_1
    nop

    .line 37
    invoke-interface {p1, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 41
    :goto_8
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->pause()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xd

    if-nez v0, :cond_8

    .line 42
    invoke-interface {p1, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 44
    :cond_8
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->pause()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :goto_9
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 62
    const/16 v0, 0x1e

    goto :goto_a

    :cond_9
    const/16 v0, 0x41

    :goto_a
    const/16 v5, 0xe

    packed-switch v0, :pswitch_data_2

    .line 46
    nop

    .line 47
    invoke-interface {p1, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_b

    .line 49
    :pswitch_2
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :goto_b
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 62
    const/4 v0, 0x1

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    :goto_c
    const/16 v5, 0x31

    const/16 v6, 0xf

    packed-switch v0, :pswitch_data_3

    .line 85
    sget v0, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    add-int/2addr v0, v5

    rem-int/lit16 v7, v0, 0x80

    sput v7, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->getDownloadingList:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_b

    goto :goto_d

    .line 54
    :pswitch_3
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_e

    .line 51
    :cond_b
    :goto_d
    nop

    .line 52
    invoke-interface {p1, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 56
    :goto_e
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x10

    if-nez v0, :cond_c

    .line 57
    invoke-interface {p1, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_f

    .line 59
    :cond_c
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :goto_f
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x11

    if-nez v0, :cond_e

    .line 8
    sget v0, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v7, v0, 0x80

    sput v7, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->getDownloadingList:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_d

    const/16 v0, 0x30

    .line 62
    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_10

    .line 61
    :cond_d
    nop

    .line 62
    invoke-interface {p1, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_10

    .line 64
    :cond_e
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 87
    nop

    .line 66
    :goto_10
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 62
    const/16 v0, 0x35

    goto :goto_11

    :cond_f
    const/16 v0, 0x60

    :goto_11
    const/16 v6, 0x12

    packed-switch v0, :pswitch_data_4

    .line 66
    nop

    .line 67
    invoke-interface {p1, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_12

    .line 69
    :pswitch_4
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 71
    :goto_12
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 62
    goto :goto_13

    :cond_10
    const/4 v1, 0x0

    :goto_13
    const/16 v0, 0x13

    packed-switch v1, :pswitch_data_5

    .line 74
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_14

    .line 71
    :pswitch_5
    nop

    .line 72
    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 76
    :goto_14
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK()I

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x14

    invoke-interface {p1, v4, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 77
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->execute()I

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x15

    invoke-interface {p1, v4, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 78
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeDetailPage()J

    move-result-wide v0

    const/16 v4, 0x16

    invoke-interface {p1, v4, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 79
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->resolveUrl()J

    move-result-wide v0

    const/16 v4, 0x17

    invoke-interface {p1, v4, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 80
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK$1()J

    move-result-wide v0

    const/16 v4, 0x18

    invoke-interface {p1, v4, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 81
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->shouldTryHandlingAction()J

    move-result-wide v0

    const/16 v4, 0x19

    invoke-interface {p1, v4, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 82
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeReserveApp()J

    move-result-wide v0

    const/16 v4, 0x1a

    invoke-interface {p1, v4, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 83
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->performAction()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v3, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 84
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1c

    if-nez v0, :cond_12

    .line 87
    sget p2, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    add-int/lit8 p2, p2, 0x6b

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->getDownloadingList:I

    rem-int/2addr p2, v2

    if-eqz p2, :cond_11

    .line 85
    invoke-interface {p1, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 84
    :cond_11
    nop

    .line 85
    invoke-interface {p1, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 87
    :cond_12
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_15
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x60
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public synthetic bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    check-cast p2, Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {p0, p1, p2}, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsancom/san/convert/database/ConvertIntent;)V

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public createQuery()Ljava/lang/String;
    .locals 7

    sget v0, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-static {v0}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    int-to-char v1, v1

    const v2, 0x734608a4

    const/4 v3, 0x0

    invoke-static {v0, v3, v3}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    const-string v4, "\u8701\udcb8\u3074\u0234\uf29d\u967c\u9d8c\u0171\u8f9b\uf2e7\u52b7\ufcc9\u1f0b\u54de\u4b92\ud24c\u490e\u1638\u951a\u2a55\u7627\u90f4\u26f2\u3b3b\uc8b8\u99d0\u2406\u1dc6\u97f2\u1fe8\u220b\uc8ae\u05fa\u6703\ued65\uf935\uaea4\ubabc\uf2b4\u6e04\ud22b\uf0fe\u3c3e\ud895\u7906\u8644\u5b98\ucdc0\u85e5\u094b\u569a\u930c\ub0de\u16a9\u6a32\ued0b\u09d8\ucbb8\ub17b\u85ea\u624d\ua0f4\u5a11\u7fc2\u2134\uc33b\u9e1c\u232e\u31b3\u04f7\u1806\u5682\uddad\u7339\ud17f\u01cf\udda2\u5b2c\u96bc\uba6d\u1c0d\uac85\u7b59\u4938\u6ef1\uf3d2\u36e9\u734c\ua483\u2442\u8150\uc1d5\u4421\u81a6\u5f8c\u273f\u6634\ud95c\ue6bf\u2ee7\udc5a\u3081\ua3b2\u6e9b\uf31b\u487d\u6c77\u6cdf\u8a52\uc8a7\uafb2\u8695\ue333\u5b2b\ua543\uc856\ud268\u010a\uc591\ue812\ubc18\u8c2c\ud5b1\uca67\u1fdc\uf832\u5483\ub811\u7b0e\u34f1\u8f2d\ua3ad\u496f\u9e53\u4cd6\u87b6\uc4b2\u661f\u6190\u3804\u0b23\ufd4b\u895e\u9577\ucb86\udd75\ud6e8\u090d\u31d4\u3755\u8ac5\ub331\uf599\u4532\udfbc\u2704\uff4e\u5800\u8710\u94b1\uc589\u45dc\u7535\ud48b\u977e\u3f59\u5202\ua7c7\uf1b5\u3487\ubcc0\ue364\ufde2\u9440\u8eda\u3a65\ubad8\ua285\u6968\ufd15\ua6bd\u7922\u37a8\ude36\uf3b6\ua71d\udd60\u5763\u196b\u37cf\ua795\ua796\u5e67\u1e44\u0375\u6e18\u8ff6\u1763\u46b2\u227f\ued71\ue1e7\ua52e\u9147\u0291\u875f\u8cde\uc343\uf8c8\u670c\u1b29\u23f6\u22df\u42f6\ue881\u4a84\u6aa6\u7752\uaed3\u4efd\u0427\udfb4\u16c5\ue4ce\u0147\ue7b0\u5225\u9d7a\u017e\uf636\u5c67\u771d\u7b8b\u05eb\u4673\u47fa\uc4b5\u130e\uf71c\u20a4\ub4ca\u8c44\uacd4\u94e0\u7f40\u1cfa\uc78c\u946e\ue2de\u1862\u66db\u342b\ub4cc\uab89\u62e8\uc621\ud019\u12e3\u310f\u928f\u2cc1\u0684\uf646\u15c8\u1d24\ucfe5\u1d5d\uede5\u078c\u4972\ufa22\uee1b\u0d23\u70fe\ue925\u76cd\uf918\u7418\u19bb\ua392\udf14\ude18\uba73\u1825\u24ec\u08c0\u6af2\ude67\ucee9\ua1cd\uf928\u4b4e\u42db\u083a\uc477\u89cb\ub2f0\u8837\u7485\uc197\u5420\uc5ba\u9a0d\ue877\ubc19\u0b28\u4de6\u7aac\ud150\u1d9f\ud132\ubdac\u4362\udbd7\ue0f5\u88ed\u2eaa\ud53c\uad12\u53f9\ud9a9\ue5bc\u2a15\u83b2\ub205\ud849\u340c\u3a7b\u56b6\u5c8d\u6561\u5141\ubc46\ucca6\uf6ef\ub61e\ub784\u093f\u9956\uc87e\uad4e\ub6f2\ue613\u82c7\u8b21\ue05d\u89cd\uee80\u1fdc\ub46c\uf700\ucf0c\uefbe\u7f6e\ud1e1\u05e5\u296b\u1404\ud35b\ucf5c\u3a2a\u6d87\ue88f\uc812\u3991\uc800\ucdae\ubffc\u8d8b\u104d\uac1d\ud6f1\u201b\uc817\u91e9\u66e1\ueaf6\u9ef5\u3c4a\u3d16\u1b68\u3bd9\u4b15\u2a08\ubc07\ue4c4\uaa06\u020e\ud66a\u2377\ub543\udf5a\u6cd8\u0d12\u2693\u3320\u771b\u8a05\u042b\ud9da\u2f10\ueeda\u8ccc\ub377\u4924\u9028\u1774\u00b4\u78d6\uf31b\u3043\u3d9e\ubdc8\u20d6\u70c0\u86cb\uc737\u9f55\u3729\uf2ae\u6893\u7228\u502e\u82c9\uc97b\u5256\u25bc\u7d22\u3f2c\ucf6f\u4c0b\u5e3e\ufe10\u631c\u55fd\u047b\u3f96\u9fce\u025f\ubab5\ucc98\u9daf\u4d70\u51a4\u638a\u5af6\ud3dc\u5e20\uc49b\uf862\uecff\ue172\ub6d4\ub942\u88f6\u3269\uc975\u7e2f\ubfb9\u76b2\u66b6\uad69\u6ebe\ud468\uaa75\u4bab\ubd83\uff23\u35bc\uc0dc\uaa88\u0504\ua968\u843c\u78d5\u7114\u5ad8\u1049\u00f4\uf463\u416c\u51e6\u009c\u7870\ud6a0\u5ee1\uf96b\ueb16\ua718\u88d8\u748b\u3719\u4a75\ud27e\u06d0\uadf2\ua369\u2ad1\u9027\u2ccb\u3239\u97fa\u9df7\u80d7\u70ef\ua553\uf9f5\u603e\ub1d1\u1278\uddd4\ue861\ue896\u76a0\u2263\u7167\u50d0\u6f76\u2378\u95de\u6d95\u58be\u21b7\u8d9e\u116a\uc2bf\ue42f\ua671\ufa14\u9666\uc82d\ub232\ucd7f\u055a\u5017\u9d76\ub752\u79c6\u0f01\ue50e\u8986\ub6bf\u0937\u443d\u0a3e\u2623\uace7\u75e6\uce7c\uaaa6\ud010\u31d1\u7be2\ub823\u7158\u016d\ue9e0\u2fa9\ud8db\u7422\u5e92\uc3df\uff62\uc180\udb8c\u57ff\u4999\u124a\u8807\u9e6f\uffd0\uf9e8\u6a20\udfa0\u45ae\ud1ab\ucb88\u2e19\u62be\ub141\u9d9c\u4e32\ud707\u8d02\u413c\ucc65\u4a4e\ue15d\ue76b\u24b8\u093b\ud77a\u3f67\u8ad3\ub064"

    const-string v5, "\u55ac\u2b31\u8518\ue2f1"

    const-string v6, "\ua418\u4608\u6473\u27cb"

    cmpl-float v0, v0, v3

    add-int/2addr v0, v2

    invoke-static {v4, v5, v1, v0, v6}, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/removeDownloadListener$getDownloadingList;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
