.class public Lccsansan/m/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:Ljava/lang/String;

.field private static final addDownloadListener:Ljava/lang/String;

.field private static final deleteDownItem:Ljava/lang/String;

.field private static deleteDownList:J

.field private static final getDownloadStatusByUrl:Ljava/lang/String;

.field private static final getDownloadedCount:Ljava/lang/String;

.field private static final getDownloadedList:Ljava/lang/String;

.field private static final getDownloadedRecordByUrl:Ljava/lang/String;

.field private static getDownloadingCount:C

.field private static final getDownloadingList:Ljava/lang/String;

.field private static final getDownloadingRecordByUrl:Ljava/lang/String;

.field private static pause:I

.field private static final removeDownloadListener:Ljava/lang/String;

.field private static resume:I

.field private static trackReportShow:I

.field private static final unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    sput v0, Lccsansan/m/deleteDownItem;->pause:I

    const/4 v1, 0x1

    sput v1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    invoke-static {}, Lccsansan/m/deleteDownItem;->addDownloadListener()V

    .line 1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "pkg"

    aput-object v4, v3, v0

    const-string v5, "show_ts"

    aput-object v5, v3, v1

    const/4 v6, 0x2

    aput-object v5, v3, v6

    const-string v7, "%s = ? and (%s >= ? or %s = ?)"

    invoke-static {v2, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccsansan/m/deleteDownItem;->unifiedDownload:Ljava/lang/String;

    .line 2
    new-array v3, v6, [Ljava/lang/Object;

    const-string v7, "titles"

    aput-object v7, v3, v0

    aput-object v5, v3, v1

    const-string v5, "%s LIKE ? and %s >= ?"

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccsansan/m/deleteDownItem;->getDownloadingList:Ljava/lang/String;

    .line 3
    new-array v3, v6, [Ljava/lang/Object;

    const-string v5, "id"

    aput-object v5, v3, v0

    aput-object v4, v3, v1

    const-string v5, "%s = ? and %s = ?"

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccsansan/m/deleteDownItem;->addDownloadListener:Ljava/lang/String;

    .line 4
    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "_id"

    aput-object v5, v3, v0

    const-string v5, "%s = ?"

    invoke-static {v5, v3}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccsansan/m/deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    .line 7
    new-array v3, v6, [Ljava/lang/Object;

    const-string v7, "pkgName"

    aput-object v7, v3, v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    int-to-char v8, v8

    const v9, -0x344cb6ed    # -2.3499302E7f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    sub-int/2addr v9, v10

    const-string v10, "\u480f\u21a8\u9b59\u5461\ub4ef\ucc90\u1745\u612a\u34ef\u49b2\u81e4"

    const-string v11, "\u0000\u0000\u0000\u0000"

    const-string v12, "\u1350\ub349\u58cb\u1f05"

    invoke-static {v10, v11, v8, v9, v12}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v1

    const-string v8, "%s = ? or %s = ?"

    invoke-static {v2, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 8
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v7, v3, v0

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccsansan/m/deleteDownItem;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 9
    new-array v3, v1, [Ljava/lang/Object;

    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v9

    add-int/2addr v9, v1

    int-to-char v9, v9

    const v13, -0x344cb6ec    # -2.3499304E7f

    const/16 v14, 0x30

    const-string v15, ""

    invoke-static {v15, v14}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v14

    add-int/2addr v14, v13

    invoke-static {v10, v11, v9, v14, v12}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v0

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccsansan/m/deleteDownItem;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 10
    new-array v3, v1, [Ljava/lang/Object;

    const-string v9, "status"

    aput-object v9, v3, v0

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccsansan/m/deleteDownItem;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 11
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v9, v3, v0

    const-string v9, "%s <> ?"

    invoke-static {v2, v9, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccsansan/m/deleteDownItem;->deleteDownItem:Ljava/lang/String;

    .line 12
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v7, v3, v0

    const-string v7, "track_urls"

    aput-object v7, v3, v1

    invoke-static {v2, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    new-array v3, v1, [Ljava/lang/Object;

    const-string v7, "name"

    aput-object v7, v3, v0

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccsansan/m/deleteDownItem;->getDownloadedList:Ljava/lang/String;

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-static {v2, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/m/deleteDownItem;->getDownloadedCount:Ljava/lang/String;

    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr v0, v6

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addDownloadListener(Lccsanandroid/database/Cursor;)Lccsansan/m/getDownloadedList;
    .locals 11

    .line 69
    nop

    .line 46
    new-instance v0, Lccsansan/m/getDownloadedList;

    invoke-direct {v0}, Lccsansan/m/getDownloadedList;-><init>()V

    .line 47
    const-string v1, "pkgName"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 48
    const-string v1, "versionCode"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    .line 49
    const-string v1, "versionName"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    const-string v1, ""

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    int-to-char v1, v1

    const v4, -0x344cb6bd    # -2.3499398E7f

    invoke-static {v2}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    sub-int/2addr v4, v2

    const-string v2, "\u480f\u21a8\u9b59\u5461\ub4ef\ucc90\u1745\u612a\u34ef\u49b2\u81e4"

    const-string v5, "\u0000\u0000\u0000\u0000"

    const-string v6, "\u1350\ub349\u58cb\u1f05"

    invoke-static {v2, v5, v1, v4, v6}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    .line 51
    const-string v1, "portal"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    .line 52
    const-string v1, "name"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    .line 53
    const-string v1, "track_urls"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->resume:Ljava/lang/String;

    .line 54
    const-string v1, "fileSize"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    .line 55
    const-string v1, "status"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccsansan/m/getDownloadedList;->execute:I

    .line 56
    const-string v1, "report_time"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    .line 59
    const-string v1, "trackTime"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 60
    const-string v1, "trackStatus"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    .line 61
    const-string v1, "imUrls"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->pause:Ljava/lang/String;

    .line 62
    const-string v1, "impTrackStatus"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccsansan/m/getDownloadedList;->IncentiveSDK:I

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const-string v8, "\u398b\uec8b\u317d\u83ea\uaa37\u7c43\u1e98\u3bdf\u0a42"

    const-string v9, "\u2158\u3c6f\uebe1\ub24e"

    cmp-long v10, v1, v6

    rsub-int/lit8 v1, v10, 0x1

    int-to-char v1, v1

    const v2, -0x1ec390df

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v2

    invoke-static {v8, v5, v1, v6, v9}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 63
    const/4 v4, 0x1

    goto :goto_2

    .line 69
    :pswitch_0
    sget v1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 63
    :cond_1
    nop

    .line 69
    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 63
    :goto_2
    :pswitch_1
    iput-boolean v4, v0, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    .line 64
    const-string v1, "adId"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    .line 65
    const-string v1, "subPortal"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v1

    int-to-byte v1, v1

    add-int/2addr v1, v3

    int-to-char v1, v1

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    const/4 v4, 0x0

    const-string v6, "\u2016\ub352\u7da3\u730f\u6ddc\u78a9\u4156\u7d85\u6e7a\ufab3"

    const-string v7, "\u7252\u00ff\u0cf0\u4f3f"

    const-string v8, "extra"

    const-string v9, "portalStr"

    cmpl-float v2, v2, v4

    sub-int/2addr v3, v2

    invoke-static {v6, v5, v1, v3, v7}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    .line 67
    invoke-interface {p1, v8}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    .line 69
    invoke-interface {p1, v9}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lccsansan/m/deleteDownItem;->deleteDownList:J

    const v0, 0xc57c

    sput-char v0, Lccsansan/m/deleteDownItem;->getDownloadingCount:C

    const/4 v0, 0x0

    sput v0, Lccsansan/m/deleteDownItem;->resume:I

    return-void
.end method

.method private addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4

    .line 4
    nop

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    const/4 p2, 0x1

    aput-object p3, v2, p2

    .line 2
    new-instance p3, Lccsanandroid/content/ContentValues;

    invoke-direct {p3}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "show_ts"

    .line 3
    :try_start_1
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, v3, p4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p4, "adinfo"

    .line 4
    :try_start_2
    sget-object p5, Lccsansan/m/deleteDownItem;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p4, p3, p5, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lez p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/16 p1, 0x53

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr p1, v0

    add-int/lit8 p3, p3, 0x1f

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr p3, v0

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_1

    :pswitch_0
    const/4 v1, 0x1

    :pswitch_1
    return v1

    :catch_0
    move-exception p1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList(Lccsanandroid/database/Cursor;)Lccsansan/m/removeDownloadListener;
    .locals 37

    .line 84
    move-object/from16 v1, p1

    const-string v0, ""

    const-string v2, "\u0000\u0000\u0000\u0000"

    .line 0
    :try_start_0
    const-string v4, "id"

    .line 25
    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "pkg"

    .line 26
    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v4, "title"

    .line 27
    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v4, "description"

    .line 28
    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v4, "icon_path"

    .line 29
    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v4, "image_path"

    .line 30
    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v4, "click_status"

    .line 31
    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v4, "\u1961\ufc40\u8e93\u697e\u3e7a\u0a46\u06bb\ucc07\ufbdf\ue2c5\u6616\uf964\u176d\udd94"

    const v5, 0xbc21

    const/4 v13, 0x0

    invoke-static {v13}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v14

    sub-int/2addr v5, v14

    int-to-char v5, v5

    const/16 v14, 0x30

    invoke-static {v14}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v15

    rsub-int/lit8 v15, v15, 0x30

    const-string v3, "\u27ff\u9a5a\u21a9\u23bc"

    invoke-static {v4, v2, v5, v15, v3}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "show_ts"

    .line 33
    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v15, "click_ts"

    .line 34
    invoke-interface {v1, v15}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v15}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const-string v13, "\u7de0\ub19c\u51e6\ud43a\u1ccf\ud43d\u2211\ue931\uf356\u84ef"

    invoke-static {v0}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    add-int/lit8 v14, v18, 0x1

    int-to-char v14, v14

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v18

    move/from16 v21, v3

    shr-int/lit8 v3, v18, 0x8

    move/from16 v18, v12

    const-string v12, "\u230d\ua9ac\uc70a\u8717"

    invoke-static {v13, v2, v14, v3, v12}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-string v3, "supplement_ts"

    .line 36
    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const-string v3, "\u5882\u7849\u8649\u0e29\u5418\u884d\u5765\ud374\uaa99\u331f\u15b6"

    const/16 v14, 0x30

    invoke-static {v0, v14}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x1

    int-to-char v0, v0

    const v14, 0x4c897838    # 7.2073664E7f

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v20

    shr-int/lit8 v20, v20, 0x16

    sub-int v14, v14, v20

    move-object/from16 v20, v11

    const-string v11, "\u3822\u8978\u5c4c\ua491"

    invoke-static {v3, v2, v0, v14, v11}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v0, "placement_id"

    .line 39
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v0, "pid"

    .line 40
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const-string v0, "creative_id"

    .line 41
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const-string v0, "format_id"

    .line 42
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const-string v0, "ad_net"

    .line 43
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const-string v0, "source_type"

    .line 44
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    const-string v0, "down_id"

    .line 45
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    const-string v0, "did"

    .line 47
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v0, "cpiparam"

    .line 48
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 50
    move-object/from16 v24, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    :try_start_1
    const-string v0, "effect_urls"

    .line 52
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 53
    move-object/from16 v25, v11

    :try_start_2
    new-instance v11, Lccsanorg/json/JSONArray;

    invoke-direct {v11, v0}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x0

    .line 54
    :goto_0
    move-object/from16 v33, v10

    :try_start_3
    invoke-virtual {v11}, Lccsanorg/json/JSONArray;->length()I

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-ge v0, v10, :cond_1

    .line 66
    sget v10, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v10, v10, 0x23

    move-object/from16 v34, v9

    rem-int/lit16 v9, v10, 0x80

    sput v9, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_0

    .line 55
    const/16 v9, 0xa

    goto :goto_1

    :cond_0
    const/16 v9, 0x42

    :goto_1
    packed-switch v9, :pswitch_data_0

    :try_start_4
    invoke-virtual {v11, v0}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :pswitch_0
    invoke-virtual {v11, v0}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :goto_2
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    add-int/lit8 v0, v0, 0x29

    :goto_3
    move-object/from16 v10, v33

    move-object/from16 v9, v34

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    .line 54
    :cond_1
    move-object/from16 v34, v9

    goto :goto_4

    .line 55
    :catch_1
    move-exception v0

    move-object/from16 v34, v9

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v34, v9

    move-object/from16 v33, v10

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v34, v9

    move-object/from16 v33, v10

    move-object/from16 v25, v11

    .line 59
    :goto_4
    :try_start_5
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    :try_start_6
    const-string v0, "click_urls"

    .line 63
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v9, Lccsanorg/json/JSONArray;

    invoke-direct {v9, v0}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 55
    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v10, v0, 0x80

    sput v10, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 84
    :cond_2
    const/4 v0, 0x0

    .line 65
    :goto_5
    :try_start_7
    invoke-virtual {v9}, Lccsanorg/json/JSONArray;->length()I

    move-result v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    if-ge v0, v10, :cond_3

    .line 55
    const/16 v10, 0x41

    goto :goto_6

    :cond_3
    const/16 v10, 0x12

    :goto_6
    packed-switch v10, :pswitch_data_1

    .line 75
    sget v10, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v10, v10, 0x63

    move-object/from16 v36, v14

    rem-int/lit16 v14, v10, 0x80

    sput v14, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_4

    goto :goto_7

    .line 55
    :pswitch_1
    move-object/from16 v36, v14

    goto :goto_b

    :goto_7
    const/4 v10, 0x1

    goto :goto_8

    :cond_4
    const/4 v10, 0x0

    :goto_8
    packed-switch v10, :pswitch_data_2

    .line 66
    :try_start_8
    invoke-virtual {v9, v0}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    :pswitch_2
    invoke-virtual {v9, v0}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :goto_9
    move-object/from16 v14, v36

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_b

    :goto_a
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    add-int/lit8 v0, v0, 0xe

    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v36, v14

    .line 70
    :goto_b
    :try_start_9
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    :try_start_a
    const-string v0, "titles"

    .line 72
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v9, Lccsanorg/json/JSONArray;

    invoke-direct {v9, v0}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 75
    sget v0, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v10, v0, 0x80

    sput v10, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    .line 74
    const/4 v0, 0x0

    :goto_c
    :try_start_b
    invoke-virtual {v9}, Lccsanorg/json/JSONArray;->length()I

    move-result v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    if-ge v0, v10, :cond_6

    .line 84
    sget v10, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v10, v10, 0x69

    move-object/from16 v17, v11

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_5

    .line 75
    :try_start_c
    invoke-virtual {v9, v0}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x6

    goto :goto_d

    :cond_5
    invoke-virtual {v9, v0}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    add-int/lit8 v0, v0, 0x1

    :goto_d
    move-object/from16 v11, v17

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_e

    .line 74
    :cond_6
    move-object/from16 v17, v11

    goto :goto_e

    .line 75
    :catch_7
    move-exception v0

    move-object/from16 v17, v11

    :goto_e
    :try_start_d
    const-string v0, "referrer"

    .line 79
    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, "extra"

    .line 80
    invoke-interface {v1, v9}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    new-instance v11, Lccsansan/m/removeDownloadListener;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v5, v11

    move-object/from16 v9, v34

    move-object/from16 v10, v33

    move-object v13, v11

    move-object/from16 v22, v17

    move-object/from16 v3, v25

    move-object/from16 v11, v20

    move/from16 v12, v18

    move-object/from16 p1, v13

    move/from16 v13, v21

    move-object/from16 v33, v3

    move-object/from16 v18, v14

    move-object/from16 v3, v24

    move-object/from16 v20, v36

    move-object v14, v4

    move-object/from16 v17, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v22

    move-object/from16 v21, v35

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    invoke-direct/range {v5 .. v24}, Lccsansan/m/removeDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 83
    move-object/from16 v25, p1

    :try_start_e
    invoke-virtual/range {v25 .. v32}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 84
    move-object/from16 v2, p1

    move-object/from16 v1, v33

    :try_start_f
    invoke-virtual {v2, v3, v1}, Lccsansan/m/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    goto :goto_f

    :catch_9
    move-exception v0

    move-object/from16 v2, p1

    :goto_f
    move-object v3, v2

    goto :goto_10

    :catch_a
    move-exception v0

    const/4 v3, 0x0

    :goto_10
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private removeDownloadListener(Lccsanandroid/database/Cursor;)V
    .locals 3

    .line 82
    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x58

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 0
    :pswitch_0
    if-eqz p1, :cond_1

    .line 82
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_1
    packed-switch v2, :pswitch_data_1

    :cond_2
    :goto_2
    goto :goto_4

    :goto_3
    const/16 v1, 0x35

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    :pswitch_1
    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    :cond_3
    :try_start_1
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_2

    :goto_4
    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    const/16 p1, 0x13

    goto :goto_5

    :cond_4
    const/16 p1, 0x34

    :goto_5
    packed-switch p1, :pswitch_data_2

    goto :goto_6

    :pswitch_2
    return-void

    :goto_6
    const/4 p1, 0x0

    :try_start_2
    array-length p1, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x34
        :pswitch_2
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
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

    sget-wide v5, Lccsansan/m/deleteDownItem;->deleteDownList:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/m/deleteDownItem;->resume:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/m/deleteDownItem;->getDownloadingCount:C

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
.method public IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/m/getDownloadedList;",
            ">;"
        }
    .end annotation

    .line 254
    const-string v0, "\u0000\u0000\u0000\u0000"

    const-string v1, ""

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v9, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lccsansan/m/getDownloadedList$unifiedDownload;->AZ_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v6}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    aput-object v5, v9, v13

    .line 188
    sget-object v8, Lccsansan/m/deleteDownItem;->getDownloadStatusByUrl:Ljava/lang/String;

    const-string v6, "cpi_report"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 190
    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 191
    :try_start_1
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v6, 0x30

    if-nez v5, :cond_0

    .line 223
    const/16 v5, 0xb

    goto :goto_0

    :cond_0
    const/16 v5, 0x30

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 254
    :pswitch_0
    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 223
    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    packed-switch v4, :pswitch_data_1

    :try_start_2
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    :pswitch_1
    return-object v2

    :catchall_0
    move-exception p1

    throw p1

    .line 224
    :cond_2
    :goto_2
    :try_start_3
    new-instance v3, Lccsansan/m/getDownloadedList;

    invoke-direct {v3}, Lccsansan/m/getDownloadedList;-><init>()V

    const-string v5, "pkgName"

    .line 225
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    const-string v5, "versionCode"

    .line 226
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    const-string v5, "versionName"

    .line 227
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    const-string v5, "\u480f\u21a8\u9b59\u5461\ub4ef\ucc90\u1745\u612a\u34ef\u49b2\u81e4"

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    int-to-char v7, v7

    const v8, -0x344cb6ed    # -2.3499302E7f

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v9

    sub-int/2addr v8, v9

    const-string v9, "\u1350\ub349\u58cb\u1f05"

    invoke-static {v5, v0, v7, v8, v9}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    const-string v5, "portal"

    .line 229
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    const-string v5, "name"

    .line 230
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    const-string v5, "track_urls"

    .line 231
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lccsansan/m/getDownloadedList;->resume:Ljava/lang/String;

    const-string v5, "fileSize"

    .line 232
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v3, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    const-string v5, "status"

    .line 233
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lccsansan/m/getDownloadedList;->execute:I

    const-string v5, "report_time"

    .line 234
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v3, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    const-string v5, "trackTime"

    .line 237
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v3, Lccsansan/m/getDownloadedList;->deleteDownList:J

    const-string v5, "trackStatus"

    .line 238
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    const-string v5, "imUrls"

    .line 239
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lccsansan/m/getDownloadedList;->pause:Ljava/lang/String;

    const-string v5, "impTrackStatus"

    .line 240
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lccsansan/m/getDownloadedList;->IncentiveSDK:I

    const-string v5, "\u398b\uec8b\u317d\u83ea\uaa37\u7c43\u1e98\u3bdf\u0a42"

    invoke-static {v1, v6}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    add-int/2addr v7, v4

    int-to-char v7, v7

    const v8, -0x1ec390df

    invoke-static {v13, v13, v13}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    sub-int/2addr v8, v9

    const-string v9, "\u2158\u3c6f\uebe1\ub24e"

    invoke-static {v5, v0, v7, v8, v9}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_3

    .line 223
    const/16 v5, 0x13

    goto :goto_3

    :cond_3
    const/16 v5, 0x63

    :goto_3
    packed-switch v5, :pswitch_data_2

    sget v5, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v5, v5, 0x65

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    goto :goto_4

    .line 241
    :pswitch_2
    const/4 v5, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    nop

    .line 254
    const/4 v5, 0x1

    .line 241
    :goto_5
    :try_start_4
    iput-boolean v5, v3, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    const-string v5, "adId"

    .line 242
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    const-string v5, "subPortal"

    .line 243
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    const-string v5, "\u2016\ub352\u7da3\u730f\u6ddc\u78a9\u4156\u7d85\u6e7a\ufab3"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-char v7, v7

    invoke-static {v1}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v4

    const-string v9, "\u7252\u00ff\u0cf0\u4f3f"

    invoke-static {v5, v0, v7, v8, v9}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    const-string v5, "extra"

    .line 245
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    const-string v5, "portalStr"

    .line 247
    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    .line 248
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v3, :cond_2

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v3, p1

    goto :goto_6

    .line 252
    :catch_0
    move-exception v0

    move-object v3, p1

    goto :goto_7

    .line 249
    :catchall_2
    move-exception v0

    .line 252
    :goto_6
    invoke-direct {p0, v3}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    throw v0

    :catch_1
    move-exception p1

    :goto_7
    move-object p1, v3

    .line 254
    :goto_8
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_2
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(ILccsanandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4

    .line 14
    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "track_urls"

    packed-switch v0, :pswitch_data_0

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 13
    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 14
    sget-object p1, Lccsansan/m/deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p2, v3, p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    :goto_2
    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_6

    .line 13
    :goto_3
    new-array v0, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 14
    sget-object p1, Lccsansan/m/deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p2, v3, p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lccsanandroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    const/16 p1, 0x20

    goto :goto_4

    :cond_2
    const/16 p1, 0xd

    :goto_4
    packed-switch p1, :pswitch_data_2

    goto :goto_2

    :pswitch_1
    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_6

    :goto_5
    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p2, p1, 0x1b

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_3

    :cond_3
    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v1, 0x1

    :goto_6
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd
        :pswitch_1
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4

    .line 261
    nop

    .line 255
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 261
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 255
    goto :goto_5

    .line 258
    :pswitch_0
    sget-object v1, Lccsansan/m/deleteDownItem;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 259
    new-array v3, v2, [Ljava/lang/String;

    aput-object p2, v3, v0

    const-string p2, "cpi_report"

    .line 260
    invoke-virtual {p1, p2, v1, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "CPIDbHelper"

    .line 261
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteCpiReportInfoByPkg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lez p1, :cond_1

    const/16 p1, 0x16

    goto :goto_1

    :cond_1
    const/16 p1, 0x4f

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x1

    :goto_2
    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/16 p1, 0x48

    goto :goto_3

    :cond_2
    const/16 p1, 0x4b

    :goto_3
    packed-switch p1, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    return v0

    :goto_4
    const/4 p1, 0x0

    :try_start_2
    array-length p1, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    throw p1

    :goto_5
    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/16 p1, 0xa

    goto :goto_6

    :cond_3
    const/4 p1, 0x7

    :goto_6
    packed-switch p1, :pswitch_data_3

    return v0

    :pswitch_3
    const/16 p1, 0x21

    :try_start_3
    div-int/2addr p1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    throw p1

    :catch_0
    move-exception p1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4b
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_3
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4

    .line 4
    nop

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    const/4 p2, 0x1

    aput-object p3, v2, p2

    .line 2
    new-instance p3, Lccsanandroid/content/ContentValues;

    invoke-direct {p3}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "supplement_ts"

    .line 3
    :try_start_1
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, v3, p4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p4, "adinfo"

    .line 4
    :try_start_2
    sget-object p5, Lccsansan/m/deleteDownItem;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p4, p3, p5, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lez p1, :cond_1

    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x1

    :cond_1
    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_2

    const/16 p1, 0x1c

    goto :goto_1

    :cond_2
    const/16 p1, 0x62

    :goto_1
    packed-switch p1, :pswitch_data_1

    return v1

    :pswitch_1
    const/4 p1, 0x0

    :try_start_3
    array-length p1, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    move-exception p1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    .line 61
    nop

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    aput-object p2, v2, v0

    const/4 p2, 0x1

    aput-object p3, v2, p2

    .line 55
    new-instance p3, Lccsanandroid/content/ContentValues;

    invoke-direct {p3}, Lccsanandroid/content/ContentValues;-><init>()V

    const-string v3, "pid"

    .line 56
    invoke-virtual {p3, v3, p4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "source_type"

    .line 57
    invoke-virtual {p3, p4, p5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "did"

    .line 58
    invoke-virtual {p3, p4, p6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "cpiparam"

    .line 59
    invoke-virtual {p3, p4, p7}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "extra"

    .line 60
    invoke-virtual {p3, p4, p8}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p4, "adinfo"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :try_start_2
    sget-object p5, Lccsansan/m/deleteDownItem;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p4, p3, p5, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez p1, :cond_0

    const/16 p1, 0x2c

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e

    :goto_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    :pswitch_0
    :try_start_3
    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_1

    :cond_1
    add-int/lit8 p3, p3, 0x6d

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr p3, v1

    if-eqz p3, :cond_2

    :cond_2
    const/4 p1, 0x1

    :goto_1
    sget p3, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p3, p3, 0x79

    rem-int/lit16 p4, p3, 0x80

    sput p4, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr p3, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    :cond_3
    packed-switch v0, :pswitch_data_1

    monitor-exit p0

    return p1

    :pswitch_1
    const/4 p2, 0x0

    :try_start_4
    array-length p2, p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 53
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 61
    :catch_0
    move-exception p1

    monitor-exit p0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/m/getDownloadedList;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    .line 183
    sget v2, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/m/deleteDownItem;->trackReportShow:I

    const/4 v11, 0x2

    rem-int/2addr v2, v11

    const/16 v3, 0x9

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v2, :cond_1

    .line 83
    invoke-static/range {p1 .. p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 89
    :try_start_0
    iget-object v2, v10, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_2

    .line 177
    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 181
    :catch_0
    move-exception v0

    goto/16 :goto_f

    .line 83
    :cond_1
    invoke-static/range {p1 .. p1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 89
    :try_start_1
    iget-object v2, v10, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_0
    :try_start_2
    iget-object v4, v10, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    .line 136
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget v4, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v4, v4, 0x73

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v4, v11

    if-nez v4, :cond_3

    .line 90
    :cond_3
    :try_start_3
    iget-object v4, v10, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_5

    .line 89
    sget v0, Lccsansan/m/deleteDownItem;->pause:I

    add-int/2addr v0, v3

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v0, v11

    if-nez v0, :cond_4

    .line 136
    invoke-direct {v1, v12}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    :try_start_4
    invoke-super {v12}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v2

    .line 89
    :catchall_1
    move-exception v0

    move-object v2, v0

    throw v2

    .line 136
    :cond_4
    invoke-direct {v1, v12}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    return v2

    .line 137
    :cond_5
    :try_start_5
    sget-object v3, Lccsansan/m/deleteDownItem;->getDownloadedList:Ljava/lang/String;

    .line 138
    new-array v4, v13, [Ljava/lang/String;

    iget-object v5, v10, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    aput-object v5, v4, v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 183
    sget v5, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v5, v5, 0x5b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v5, v11

    goto/16 :goto_7

    .line 181
    :catch_1
    move-exception v0

    move v13, v2

    goto/16 :goto_f

    .line 89
    :cond_6
    const/4 v2, 0x0

    .line 139
    :goto_2
    :try_start_6
    iget-object v4, v10, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 136
    const/16 v4, 0x4d

    goto :goto_3

    :cond_7
    const/16 v4, 0x33

    :goto_3
    packed-switch v4, :pswitch_data_1

    .line 139
    iget-object v4, v10, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v4, :cond_9

    .line 140
    :try_start_7
    sget-object v3, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 141
    new-array v4, v11, [Ljava/lang/String;

    iget-object v5, v10, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    aput-object v5, v4, v14

    iget-object v5, v10, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    aput-object v5, v4, v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 136
    sget v5, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v5, v5, 0x55

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr v5, v11

    if-eqz v5, :cond_8

    .line 183
    :cond_8
    :goto_4
    move v15, v2

    move-object v5, v3

    move-object v6, v4

    goto :goto_9

    .line 142
    :cond_9
    :pswitch_1
    :try_start_8
    iget-object v4, v10, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v4, :cond_a

    .line 136
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    const/4 v4, 0x1

    :goto_5
    packed-switch v4, :pswitch_data_2

    .line 183
    sget v4, Lccsansan/m/deleteDownItem;->pause:I

    add-int/2addr v4, v13

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v4, v11

    if-nez v4, :cond_b

    :try_start_9
    iget-object v3, v10, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-super {v12}, Ljava/lang/Object;->hashCode()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_d

    goto :goto_8

    .line 142
    :cond_b
    :try_start_a
    iget-object v4, v10, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v4, :cond_c

    .line 136
    goto :goto_6

    :cond_c
    const/16 v3, 0x41

    :goto_6
    packed-switch v3, :pswitch_data_3

    goto :goto_8

    .line 146
    :cond_d
    :pswitch_2
    :try_start_b
    sget-object v3, Lccsansan/m/deleteDownItem;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 147
    new-array v4, v13, [Ljava/lang/String;

    iget-object v5, v10, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    aput-object v5, v4, v14
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_7
    move v15, v2

    move-object v5, v3

    move-object v6, v4

    goto :goto_9

    .line 143
    :goto_8
    :try_start_c
    sget-object v3, Lccsansan/m/deleteDownItem;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 144
    new-array v4, v13, [Ljava/lang/String;

    iget-object v5, v10, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    aput-object v5, v4, v14
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_4

    .line 147
    :goto_9
    :try_start_d
    const-string v3, "cpi_report"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 150
    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 151
    :try_start_e
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_12

    .line 152
    new-instance v3, Lccsanandroid/content/ContentValues;

    invoke-direct {v3}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const-string v4, "pkgName"

    .line 153
    :try_start_f
    iget-object v5, v10, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    const v5, -0x344cb6ed    # -2.3499302E7f

    const-string v6, ""

    invoke-static {v6, v14}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v7

    add-int/2addr v7, v5

    const-string v5, "\u480f\u21a8\u9b59\u5461\ub4ef\ucc90\u1745\u612a\u34ef\u49b2\u81e4"

    const-string v8, "\u0000\u0000\u0000\u0000"

    const-string v9, "\u1350\ub349\u58cb\u1f05"

    invoke-static {v5, v8, v4, v7, v9}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 154
    :try_start_10
    iget-object v5, v10, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const-string v4, "versionCode"

    .line 155
    :try_start_11
    iget v5, v10, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    const-string v4, "versionName"

    .line 156
    :try_start_12
    iget-object v5, v10, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    const-string v4, "portal"

    .line 157
    :try_start_13
    iget v5, v10, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    const-string v4, "name"

    .line 158
    :try_start_14
    iget-object v5, v10, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    const-string v4, "track_urls"

    .line 159
    :try_start_15
    iget-object v5, v10, Lccsansan/m/getDownloadedList;->resume:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    const-string v4, "fileSize"

    .line 160
    :try_start_16
    iget-wide v12, v10, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    const-string v4, "status"

    .line 161
    :try_start_17
    iget v9, v10, Lccsansan/m/getDownloadedList;->execute:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    const-string v4, "report_time"

    .line 162
    :try_start_18
    iget-wide v12, v10, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    const-string v4, "trackTime"

    .line 164
    :try_start_19
    iget-wide v12, v10, Lccsansan/m/getDownloadedList;->deleteDownList:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    const-string v4, "trackStatus"

    .line 165
    :try_start_1a
    iget v9, v10, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    const-string v4, "imUrls"

    .line 166
    :try_start_1b
    iget-object v9, v10, Lccsansan/m/getDownloadedList;->pause:Ljava/lang/String;

    invoke-virtual {v3, v4, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    const-string v4, "impTrackStatus"

    .line 167
    :try_start_1c
    iget v9, v10, Lccsansan/m/getDownloadedList;->IncentiveSDK:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    const v9, -0x1ec390e0

    const/16 v12, 0x30

    invoke-static {v6, v12, v14, v14}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v12

    sub-int/2addr v9, v12

    const-string v12, "\u398b\uec8b\u317d\u83ea\uaa37\u7c43\u1e98\u3bdf\u0a42"

    const-string v13, "\u2158\u3c6f\uebe1\ub24e"

    invoke-static {v12, v8, v4, v9, v13}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 168
    :try_start_1d
    iget-boolean v9, v10, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_2
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    if-eqz v9, :cond_f

    .line 183
    sget v9, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v9, v9, 0x71

    rem-int/lit16 v12, v9, 0x80

    sput v12, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr v9, v11

    if-eqz v9, :cond_e

    .line 168
    :cond_e
    const/4 v9, 0x1

    goto :goto_a

    :cond_f
    const/4 v9, 0x0

    :goto_a
    :try_start_1e
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_2
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    const-string v4, "adId"

    .line 169
    :try_start_1f
    iget-object v9, v10, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v3, v4, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_2
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    const-string v4, "subPortal"

    .line 170
    :try_start_20
    iget-object v9, v10, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v3, v4, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    invoke-static {v6}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v14, v14}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v6

    const-string v9, "\u2016\ub352\u7da3\u730f\u6ddc\u78a9\u4156\u7d85\u6e7a\ufab3"

    const-string v12, "\u7252\u00ff\u0cf0\u4f3f"

    invoke-static {v9, v8, v4, v6, v12}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 171
    :try_start_21
    iget-object v6, v10, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    const-string v4, "portalStr"

    .line 172
    :try_start_22
    iget-object v6, v10, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_2
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    const-string v4, "extra"

    .line 173
    :try_start_23
    iget-object v6, v10, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cpi_report"

    .line 174
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_2
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-ltz v0, :cond_10

    .line 136
    const/16 v0, 0x36

    goto :goto_b

    :cond_10
    const/16 v0, 0x15

    :goto_b
    packed-switch v0, :pswitch_data_4

    .line 183
    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr v0, v11

    if-eqz v0, :cond_11

    goto :goto_c

    .line 136
    :pswitch_3
    move v13, v15

    goto :goto_10

    .line 174
    :cond_11
    :goto_c
    const/4 v13, 0x1

    goto :goto_10

    .line 177
    :cond_12
    :try_start_24
    iget-object v3, v10, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    iget-object v4, v10, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4}, Lccsansan/m/deleteDownItem;->unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_2
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v12, v2

    goto :goto_e

    .line 181
    :catch_2
    move-exception v0

    move-object v12, v2

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v6, v12

    move-object v12, v6

    :goto_d
    move v13, v15

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v6, v12

    move v13, v2

    move-object v12, v6

    goto :goto_f

    .line 177
    :catchall_3
    move-exception v0

    move-object v6, v12

    .line 181
    :goto_e
    invoke-direct {v1, v12}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    throw v0

    :catch_5
    move-exception v0

    move-object v6, v12

    move-object v12, v6

    const/4 v13, 0x0

    :goto_f
    move-object v2, v12

    .line 183
    :goto_10
    invoke-direct {v1, v2}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    return v13

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x41
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x15
        :pswitch_3
    .end packed-switch
.end method

.method public addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/m/getDownloadedList;",
            ">;"
        }
    .end annotation

    .line 154
    const-string v0, "\u0000\u0000\u0000\u0000"

    const-string v1, ""

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-array v10, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lccsansan/m/getDownloadedList$unifiedDownload;->AZ_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v7}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v7, "cpi_report"

    const/4 v8, 0x0

    .line 90
    :try_start_1
    sget-object v9, Lccsansan/m/deleteDownItem;->deleteDownItem:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 91
    :try_start_2
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v6, :cond_1

    .line 154
    sget v0, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 123
    const/16 v0, 0x19

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x44

    :try_start_3
    div-int/2addr p1, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 154
    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-object v2

    .line 124
    :cond_1
    :try_start_4
    new-instance v6, Lccsansan/m/getDownloadedList;

    invoke-direct {v6}, Lccsansan/m/getDownloadedList;-><init>()V

    const-string v7, "pkgName"

    .line 125
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    const-string v7, "versionCode"

    .line 126
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    const-string v7, "versionName"

    .line 127
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    const-string v7, "\u480f\u21a8\u9b59\u5461\ub4ef\ucc90\u1745\u612a\u34ef\u49b2\u81e4"

    invoke-static {v5, v5}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v8

    int-to-char v8, v8

    const v9, -0x344cb6ec    # -2.3499304E7f

    const/16 v10, 0x30

    invoke-static {v1, v10, v5, v5}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v10

    add-int/2addr v10, v9

    const-string v9, "\u1350\ub349\u58cb\u1f05"

    invoke-static {v7, v0, v8, v10, v9}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    const-string v7, "portal"

    .line 129
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    const-string v7, "name"

    .line 130
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    const-string v7, "track_urls"

    .line 131
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lccsansan/m/getDownloadedList;->resume:Ljava/lang/String;

    const-string v7, "fileSize"

    .line 132
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    const-string v7, "status"

    .line 133
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lccsansan/m/getDownloadedList;->execute:I

    const-string v7, "report_time"

    .line 134
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    const-string v7, "trackTime"

    .line 137
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lccsansan/m/getDownloadedList;->deleteDownList:J

    const-string v7, "trackStatus"

    .line 138
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    const-string v7, "imUrls"

    .line 139
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lccsansan/m/getDownloadedList;->pause:Ljava/lang/String;

    const-string v7, "impTrackStatus"

    .line 140
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lccsansan/m/getDownloadedList;->IncentiveSDK:I

    const-string v7, "\u398b\uec8b\u317d\u83ea\uaa37\u7c43\u1e98\u3bdf\u0a42"

    invoke-static {v5, v5}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v8

    int-to-char v8, v8

    const v9, -0x1ec390df

    invoke-static {v1, v1, v5, v5}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v10

    add-int/2addr v10, v9

    const-string v9, "\u2158\u3c6f\uebe1\ub24e"

    invoke-static {v7, v0, v8, v10, v9}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_3

    .line 154
    sget v7, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v7, v7, 0x57

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_2

    .line 141
    :cond_2
    const/4 v7, 0x1

    goto :goto_2

    .line 154
    :cond_3
    const/4 v7, 0x0

    .line 141
    :goto_2
    :try_start_5
    iput-boolean v7, v6, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    const-string v7, "adId"

    .line 142
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    const-string v7, "subPortal"

    .line 143
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    const-string v7, "\u2016\ub352\u7da3\u730f\u6ddc\u78a9\u4156\u7d85\u6e7a\ufab3"

    invoke-static {v5}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    int-to-char v8, v8

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v10

    cmpl-float v9, v10, v9

    const-string v10, "\u7252\u00ff\u0cf0\u4f3f"

    invoke-static {v7, v0, v8, v9, v10}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    const-string v7, "extra"

    .line 145
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    const-string v7, "portalStr"

    .line 147
    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    .line 148
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v6, :cond_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, p1

    goto :goto_3

    .line 152
    :catch_0
    move-exception v0

    goto :goto_4

    .line 149
    :catchall_2
    move-exception v0

    .line 152
    :goto_3
    invoke-direct {p0, v3}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    throw v0

    :catch_1
    move-exception p1

    move-object p1, v3

    .line 154
    :goto_4
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 123
    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    :goto_5
    packed-switch v4, :pswitch_data_1

    .line 154
    goto :goto_6

    :pswitch_1
    return-object v2

    :goto_6
    :try_start_6
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-object v2

    :catchall_3
    move-exception p1

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    .locals 13

    .line 21
    const-string v0, "%"

    .line 6
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/cy/addDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v2

    .line 7
    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, v9, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v6, "adinfo"

    const/4 v7, 0x0

    .line 8
    :try_start_1
    sget-object v8, Lccsansan/m/deleteDownItem;->getDownloadingList:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "click_ts DESC"

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_0

    .line 21
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget p2, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p2, p2, 0x23

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr p2, v4

    if-nez p2, :cond_2

    goto :goto_2

    .line 16
    :pswitch_0
    :try_start_3
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->getDownloadingList(Lccsanandroid/database/Cursor;)Lccsansan/m/removeDownloadListener;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    .line 21
    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr p1, v4

    if-eqz p1, :cond_1

    const/16 p1, 0x13

    goto :goto_1

    :cond_1
    const/16 p1, 0x38

    :goto_1
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto :goto_5

    .line 15
    :cond_2
    :goto_2
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    return-object v1

    .line 19
    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_4

    :catchall_1
    move-exception p2

    :goto_3
    invoke-direct {p0, v1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    throw p2

    :catch_1
    move-exception p1

    .line 21
    move-object p1, v1

    :goto_4
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    :goto_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_1
    .end packed-switch
.end method

.method public addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    .locals 11

    .line 81
    sget v0, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 67
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v6, v1, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v6, v10

    const/4 p2, 0x1

    aput-object p3, v6, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v3, "adinfo"

    const/4 v4, 0x0

    .line 68
    :try_start_1
    sget-object v5, Lccsansan/m/deleteDownItem;->addDownloadListener:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 69
    :try_start_2
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p3, :cond_1

    .line 81
    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 75
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    goto :goto_1

    .line 76
    :pswitch_0
    :try_start_3
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->getDownloadingList(Lccsanandroid/database/Cursor;)Lccsansan/m/removeDownloadListener;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    goto :goto_6

    .line 81
    :goto_1
    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    packed-switch v10, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

    :goto_3
    :try_start_4
    array-length p1, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    .line 79
    :catchall_1
    move-exception p2

    move-object v0, p1

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_5

    :catchall_2
    move-exception p2

    :goto_4
    invoke-direct {p0, v0}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    throw p2

    :catch_1
    move-exception p1

    .line 81
    move-object p1, v0

    :goto_5
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public deleteDownItem(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lccsansan/m/getDownloadedList;
    .locals 11

    .line 28
    nop

    .line 5
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const/16 v0, 0x5f

    goto :goto_0

    :cond_0
    const/16 v0, 0x53

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5
    return-object v1

    :pswitch_0
    nop

    .line 13
    :try_start_0
    sget-object v5, Lccsansan/m/deleteDownItem;->getDownloadedList:Ljava/lang/String;

    .line 14
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v6, v10

    const-string v3, "cpi_report"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 16
    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    :try_start_1
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_1

    .line 22
    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 23
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->addDownloadListener(Lccsanandroid/database/Cursor;)Lccsansan/m/getDownloadedList;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 28
    :pswitch_1
    sget p2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p2, p2, 0x4b

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 22
    const/16 p2, 0x60

    goto :goto_2

    :cond_2
    const/16 p2, 0x42

    :goto_2
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    packed-switch p2, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    return-object v1

    :goto_3
    :try_start_2
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    .line 28
    :catchall_0
    move-exception p1

    throw p1

    .line 26
    :goto_4
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    .line 28
    goto :goto_7

    .line 26
    :catchall_1
    move-exception p2

    move-object v1, p1

    goto :goto_5

    :catch_0
    move-exception p2

    goto :goto_6

    :catchall_2
    move-exception p2

    :goto_5
    invoke-direct {p0, v1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    throw p2

    :catch_1
    move-exception p1

    .line 28
    move-object p1, v1

    :goto_6
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    :goto_7
    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    return-object v1

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x42
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadedRecordByUrl(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/m/getDownloadingCount;",
            ">;"
        }
    .end annotation

    .line 44
    nop

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    :try_start_0
    new-array v7, v2, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p2, v7, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "upload"

    const/4 v5, 0x0

    .line 5
    :try_start_1
    sget-object v6, Lccsansan/m/deleteDownItem;->getDownloadedCount:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    .line 44
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 25
    :cond_1
    invoke-direct {p0, v1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    .line 44
    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0

    .line 26
    :cond_2
    :goto_1
    :try_start_2
    new-instance p1, Lccsansan/m/getDownloadingCount;

    invoke-direct {p1}, Lccsansan/m/getDownloadingCount;-><init>()V

    const-string p2, "pkg"

    .line 27
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string p2, "ver"

    .line 28
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getInt(I)I

    const-string p2, "ver_name"

    .line 29
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string p2, "hot_type"

    .line 30
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getInt(I)I

    const-string p2, "exchange"

    .line 31
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getInt(I)I

    const-string p2, "init_time"

    .line 32
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getLong(I)J

    const-string p2, "upload_time"

    .line 33
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getLong(I)J

    const-string p2, "sts"

    .line 34
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Lccsansan/m/getDownloadingCount;->getDownloadingList:I

    const-string p2, "cnt"

    .line 35
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getInt(I)I

    const-string p2, "extra"

    .line 36
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string p2, "portal"

    .line 37
    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v1, p2}, Lccsanandroid/database/Cursor;->getInt(I)I

    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    goto :goto_2

    .line 42
    :catch_0
    move-exception p1

    goto :goto_2

    .line 39
    :catchall_0
    move-exception p1

    .line 42
    invoke-direct {p0, v1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    throw p1

    .line 44
    :goto_2
    invoke-direct {p0, v1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    .locals 13

    .line 24
    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->pause:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/cy/addDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v2

    const/4 v4, 0x3

    .line 10
    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v9, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v9, v2

    const-string p2, "0"

    aput-object p2, v9, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v6, "adinfo"

    const/4 v7, 0x0

    .line 11
    :try_start_1
    sget-object v8, Lccsansan/m/deleteDownItem;->unifiedDownload:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "click_ts DESC"

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_1

    .line 24
    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 19
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->getDownloadingList(Lccsanandroid/database/Cursor;)Lccsansan/m/removeDownloadListener;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 24
    :pswitch_0
    sget p2, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p2, p2, 0x19

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr p2, v1

    if-nez p2, :cond_2

    .line 18
    :cond_2
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    .line 24
    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr p1, v1

    return-object v0

    .line 22
    :goto_1
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    goto :goto_4

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    :goto_2
    invoke-direct {p0, v0}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    throw p2

    :catch_1
    move-exception p1

    .line 24
    move-object p1, v0

    :goto_3
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 15

    .line 4
    nop

    .line 1
    const/4 v1, 0x0

    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    const/4 v3, 0x1

    aput-object p3, v2, v3

    .line 2
    new-instance v4, Lccsanandroid/content/ContentValues;

    invoke-direct {v4}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v5

    add-int/2addr v5, v3

    int-to-char v5, v5

    const v6, 0x4c897839    # 7.2073672E7f

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    const-string v11, "\u5882\u7849\u8649\u0e29\u5418\u884d\u5765\ud374\uaa99\u331f\u15b6"

    const-string v12, "\u0000\u0000\u0000\u0000"

    const-string v13, "\u3822\u8978\u5c4c\ua491"

    cmp-long v14, v7, v9

    sub-int/2addr v6, v14

    invoke-static {v11, v12, v5, v6, v13}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 3
    :try_start_1
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "adinfo"

    .line 4
    :try_start_2
    sget-object v6, Lccsansan/m/deleteDownItem;->addDownloadListener:Ljava/lang/String;

    move-object/from16 v7, p1

    invoke-virtual {v7, v5, v4, v6, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lez v2, :cond_0

    const/16 v2, 0x32

    goto :goto_0

    :cond_0
    const/16 v2, 0x37

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr v1, v0

    if-eqz v1, :cond_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    sget v2, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v2, v2, 0x3b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v2, v0

    return v1

    :catch_0
    move-exception v0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/m/getDownloadStatusByUrl;)Z
    .locals 6

    .line 9
    const-string v0, "track_urls"

    .line 1
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lccsanandroid/content/ContentValues;

    invoke-direct {v2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 2
    new-instance v3, Lccsanorg/json/JSONArray;

    invoke-direct {v3}, Lccsanorg/json/JSONArray;-><init>()V

    .line 3
    invoke-virtual {p2}, Lccsansan/m/getDownloadStatusByUrl;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    sget v4, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v4, v4, 0x19

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    const/16 v4, 0x4b

    goto :goto_0

    :cond_0
    const/16 v4, 0xb

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 3
    :goto_1
    :pswitch_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_1

    .line 4
    const/16 v4, 0x2a

    goto :goto_2

    :cond_1
    const/16 v4, 0x18

    :goto_2
    packed-switch v4, :pswitch_data_1

    goto :goto_3

    .line 9
    :pswitch_1
    sget v4, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v4, v4, 0x79

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    :try_start_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-virtual {v3, v4}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v4, 0x3f

    :try_start_3
    div-int/2addr v4, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 9
    :catchall_0
    move-exception p1

    throw p1

    .line 3
    :cond_2
    :try_start_4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-virtual {v3, v4}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_1

    .line 7
    :goto_3
    invoke-virtual {v3}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p2, "timestamp"

    .line 8
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, v0, p2, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_3

    .line 4
    const/16 p1, 0x20

    goto :goto_4

    :cond_3
    const/16 p1, 0x60

    :goto_4
    packed-switch p1, :pswitch_data_2

    goto :goto_5

    :pswitch_2
    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 9
    :cond_4
    const/4 v1, 0x1

    goto :goto_5

    :catch_0
    move-exception p1

    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_2
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/m/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 27
    nop

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-static {}, Lccsansan/cy/addDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v2

    const/4 v4, 0x3

    .line 9
    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v9, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v9, v2

    const-string p2, "0"

    const/4 v3, 0x2

    aput-object p2, v9, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "adinfo"

    const/4 v7, 0x0

    .line 10
    :try_start_1
    sget-object v8, Lccsansan/m/deleteDownItem;->unifiedDownload:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "click_ts DESC"

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    .line 27
    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr p1, v3

    if-eqz p1, :cond_1

    .line 19
    :cond_1
    invoke-direct {p0, v1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    return-object v0

    .line 20
    :cond_2
    :goto_1
    :try_start_2
    invoke-direct {p0, v1}, Lccsansan/m/deleteDownItem;->getDownloadingList(Lccsanandroid/database/Cursor;)Lccsansan/m/removeDownloadListener;

    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    .line 27
    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr p1, v3

    if-nez p1, :cond_3

    goto :goto_2

    .line 25
    :catch_0
    move-exception p1

    goto :goto_2

    .line 22
    :catchall_0
    move-exception p1

    .line 25
    invoke-direct {p0, v1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    throw p1

    .line 27
    :cond_3
    :goto_2
    invoke-direct {p0, v1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;
    .locals 15

    move-object v1, p0

    .line 245
    nop

    .line 227
    sget v0, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 202
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 227
    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static/range {p3 .. p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    array-length v6, v3

    if-eqz v0, :cond_3

    :pswitch_0
    goto :goto_1

    .line 202
    :cond_1
    invoke-static/range {p3 .. p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 227
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 221
    :goto_1
    invoke-direct {p0, v3}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    return-object v3

    .line 222
    :cond_3
    :goto_2
    :try_start_2
    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static/range {p3 .. p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_4

    .line 227
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 245
    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 223
    :try_start_3
    sget-object v0, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v6, 0x4

    .line 224
    new-array v6, v6, [Ljava/lang/String;

    aput-object p2, v6, v5

    aput-object p3, v6, v4

    goto :goto_4

    .line 223
    :cond_5
    sget-object v0, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 224
    new-array v6, v2, [Ljava/lang/String;

    aput-object p2, v6, v5

    aput-object p3, v6, v4

    :goto_4
    move-object v10, v0

    move-object v11, v6

    goto :goto_8

    .line 225
    :cond_6
    :pswitch_1
    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static/range {p3 .. p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_7

    .line 227
    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_2

    goto :goto_7

    .line 224
    :pswitch_2
    sget v0, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_8

    .line 226
    :try_start_4
    sget-object v0, Lccsansan/m/deleteDownItem;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 227
    new-array v6, v5, [Ljava/lang/String;

    aput-object p2, v6, v5

    goto :goto_6

    .line 226
    :cond_8
    sget-object v0, Lccsansan/m/deleteDownItem;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 227
    new-array v6, v4, [Ljava/lang/String;

    aput-object p2, v6, v5

    :goto_6
    move-object v10, v0

    move-object v11, v6

    goto :goto_8

    .line 229
    :cond_9
    :goto_7
    sget-object v0, Lccsansan/m/deleteDownItem;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 230
    new-array v6, v4, [Ljava/lang/String;

    aput-object p3, v6, v5

    move-object v10, v0

    move-object v11, v6

    :goto_8
    const-string v8, "cpi_report"

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 233
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 234
    :try_start_5
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_b

    .line 227
    sget v0, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_a

    .line 239
    :cond_a
    invoke-direct {p0, v4}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    return-object v3

    .line 240
    :cond_b
    :try_start_6
    invoke-direct {p0, v4}, Lccsansan/m/deleteDownItem;->addDownloadListener(Lccsanandroid/database/Cursor;)Lccsansan/m/getDownloadedList;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 243
    invoke-direct {p0, v4}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    .line 227
    sget v0, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v0, v2

    goto :goto_b

    .line 243
    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    :goto_9
    invoke-direct {p0, v3}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    throw v0

    :catch_1
    move-exception v0

    .line 245
    move-object v4, v3

    :goto_a
    invoke-direct {p0, v4}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    :goto_b
    return-object v3

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
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4

    .line 66
    nop

    .line 62
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    const/4 p2, 0x1

    aput-object p3, v2, p2

    .line 63
    new-instance p3, Lccsanandroid/content/ContentValues;

    invoke-direct {p3}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "click_ts"

    .line 64
    :try_start_1
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, v3, p4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p4, "click_status"

    .line 65
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p4, "adinfo"

    .line 66
    :try_start_3
    sget-object p5, Lccsansan/m/deleteDownItem;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p4, p3, p5, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-lez p1, :cond_0

    const/16 p1, 0x5d

    goto :goto_0

    :cond_0
    const/16 p1, 0x46

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    :cond_1
    add-int/lit8 p3, p3, 0x5

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr p3, v0

    if-nez p3, :cond_2

    const/4 v1, 0x1

    :cond_2
    packed-switch v1, :pswitch_data_1

    :pswitch_0
    const/4 v1, 0x1

    :pswitch_1
    return v1

    :catch_0
    move-exception p1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 8
    nop

    .line 5
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    const/4 p2, 0x1

    aput-object p3, v2, p2

    .line 6
    new-instance p3, Lccsanandroid/content/ContentValues;

    invoke-direct {p3}, Lccsanandroid/content/ContentValues;-><init>()V

    const-string v3, "referrer"

    .line 7
    invoke-virtual {p3, v3, p4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, "adinfo"

    .line 8
    :try_start_1
    sget-object v3, Lccsansan/m/deleteDownItem;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p4, p3, v3, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lez p1, :cond_0

    const/16 p1, 0x3e

    goto :goto_0

    :cond_0
    const/16 p1, 0x5f

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    goto :goto_3

    :pswitch_0
    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_1

    :goto_3
    return v1

    :catch_0
    move-exception p1

    return v1

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/m/getDownloadStatusByUrl;",
            ">;"
        }
    .end annotation

    .line 50
    nop

    .line 0
    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    nop

    .line 4
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "track_urls"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp DESC"

    .line 5
    move-object v2, p1

    move-object v10, p2

    invoke-virtual/range {v2 .. v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_1

    .line 28
    const/16 p2, 0x25

    goto :goto_0

    :cond_1
    const/16 p2, 0x62

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 50
    :pswitch_0
    sget p2, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p2, p2, 0x5

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    .line 28
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    :try_start_2
    array-length p1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    throw p1

    .line 28
    :cond_2
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    .line 50
    :goto_1
    return-object v1

    .line 29
    :cond_3
    :goto_2
    :try_start_3
    new-instance p2, Lccsansan/m/getDownloadStatusByUrl;

    invoke-direct {p2}, Lccsansan/m/getDownloadStatusByUrl;-><init>()V

    const-string v0, "_id"

    .line 30
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsansan/m/getDownloadStatusByUrl;->removeDownloadListener(I)V

    const-string v0, "timestamp"

    .line 31
    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lccsansan/m/getDownloadStatusByUrl;->unifiedDownload(J)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "track_urls"

    .line 34
    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    new-instance v3, Lccsanorg/json/JSONArray;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 36
    :goto_3
    invoke-virtual {v3}, Lccsanorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 28
    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    packed-switch v5, :pswitch_data_1

    .line 37
    invoke-virtual {v3, v4}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 39
    :pswitch_1
    invoke-virtual {p2, v0}, Lccsansan/m/getDownloadStatusByUrl;->IncentiveDownloadUtils(Ljava/util/List;)V

    .line 40
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p2, :cond_3

    .line 28
    sget p2, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p2, p2, 0x37

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_5

    .line 46
    :cond_5
    invoke-direct {p0, p1}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    return-object v1

    .line 37
    :goto_5
    :try_start_4
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v4, v4, 0x1

    .line 50
    goto :goto_3

    .line 46
    :catchall_1
    move-exception p2

    move-object v0, p1

    goto :goto_6

    :catch_0
    move-exception p2

    .line 48
    move-object v0, p1

    goto :goto_7

    .line 46
    :catchall_2
    move-exception p2

    :goto_6
    invoke-direct {p0, v0}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    throw p2

    :catch_1
    move-exception p1

    .line 48
    :goto_7
    invoke-direct {p0, v0}, Lccsansan/m/deleteDownItem;->removeDownloadListener(Lccsanandroid/database/Cursor;)V

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    .line 45
    nop

    .line 26
    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->pause:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 22
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 22
    :cond_0
    :try_start_2
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_3

    .line 26
    :goto_0
    sget v0, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 22
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 26
    :try_start_3
    invoke-static/range {p3 .. p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_3

    .line 22
    :pswitch_0
    invoke-static/range {p3 .. p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 26
    :goto_3
    :try_start_4
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_3

    .line 22
    :goto_4
    return v4

    .line 26
    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 24
    :cond_3
    :pswitch_1
    :try_start_5
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static/range {p3 .. p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v0, :cond_5

    .line 45
    sget v0, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 22
    const/16 v0, 0x38

    goto :goto_5

    :cond_4
    const/16 v0, 0x33

    :goto_5
    packed-switch v0, :pswitch_data_2

    .line 25
    :try_start_6
    sget-object v0, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/String;

    goto :goto_6

    :pswitch_2
    sget-object v0, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 26
    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    aput-object p3, v1, v3

    goto :goto_7

    :goto_6
    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v4

    aput-object p3, v1, v3

    goto :goto_7

    .line 27
    :cond_5
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static/range {p3 .. p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    sget-object v0, Lccsansan/m/deleteDownItem;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 29
    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v4

    goto :goto_7

    .line 31
    :cond_6
    sget-object v0, Lccsansan/m/deleteDownItem;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 32
    new-array v1, v3, [Ljava/lang/String;

    aput-object p3, v1, v4

    :goto_7
    const-string v6, "cpi_report"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 35
    move-object v5, p1

    move-object v8, v0

    move-object v9, v1

    invoke-virtual/range {v5 .. v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v2

    .line 36
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_7

    .line 37
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    return v4

    .line 40
    :cond_7
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    .line 41
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    .line 42
    new-instance v2, Lccsanandroid/content/ContentValues;

    invoke-direct {v2}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v5, "report_time"

    .line 43
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "cpi_report"

    .line 45
    move-object v6, p1

    invoke-virtual {p1, v5, v2, v0, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-lez v0, :cond_8

    .line 22
    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    packed-switch v0, :pswitch_data_3

    .line 45
    goto :goto_9

    :pswitch_3
    const/4 v3, 0x0

    :goto_9
    return v3

    :catch_0
    move-exception v0

    return v4

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
    .packed-switch 0x38
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 8

    .line 5
    nop

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    const/4 p2, 0x1

    aput-object p3, v2, p2

    .line 2
    new-instance p3, Lccsanandroid/content/ContentValues;

    invoke-direct {p3}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-char v3, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    const-string v5, "\u7de0\ub19c\u51e6\ud43a\u1ccf\ud43d\u2211\ue931\uf356\u84ef"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u230d\ua9ac\uc70a\u8717"

    invoke-static {v5, v6, v3, v4, v7}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 3
    :try_start_1
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, v3, p4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const p4, 0xbc21

    const-string p5, ""

    invoke-static {p5}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr p4, v3

    int-to-char p4, p4

    invoke-static {p5, v1, v1}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p5

    const-string v3, "\u1961\ufc40\u8e93\u697e\u3e7a\u0a46\u06bb\ucc07\ufbdf\ue2c5\u6616\uf964\u176d\udd94"

    const-string v4, "\u27ff\u9a5a\u21a9\u23bc"

    invoke-static {v3, v6, p4, p5, v4}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    .line 4
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p4, "adinfo"

    .line 5
    :try_start_3
    sget-object p5, Lccsansan/m/deleteDownItem;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p4, p3, p5, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-lez p1, :cond_0

    const/16 p1, 0x5a

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    packed-switch p2, :pswitch_data_1

    :pswitch_1
    goto :goto_2

    :goto_1
    sget p1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    return v1

    :catch_0
    move-exception p1

    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 53
    nop

    .line 50
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    const/4 p2, 0x1

    aput-object p3, v2, p2

    .line 51
    new-instance p3, Lccsanandroid/content/ContentValues;

    invoke-direct {p3}, Lccsanandroid/content/ContentValues;-><init>()V

    const-string v3, "extra"

    .line 52
    invoke-virtual {p3, v3, p4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p4, "adinfo"

    .line 53
    :try_start_1
    sget-object v3, Lccsansan/m/deleteDownItem;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p4, p3, v3, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x42

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p3, p1, 0x73

    rem-int/lit16 p4, p3, 0x80

    sput p4, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr p3, v0

    if-eqz p3, :cond_2

    goto :goto_2

    :pswitch_0
    sget p1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    packed-switch p2, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    return v1

    :catch_0
    move-exception p1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/m/getDownloadedList;)Z
    .locals 16

    move-object/from16 v0, p2

    .line 201
    sget v1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/deleteDownItem;->pause:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 162
    const/16 v1, 0x3c

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    :goto_0
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 0
    if-eqz v0, :cond_12

    goto :goto_1

    .line 201
    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_12

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 155
    :goto_1
    :try_start_1
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 162
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 155
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_12

    .line 160
    :cond_2
    :pswitch_1
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_3

    .line 162
    const/16 v1, 0x33

    goto :goto_3

    :cond_3
    const/16 v1, 0x17

    :goto_3
    packed-switch v1, :pswitch_data_2

    :cond_4
    goto :goto_7

    :pswitch_2
    sget v1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_5

    :try_start_2
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v5, 0x37

    :try_start_3
    div-int/2addr v5, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_4

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 160
    :cond_5
    :try_start_4
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v1, :cond_7

    .line 201
    :goto_4
    sget v1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_6

    .line 162
    const/16 v1, 0x36

    goto :goto_5

    :cond_6
    const/16 v1, 0x4c

    :goto_5
    packed-switch v1, :pswitch_data_3

    .line 161
    :try_start_5
    sget-object v1, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/String;

    goto :goto_6

    :pswitch_3
    sget-object v1, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 162
    new-array v5, v2, [Ljava/lang/String;

    iget-object v6, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    aput-object v6, v5, v3

    iget-object v6, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    aput-object v6, v5, v4

    goto :goto_b

    :goto_6
    new-array v5, v2, [Ljava/lang/String;

    iget-object v6, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v6, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    aput-object v6, v5, v4

    goto :goto_b

    .line 163
    :cond_7
    :goto_7
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v1, :cond_8

    .line 162
    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    const/4 v1, 0x1

    :goto_8
    packed-switch v1, :pswitch_data_4

    sget v1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_a

    :try_start_6
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/16 v5, 0x58

    :try_start_7
    div-int/2addr v5, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    const/4 v1, 0x1

    :goto_9
    packed-switch v1, :pswitch_data_5

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v1, v0

    throw v1

    .line 163
    :cond_a
    :try_start_8
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 164
    :goto_a
    sget-object v1, Lccsansan/m/deleteDownItem;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 165
    new-array v5, v4, [Ljava/lang/String;

    iget-object v6, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    aput-object v6, v5, v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 201
    sget v6, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v6, v6, 0x1b

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr v6, v2

    goto :goto_b

    .line 167
    :cond_b
    :pswitch_4
    :try_start_9
    sget-object v1, Lccsansan/m/deleteDownItem;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 168
    new-array v5, v4, [Ljava/lang/String;

    iget-object v6, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    aput-object v6, v5, v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 162
    sget v6, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v6, v6, 0x63

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr v6, v2

    .line 168
    :goto_b
    :try_start_a
    const-string v8, "cpi_report"

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 171
    move-object/from16 v7, p1

    move-object v10, v1

    move-object v11, v5

    invoke-virtual/range {v7 .. v14}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v6

    .line 172
    invoke-interface {v6}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_c

    .line 173
    invoke-interface {v6}, Lccsanandroid/database/Cursor;->close()V

    return v3

    .line 176
    :cond_c
    invoke-interface {v6}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    .line 177
    invoke-interface {v6}, Lccsanandroid/database/Cursor;->close()V

    .line 178
    new-instance v6, Lccsanandroid/content/ContentValues;

    invoke-direct {v6}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v7, "pkgName"

    .line 180
    :try_start_b
    iget-object v8, v0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v7, ""

    invoke-static {v7, v7, v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v8

    int-to-char v8, v8

    const v9, -0x344cb6ed    # -2.3499302E7f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    sub-int/2addr v9, v10

    const-string v10, "\u480f\u21a8\u9b59\u5461\ub4ef\ucc90\u1745\u612a\u34ef\u49b2\u81e4"

    const-string v11, "\u0000\u0000\u0000\u0000"

    const-string v12, "\u1350\ub349\u58cb\u1f05"

    invoke-static {v10, v11, v8, v9, v12}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 181
    :try_start_c
    iget-object v9, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v8, "name"

    .line 182
    :try_start_d
    iget-object v9, v0, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v8, "versionName"

    .line 183
    :try_start_e
    iget-object v9, v0, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const-string v8, "versionCode"

    .line 184
    :try_start_f
    iget v9, v0, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const-string v8, "portal"

    .line 185
    :try_start_10
    iget v9, v0, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const-string v8, "fileSize"

    .line 186
    :try_start_11
    iget-wide v9, v0, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const-string v8, "status"

    .line 187
    :try_start_12
    iget v9, v0, Lccsansan/m/getDownloadedList;->execute:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    const-string v8, "track_urls"

    .line 188
    :try_start_13
    iget-object v9, v0, Lccsansan/m/getDownloadedList;->resume:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    const-string v8, "report_time"

    .line 189
    :try_start_14
    iget-wide v9, v0, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    const-string v8, "trackTime"

    .line 191
    :try_start_15
    iget-wide v9, v0, Lccsansan/m/getDownloadedList;->deleteDownList:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    const-string v8, "trackStatus"

    .line 192
    :try_start_16
    iget v9, v0, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    const-string v8, "imUrls"

    .line 193
    :try_start_17
    iget-object v9, v0, Lccsansan/m/getDownloadedList;->pause:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    const-string v8, "impTrackStatus"

    .line 194
    :try_start_18
    iget v9, v0, Lccsansan/m/getDownloadedList;->IncentiveSDK:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    const/16 v8, 0x30

    invoke-static {v7, v8, v3, v3}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    add-int/2addr v7, v4

    int-to-char v7, v7

    const v8, -0x1ec390df

    invoke-static {v3, v3, v3, v3}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v9

    add-int/2addr v9, v8

    const-string v8, "\u398b\uec8b\u317d\u83ea\uaa37\u7c43\u1e98\u3bdf\u0a42"

    const-string v10, "\u2158\u3c6f\uebe1\ub24e"

    invoke-static {v8, v11, v7, v9, v10}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 195
    :try_start_19
    iget-boolean v8, v0, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    if-eqz v8, :cond_e

    .line 201
    sget v8, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v8, v8, 0x75

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr v8, v2

    if-eqz v8, :cond_d

    .line 162
    const/4 v8, 0x1

    goto :goto_c

    :cond_d
    const/4 v8, 0x0

    :goto_c
    packed-switch v8, :pswitch_data_6

    .line 195
    const/4 v8, 0x1

    goto :goto_d

    .line 201
    :pswitch_5
    const/4 v8, 0x0

    goto :goto_d

    .line 195
    :cond_e
    const/4 v8, 0x0

    :goto_d
    :try_start_1a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    const-string v7, "adId"

    .line 196
    :try_start_1b
    iget-object v8, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    const-string v7, "subPortal"

    .line 197
    :try_start_1c
    iget-object v8, v0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    const-string v7, "extra"

    .line 198
    :try_start_1d
    iget-object v8, v0, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0

    invoke-static {v3}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    int-to-char v7, v7

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    const-string v10, "\u2016\ub352\u7da3\u730f\u6ddc\u78a9\u4156\u7d85\u6e7a\ufab3"

    const-string v14, "\u7252\u00ff\u0cf0\u4f3f"

    cmp-long v15, v8, v12

    add-int/lit8 v15, v15, -0x1

    invoke-static {v10, v11, v7, v15, v14}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 199
    :try_start_1e
    iget-object v8, v0, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    const-string v7, "portalStr"

    .line 200
    :try_start_1f
    iget-object v0, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cpi_report"

    .line 201
    move-object/from16 v7, p1

    invoke-virtual {v7, v0, v6, v1, v5}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    if-lez v0, :cond_f

    .line 162
    const/4 v0, 0x0

    goto :goto_e

    :cond_f
    const/4 v0, 0x1

    :goto_e
    packed-switch v0, :pswitch_data_7

    .line 201
    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_10

    goto :goto_f

    :pswitch_6
    sget v0, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_11

    goto :goto_11

    .line 162
    :goto_f
    goto :goto_10

    :cond_10
    const/4 v3, 0x1

    :goto_10
    packed-switch v3, :pswitch_data_8

    .line 201
    :pswitch_7
    const/4 v3, 0x1

    :cond_11
    :goto_11
    return v3

    :catch_0
    move-exception v0

    :cond_12
    :goto_12
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4c
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/m/removeDownloadListener;)Z
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    .line 49
    nop

    .line 15
    const/4 v10, 0x0

    :try_start_0
    iget-object v1, v8, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v2, v8, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v7, v0, v1, v2}, Lccsansan/m/deleteDownItem;->addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 17
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v12, 0x0

    const-wide/16 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 16
    :pswitch_0
    iget-object v1, v8, Lccsansan/m/removeDownloadListener;->resume:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    .line 49
    sget v1, Lccsansan/m/deleteDownItem;->pause:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/m/deleteDownItem;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 17
    :try_start_1
    iget-object v3, v11, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, v11, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lccsansan/m/deleteDownItem;->addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-super {v12}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 49
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 17
    :cond_2
    :try_start_3
    iget-object v3, v11, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, v11, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lccsansan/m/deleteDownItem;->addDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    iget-object v1, v11, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v2, v11, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v3, v8, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    .line 18
    invoke-virtual {v7, v0, v1, v2, v3}, Lccsansan/m/deleteDownItem;->unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_3

    .line 17
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_2

    .line 18
    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    :pswitch_1
    nop

    .line 17
    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 49
    :cond_5
    const/4 v9, 0x0

    .line 18
    :goto_4
    return v9

    .line 20
    :cond_6
    :goto_5
    :try_start_4
    new-instance v1, Lccsanandroid/content/ContentValues;

    invoke-direct {v1}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, "id"

    .line 21
    :try_start_5
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v4, "pkg"

    .line 22
    :try_start_6
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v4, "title"

    .line 23
    :try_start_7
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v4, "description"

    .line 24
    :try_start_8
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v4, "icon_path"

    .line 25
    :try_start_9
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v4, "image_path"

    .line 26
    :try_start_a
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v4, "titles"

    .line 27
    :try_start_b
    invoke-virtual/range {p2 .. p2}, Lccsansan/m/removeDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v4, "click_status"

    .line 28
    :try_start_c
    iget v5, v8, Lccsansan/m/removeDownloadListener;->getDownloadingCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const v4, 0xbc21

    const-string v5, ""

    invoke-static {v5, v5}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v10}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v5

    rsub-int/lit8 v5, v5, -0x1

    const-string v6, "\u1961\ufc40\u8e93\u697e\u3e7a\u0a46\u06bb\ucc07\ufbdf\ue2c5\u6616\uf964\u176d\udd94"

    const-string v11, "\u0000\u0000\u0000\u0000"

    const-string v13, "\u27ff\u9a5a\u21a9\u23bc"

    invoke-static {v6, v11, v4, v5, v13}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 29
    :try_start_d
    iget v5, v8, Lccsansan/m/removeDownloadListener;->pause:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v4, "show_ts"

    .line 30
    :try_start_e
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->resume:Ljava/lang/Long;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const-string v4, "click_ts"

    .line 31
    :try_start_f
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const-string v4, "supplement_ts"

    .line 32
    :try_start_10
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/Long;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    const-wide/16 v13, -0x1

    const-string v15, "\u7de0\ub19c\u51e6\ud43a\u1ccf\ud43d\u2211\ue931\uf356\u84ef"

    const-string v9, "\u230d\ua9ac\uc70a\u8717"

    cmp-long v16, v5, v13

    add-int/lit8 v5, v16, -0x1

    invoke-static {v15, v11, v4, v5, v9}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 33
    :try_start_11
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->deleteDownList:Ljava/lang/Long;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const-string v4, "effect_urls"

    .line 34
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Lccsansan/m/removeDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    const-string v4, "click_urls"

    .line 35
    :try_start_13
    invoke-virtual/range {p2 .. p2}, Lccsansan/m/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    const-string v4, "referrer"

    .line 36
    :try_start_14
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->IncentiveSDK:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    const-string v4, "extra"

    .line 37
    :try_start_15
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    int-to-char v4, v4

    const v5, 0x4c897838    # 7.2073664E7f

    invoke-static {v10, v10}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v6

    sub-int/2addr v5, v6

    const-string v6, "\u5882\u7849\u8649\u0e29\u5418\u884d\u5765\ud374\uaa99\u331f\u15b6"

    const-string v9, "\u3822\u8978\u5c4c\ua491"

    invoke-static {v6, v11, v4, v5, v9}, Lccsansan/m/deleteDownItem;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 38
    :try_start_16
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->getPackageNameByRecord:Ljava/lang/Long;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    const-string v4, "placement_id"

    .line 40
    :try_start_17
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    const-string v4, "pid"

    .line 41
    :try_start_18
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    const-string v4, "creative_id"

    .line 42
    :try_start_19
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    const-string v4, "format_id"

    .line 43
    :try_start_1a
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    const-string v4, "ad_net"

    .line 44
    :try_start_1b
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    const-string v4, "source_type"

    .line 45
    :try_start_1c
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    const-string v4, "down_id"

    .line 46
    :try_start_1d
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0

    const-string v4, "did"

    .line 47
    :try_start_1e
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    const-string v4, "cpiparam"

    .line 48
    :try_start_1f
    iget-object v5, v8, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "adinfo"

    .line 49
    invoke-virtual {v0, v4, v12, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_7

    .line 17
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    const/4 v0, 0x1

    :goto_6
    packed-switch v0, :pswitch_data_3

    goto :goto_7

    .line 49
    :pswitch_2
    sget v0, Lccsansan/m/deleteDownItem;->trackReportShow:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/m/deleteDownItem;->pause:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v9, 0x1

    goto :goto_8

    :catch_0
    move-exception v0

    :goto_7
    const/4 v9, 0x0

    :goto_8
    return v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
