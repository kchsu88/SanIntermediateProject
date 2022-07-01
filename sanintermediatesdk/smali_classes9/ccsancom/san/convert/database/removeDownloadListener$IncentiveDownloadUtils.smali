.class Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;
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

.field private static addDownloadListener:[B

.field private static getDownloadStatusByUrl:I

.field private static getDownloadingList:[S

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    const v1, -0x4693758b

    sput v1, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:I

    const v1, -0x2c6ac7ce

    sput v1, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    const v1, -0x6a20bc83

    sput v1, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/16 v1, 0x214

    new-array v2, v1, [B

    const-string v3, "\u00ea\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0013\u00ed\u0017\u0008\u00cd\u000e\u00f0\t\u000b\u00eb6\u00f7\u00c9\u00ec\u0006\u00f9\u0006\u000c\u0004\u00e6\u0007\u00fe\u000f\u00f3\u00124\u00cc\u00fb\u00f8\u0004\u00f5\u0015\u00ec\u0000\u000e\u0002\u0000\u00ee\u0002\u0014\u00fa\u00f1\u0013\u00eb\r\u00f5\u0011\u0002\u00014\u00cc\u00fb\u00f8\u0004\u00f5\u0015\u00f1\u00ff\u0006\u00f5\u0011\u0002\u0002\u00fa\u00f1\u0013\u00eb\r\u00f5\u0011\u0002\u00014\u00cc\u00fb\u00f8\u0004\u00f5\u0015\u00fa\u00f1\u0013\u00fd\u00f4\u00fb\u0016\u00eb\u0001\u0012\u00f5\u000c4\u00cc\u00fb\u00f8\u0004\u00f5\u0015\u00ec\u0000\u000e\u0002\u0000\u00ee\u0002\u0014\u00f3\u0000\u000b\u00ed\u0001\u0005\u0005\t4\u00cc\u00fb\u00f8\u0004\u00f5\u0015\u00f1\u00ff\u0006\u00f5\u0011\u0002\u0002\u00f3\u0000\u000b\u00ed\u0001\u0005\u0005\t4\u00cc\u00ec\u0006\u00f9\u0006\u000c\u0004\u00fa\u00f3\u00fd\t\u0003\u0008\u00fb\u0007\u00fa\u00f1\u0013\u00eb\r\u00f5\u0011\u0002\u00014\u00cc\u00ec\u0006\u00f9\u0006\u000c\u0004\u00fa\u00f3\u00fd\t\u0003\u0008\u00fb\u0007\u00f3\u0000\u000b\u00ed\u0001\u0005\u0005\t4\u00cc\u00f2\u00ff\u0006\u00f5\u0011\u0002\u00014\u00cc\u00fb\u00f7\t\u0002\u00f0\u0014\u00ed\r\u00fe\u0000\u00fe\u00f7\u00fe\u00144\u00cc\u00fb\u00f1\u0013\u00ed\u0001\u0014\u00f4\u00f8\u0012\u00ed\u00144\u00cc\u00f8\u00f4\u0013\u00f1\u0011\u00fa\u00fe\u0006\u00f4\u0004\t4\u00cc\u00f8\u00f4\u0013\u00f1\u0011\u00f1\u00ff\u000c\u00fa\t4\u00cc\u00f2\u00ff\u0006\u00f5\u0004\u0007\u00f7\u000f\u00f0\u000e\u0001\u0005\u00fa\u00fe\u0006\u00f6\u0008\u0002\u00f1\u00104\u00cc\u00fb\u00f9\u00f8\u000b\u00f5\u0015\u00fa\u00fe\u0006\u00f6\u0008\u0002\u00f1\u00104\u00cc\u00fb\u00f8\u000c\u00f3\u000f\u00fa\u00fe\u0006\u00f6\u0008\u0002\u00f1\u00104\u00cc\u00ec\u0006\u00f9\u0006\u000c\u0004\u00eb\u000b\u00fc\u000b\u00ed\u0002\u00134\u00cc\u00fb\u00f8\u0004\u00f5\u0015\u00eb\u000b\u00fc\u000b\u00ed\u0002\u0014\u00eb\u0001\u0012\u00f5\u000c4\u00cc\u00fc\u00ff\u00f1\u0011\u00fe\u00f7\u0000\u00ff\u000c\u0004\u00f4\u00f9\u0003\u00f8\u0003\u000f\u00f7\u000f\u00eb\u0001\u000e\u00f0\u0004\u000c\u00f3\u00124\u00cc\u00ed\u0008\u00fb\u000f\u0002\u00ec\n\t4\u00cc\u00f4\u00fa\u00fd\u00154\u00cc\u00f4\u000b\u00ed\u0002\u0003\u00ff\u00104\u00cc\u00fb\u0001\u00f5\u000c\u0004\u00f1\u00ff\u0006\u00f6\u0001\r\u00ef\u00164\u00cc\u00f8\u00f4\u0013\u00f1\u0011\u00f4\u00fb\u000f\u00014\u00cc\u00fc\u00fb\n\u00fb\u0003\u00014\u00cc\u00fb\u00f8\u0004\u00f5\u0015\u00fa\u00f1\u0013\u00fc\u00f3\u000f\u00034\u00cc\u00fc\u00fb\n\u00f4\u00f8\u0012\u00ed\u00148\u0008\u00c0\u00ec\u0002\r\u00ef\u0008\u00ff\u000c\u0004\u00fd\u00ee\u0014@\u00d1\u00fb\u0006\u0005)\u00cc\u0002\u0003\r\u0001!\u00ce\u0003/\u00cc\u0002\r\u00f2\u0005\u0005"

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v2, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:[B

    return-void
.end method

.method constructor <init>(Lccsancom/san/convert/database/removeDownloadListener;Lccsanandroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lccsanandroidx/room/EntityInsertionAdapter;-><init>(Lccsanandroidx/room/RoomDatabase;)V

    return-void
.end method

.method private static IncentiveDownloadUtils(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/2addr p4, v2

    .line 1206
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p4, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1207
    :goto_0
    if-eqz v3, :cond_2

    .line 1209
    sget-object p4, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:[S

    sget v6, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/2addr v6, p0

    aget-short p4, p4, v6

    add-int/2addr p4, v2

    int-to-short p4, p4

    .line 1223
    :cond_2
    :goto_1
    if-lez p4, :cond_5

    .line 1226
    add-int/2addr p0, p4

    add-int/lit8 p0, p0, -0x2

    sget v2, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1231
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sput v5, Lccsansan/d/trackReportShow;->addDownloadListener:I

    :goto_2
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    if-ge p0, p4, :cond_5

    .line 1238
    sget-object p0, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:[B

    if-eqz p0, :cond_4

    .line 1240
    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-byte p0, p0, p1

    .line 1241
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-byte p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    goto :goto_3

    .line 1245
    :cond_4
    sget-object p0, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:[S

    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-short p0, p0, p1

    .line 1246
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-short p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1248
    :goto_3
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1249
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    add-int/2addr p0, v5

    sput p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    goto :goto_2

    .line 1253
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1254
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public synthetic bind(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    check-cast p2, Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {p0, p1, p2}, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsancom/san/convert/database/ConvertIntent;)V

    sget p1, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 7

    sget v0, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const v0, 0x6a20bc83

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    add-int/2addr v1, v0

    const v0, 0x2c6ac816

    const-string v2, ""

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    int-to-short v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v5}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    const v3, 0x469377a0    # 18875.812f

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v1, v0, v4, v2, v5}, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public unifiedDownload(Lccsanandroidx/sqlite/db/SupportSQLiteStatement;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 6

    .line 83
    nop

    .line 1
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    nop

    .line 2
    invoke-interface {p1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 4
    :pswitch_0
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 6
    :goto_1
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList()J

    move-result-wide v3

    const/4 v0, 0x2

    invoke-interface {p1, v0, v3, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 7
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 67
    const/16 v3, 0x1f

    goto :goto_2

    :cond_1
    const/16 v3, 0x22

    :goto_2
    const/4 v4, 0x3

    packed-switch v3, :pswitch_data_1

    .line 10
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3

    .line 7
    :pswitch_1
    nop

    .line 8
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 12
    :goto_3
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    if-nez v3, :cond_2

    .line 13
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 15
    :cond_2
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 67
    sget v3, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0x61

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/2addr v3, v0

    if-eqz v3, :cond_3

    .line 83
    :cond_3
    nop

    .line 17
    :goto_4
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x5

    invoke-interface {p1, v5, v3, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 18
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 67
    goto :goto_5

    :cond_4
    const/4 v1, 0x1

    :goto_5
    const/4 v2, 0x6

    packed-switch v1, :pswitch_data_2

    .line 21
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_6

    .line 18
    :pswitch_2
    nop

    .line 19
    invoke-interface {p1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 83
    nop

    .line 23
    :goto_6
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    if-nez v1, :cond_6

    .line 83
    sget v1, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_5

    const/16 v1, 0x52

    .line 24
    invoke-interface {p1, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 23
    :cond_5
    nop

    .line 24
    invoke-interface {p1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 26
    :cond_6
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 29
    :goto_7
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl()Z

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x8

    .line 30
    invoke-interface {p1, v3, v1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 32
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl()Z

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x9

    .line 33
    invoke-interface {p1, v3, v1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 34
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem()J

    move-result-wide v1

    const/16 v3, 0xa

    invoke-interface {p1, v3, v1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 35
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount()J

    move-result-wide v1

    const/16 v3, 0xb

    invoke-interface {p1, v3, v1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 36
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    const/16 v3, 0x13

    if-nez v1, :cond_8

    .line 67
    sget v1, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/2addr v1, v3

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_7

    .line 36
    :cond_7
    nop

    .line 37
    invoke-interface {p1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 83
    goto :goto_8

    .line 39
    :cond_8
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    :goto_8
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->pause()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    if-nez v1, :cond_9

    .line 42
    invoke-interface {p1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 44
    :cond_9
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->pause()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :goto_9
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    if-nez v1, :cond_a

    .line 47
    invoke-interface {p1, v2}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 83
    goto :goto_a

    .line 49
    :cond_a
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :goto_a
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 67
    const/16 v1, 0x33

    goto :goto_b

    :cond_b
    const/16 v1, 0x2c

    :goto_b
    const/16 v4, 0xf

    packed-switch v1, :pswitch_data_3

    .line 54
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_c

    .line 67
    :pswitch_3
    sget v1, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/2addr v1, v3

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_c

    .line 51
    :cond_c
    nop

    .line 52
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 56
    :goto_c
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    if-nez v1, :cond_d

    .line 57
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_d

    .line 59
    :cond_d
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :goto_d
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11

    if-nez v1, :cond_e

    .line 62
    invoke-interface {p1, v4}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_e

    .line 64
    :cond_e
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 66
    :goto_e
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    .line 67
    const/16 v2, 0x47

    goto :goto_f

    :cond_f
    nop

    :goto_f
    const/16 v1, 0x12

    packed-switch v2, :pswitch_data_4

    .line 24
    sget v2, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/convert/database/removeDownloadListener$IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_10

    goto :goto_10

    .line 69
    :pswitch_4
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_11

    .line 24
    :goto_10
    const/16 v0, 0x4a

    .line 67
    invoke-interface {p1, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_11

    .line 66
    :cond_10
    nop

    .line 67
    invoke-interface {p1, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 71
    :goto_11
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 72
    invoke-interface {p1, v3}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_12

    .line 74
    :cond_11
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 76
    :goto_12
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveSDK()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x14

    invoke-interface {p1, v2, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 77
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->execute()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x15

    invoke-interface {p1, v2, v0, v1}, Lccsanandroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

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
    .packed-switch 0x1f
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x33
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe
        :pswitch_4
    .end packed-switch
.end method
