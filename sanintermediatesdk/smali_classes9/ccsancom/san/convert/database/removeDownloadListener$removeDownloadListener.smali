.class Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;
.super Lccsanandroidx/room/EntityInsertionAdapter;
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
        "Lccsanandroidx/room/EntityInsertionAdapter<",
        "Lccsancom/san/convert/database/ConvertIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->unifiedDownload:I

    const/16 v0, 0xa0

    sput v0, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/convert/database/removeDownloadListener;Lccsanandroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lccsanandroidx/room/EntityInsertionAdapter;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1120
    sget-object v0, Lccsansan/d/trackReportClick;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    nop

    .line 1123
    :try_start_0
    new-array v1, p2, [C

    .line 1127
    const/4 v2, 0x0

    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_0
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge v3, p2, :cond_1

    .line 1129
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v3, p0, v3

    sput v3, Lccsansan/d/trackReportClick;->unifiedDownload:I

    .line 1131
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget v4, Lccsansan/d/trackReportClick;->unifiedDownload:I

    add-int/2addr v4, p4

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1132
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v4, v1, v3

    sget v5, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1127
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_0

    .line 1136
    :cond_1
    if-lez p3, :cond_2

    .line 1138
    sput p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    .line 1140
    new-array p0, p2, [C

    .line 1142
    invoke-static {v1, v2, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p3, p2, p3

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    invoke-static {p0, v2, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p4, p2, p4

    invoke-static {p0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    :cond_2
    if-eqz p1, :cond_4

    .line 1150
    new-array p0, p2, [C

    .line 1152
    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_1
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge p1, p2, :cond_3

    .line 1154
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget p3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sub-int p3, p2, p3

    add-int/lit8 p3, p3, -0x1

    aget-char p3, v1, p3

    aput-char p3, p0, p1

    .line 1152
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_1

    .line 1157
    :cond_3
    move-object v1, p0

    .line 1160
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1161
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
.method public synthetic bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x39

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    check-cast p2, Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {p0, p1, p2}, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->removeDownloadListener(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsancom/san/convert/database/ConvertIntent;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x1f

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch
.end method

.method public createQuery()Ljava/lang/String;
    .locals 5

    sget v0, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x217

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit16 v2, v2, 0x1aa

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit16 v3, v3, 0xfe

    const-string v4, "\u0011\u000b\u0016\u0005\u0003\u0001\u0007\u0016\u0003\u0018\u000b\u0016\u0005\u0003\u0002\uffce\u0002\u0007\u000f\u000b\u0016\u0001\u0007\u0016\u0003\u0006\u0012\u0017\u0001\u0016\u0015\u0003\u000e\u0002\uffce\u0002\u0007\u000f\u000b\u0016\u0001\u0015\u0015\u0007\u0005\u0005\u0017\u0015\u0001\u000e\u000e\u0003\u0016\u0015\u0010\u000b\u0002\uffce\u0002\u0007\u000f\u000b\u0016\u0001\u0010\u0011\u000b\u0016\u0005\u0003\u0001\u000e\u000e\u0003\u0016\u0015\u0010\u000b\u0002\uffce\u0002\u0016\u0010\u0017\u0011\u0005\u0001\u0007\u0014\u0017\u000e\u000b\u0003\u0008\u0001\u0007\u0016\u0003\u0018\u000b\u0016\u0005\u0003\u0002\uffce\u0002\u0016\u0010\u0017\u0011\u0005\u0001\u0007\u0014\u0017\u000e\u000b\u0003\u0008\u0001\u000e\u000e\u0003\u0016\u0015\u0010\u000b\u0002\uffce\u0002\u0010\u0011\u000b\u0016\u0005\u0003\u0002\uffce\u0002\u0007\u0010\u0007\u0005\u0015\u0001\u0014\u0007\t\t\u000b\u0014\u0016\u0002\uffce\u0002\u0007\u0016\u0003\u0016\u0015\u0001\r\u0015\u0003\u0016\u0002\uffce\u0002\n\u0016\u0003\u0012\u0001\u0007\t\u0003\u000f\u000b\u0002\uffce\u0002\n\u0016\u0003\u0012\u0001\u0010\u0011\u0005\u000b\u0002\uffce\u0002\u0010\u0011\u000b\u0016\u0012\u000b\u0014\u0005\u0015\u0007\u0006\u0001\u0007\t\u0003\r\u0005\u0003\u0012\u0002\uffce\u0002\u0007\u000e\u0016\u000b\u0016\u0001\u0007\t\u0003\r\u0005\u0003\u0012\u0002\uffce\u0002\u0007\u000f\u0003\u0010\u0001\u0007\t\u0003\r\u0005\u0003\u0012\u0002\uffce\u0002\u0016\u0010\u0017\u0011\u0005\u0001\u0016\u000b\u000f\u0004\u0017\u0015\u0002\uffce\u0002\u0007\u000f\u000b\u0016\u0001\u0016\u000b\u000f\u0004\u0017\u0015\u0001\u0016\u0015\u0003\u000e\u0002\uffce\u0002\u0006\u0007\u0016\u0005\u0007\u0010\u0010\u0011\u0005\u0001\r\u0014\u0011\u0019\u0016\u0007\u0010\u0001\u0016\u0015\u0007\u0017\u0013\u0007\u0014\u0002\uffce\u0002\u0015\r\u0012\u0003\u0001\u0015\u000b\u0002\uffce\u0002\u000e\u0014\u0017\u0002\uffce\u0002\u000e\u0003\u0016\u0014\u0011\u0012\u0002\uffce\u0002\u0007\u0006\u0011\u0005\u0001\u0010\u0011\u000b\u0015\u0014\u0007\u0018\u0002\uffce\u0002\n\u0016\u0003\u0012\u0001\r\u0012\u0003\u0002\uffce\u0002\u0006\u000b\u0001\u0006\u0003\u0002\uffce\u0002\u0007\u000f\u000b\u0016\u0001\u0007\u0016\u0003\u0007\u0014\u0005\u0002\uffce\u0002\u0006\u000b\u0001\r\u0015\u0003\u0016\u0002\uffca\uffc2\u0002\u0016\u0014\u0007\u0018\u0010\u0011\u0005\u0001\u0004\u0016\u0002\uffc2\ufff1\ufff6\ufff0\uffeb\uffc2\uffe7\uffe5\uffe3\uffee\ufff2\uffe7\ufff4\uffc2\ufff4\ufff1\uffc2\ufff6\ufff4\uffe7\ufff5\ufff0\uffeb\uffcb\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffce\uffe1\uffca\uffc2\ufff5\uffe7\ufff7\uffee\uffe3\ufff8\uffc2\uffcb\u0002\u0016\u0010\u0017\u0011\u0005\u0001\u001b\u0014\u0016\u0007\u0014\u0002\uffce\u0002\u0007\u000f\u000b\u0016\u0001\u0015\u0015\u0007\u0005\u0005\u0017\u0015\u0001\u0007\u0016\u0003\u0018\u000b\u0016\u0005\u0003\u0002\uffce\u0002\u0007\u000f\u000b\u0016\u0001\u0010"

    invoke-static {v4, v0, v1, v2, v3}, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->unifiedDownload:I

    const/16 v2, 0x4b

    add-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x63

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 8

    .line 83
    nop

    .line 1
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList()J

    move-result-wide v2

    const/4 v0, 0x2

    invoke-interface {p1, v0, v2, v3}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 7
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-nez v2, :cond_2

    .line 52
    sget v2, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->addDownloadListener:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 8
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 52
    nop

    .line 8
    :goto_2
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 7
    :pswitch_0
    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 12
    :goto_3
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    const/16 v2, 0x21

    goto :goto_4

    :cond_3
    const/16 v2, 0x57

    :goto_4
    const/4 v4, 0x4

    packed-switch v2, :pswitch_data_1

    .line 15
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_5

    .line 12
    :pswitch_1
    nop

    .line 13
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 17
    :goto_5
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener()I

    move-result v2

    int-to-long v4, v2

    const/4 v2, 0x5

    invoke-interface {p1, v2, v4, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 18
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    if-nez v2, :cond_4

    .line 19
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 21
    :cond_4
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 23
    :goto_6
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    if-nez v2, :cond_5

    .line 24
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 26
    :cond_5
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 29
    :goto_7
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl()Z

    move-result v2

    int-to-long v4, v2

    const/16 v2, 0x8

    .line 30
    invoke-interface {p1, v2, v4, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 32
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl()Z

    move-result v2

    int-to-long v4, v2

    const/16 v2, 0x9

    .line 33
    invoke-interface {p1, v2, v4, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 34
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem()J

    move-result-wide v4

    const/16 v2, 0xa

    invoke-interface {p1, v2, v4, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 35
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount()J

    move-result-wide v4

    const/16 v2, 0xb

    invoke-interface {p1, v2, v4, v5}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 36
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc

    if-nez v2, :cond_6

    .line 37
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 39
    :cond_6
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    :goto_8
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->pause()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    if-nez v2, :cond_7

    .line 42
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 44
    :cond_7
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->pause()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :goto_9
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xe

    if-nez v2, :cond_8

    .line 47
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_b

    .line 49
    :cond_8
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 83
    sget v2, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->addDownloadListener:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_9

    .line 8
    const/16 v4, 0x3e

    goto :goto_a

    :cond_9
    nop

    :goto_a
    packed-switch v4, :pswitch_data_2

    .line 83
    :pswitch_2
    nop

    .line 51
    :goto_b
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x41

    if-nez v2, :cond_a

    .line 8
    const/16 v2, 0x43

    goto :goto_c

    :cond_a
    const/16 v2, 0x41

    :goto_c
    const/16 v5, 0x15

    const/16 v6, 0xf

    packed-switch v2, :pswitch_data_3

    .line 54
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_e

    .line 83
    :pswitch_3
    sget v2, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->unifiedDownload:I

    add-int/2addr v2, v5

    rem-int/lit16 v7, v2, 0x80

    sput v7, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->addDownloadListener:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_b

    const/16 v2, 0x5b

    .line 52
    invoke-interface {p1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_d

    .line 51
    :cond_b
    nop

    .line 52
    invoke-interface {p1, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 83
    :goto_d
    nop

    .line 56
    :goto_e
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    .line 8
    const/16 v2, 0x58

    goto :goto_f

    :cond_c
    const/16 v2, 0x4a

    :goto_f
    const/16 v6, 0x10

    packed-switch v2, :pswitch_data_4

    .line 59
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_10

    .line 83
    :pswitch_4
    sget v2, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v7, v2, 0x80

    sput v7, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->unifiedDownload:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_d

    .line 56
    :cond_d
    nop

    .line 57
    invoke-interface {p1, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 61
    :goto_10
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x11

    if-nez v2, :cond_e

    .line 62
    invoke-interface {p1, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_11

    .line 64
    :cond_e
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 83
    nop

    .line 66
    :goto_11
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x12

    if-nez v2, :cond_10

    .line 67
    invoke-interface {p1, v6}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 8
    sget v2, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->addDownloadListener:I

    add-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/convert/database/removeDownloadListener$removeDownloadListener;->unifiedDownload:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_f

    goto :goto_12

    :cond_f
    const/4 v1, 0x0

    :goto_12
    packed-switch v1, :pswitch_data_5

    goto :goto_13

    .line 83
    :pswitch_5
    goto :goto_13

    .line 69
    :cond_10
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 71
    :goto_13
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 8
    const/16 v0, 0x4e

    goto :goto_14

    :cond_11
    const/16 v0, 0x63

    :goto_14
    const/16 v1, 0x13

    packed-switch v0, :pswitch_data_6

    .line 71
    nop

    .line 72
    invoke-interface {p1, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_15

    .line 74
    :pswitch_6
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 76
    :goto_15
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x14

    invoke-interface {p1, v2, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 77
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->execute()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v5, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 78
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeDetailPage()J

    move-result-wide v0

    const/16 v2, 0x16

    invoke-interface {p1, v2, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 79
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->resolveUrl()J

    move-result-wide v0

    const/16 v2, 0x17

    invoke-interface {p1, v2, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 80
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK$1()J

    move-result-wide v0

    const/16 v2, 0x18

    invoke-interface {p1, v2, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 81
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->shouldTryHandlingAction()J

    move-result-wide v0

    const/16 v2, 0x19

    invoke-interface {p1, v2, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 82
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeReserveApp()J

    move-result-wide v0

    const/16 v2, 0x1a

    invoke-interface {p1, v2, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 83
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->performAction()I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x1b

    invoke-interface {p1, p2, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x43
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x58
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x63
        :pswitch_6
    .end packed-switch
.end method
