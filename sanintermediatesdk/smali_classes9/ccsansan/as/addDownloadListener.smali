.class public Lccsansan/as/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:Ljava/lang/String;

.field private static final addDownloadListener:Ljava/lang/String;

.field private static getDownloadStatusByUrl:I

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field private static final removeDownloadListener:Ljava/lang/String;

.field private static final unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    sput v0, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    invoke-static {}, Lccsansan/as/addDownloadListener;->unifiedDownload()V

    .line 1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "pkgName"

    aput-object v4, v3, v0

    const-string v5, "%s = ?"

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lccsansan/as/addDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 2
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v6, "cId"

    aput-object v6, v5, v1

    const-string v7, "%s = ? and %s = ?"

    invoke-static {v2, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lccsansan/as/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 3
    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v0

    const-string v8, "adId"

    aput-object v8, v5, v1

    invoke-static {v2, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lccsansan/as/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v5, 0x3

    .line 4
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v0

    aput-object v8, v5, v1

    aput-object v6, v5, v3

    const-string v4, "%s = ? and %s = ? and %s = ?"

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lccsansan/as/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    .line 5
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "app_status"

    aput-object v5, v4, v0

    aput-object v5, v4, v1

    const-string v1, "%s <= ? and %s >= ?"

    invoke-static {v2, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    sget v1, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_0

    const/16 v1, 0x61

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v1, 0x62

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/aj/getDownloadingList;
    .locals 7

    .line 193
    nop

    .line 167
    new-instance v0, Lccsansan/aj/getDownloadingList;

    invoke-direct {v0}, Lccsansan/aj/getDownloadingList;-><init>()V

    .line 168
    const-string v1, "pkgName"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    .line 169
    const-string v1, "adId"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 170
    const-string v1, "cId"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    .line 171
    const-string v1, "app_status"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->fromInt(I)Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 172
    const-string v1, "is_reserved"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    .line 173
    const-string v1, "portal"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    .line 174
    const-string v1, "appName"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, 0xb

    const/4 v3, 0x0

    invoke-static {v3, v3}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-static {v3, v3}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v5

    add-int/lit16 v5, v5, 0xbb

    const-string v6, "\t\uffec\ufffb\ufff8\u0006\u0003\u0005\u000e\u0006\ufffb\u0003"

    invoke-static {v6, v1, v2, v4, v5}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 176
    const-string v1, "gpUrl"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->resume:Ljava/lang/String;

    .line 177
    const-string v1, "minisiteUrl"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->deleteDownList:Ljava/lang/String;

    .line 178
    const-string v1, "iconUrl"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->pause:Ljava/lang/String;

    .line 179
    const-string v1, "minOsVersion"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccsansan/aj/getDownloadingList;->getDownloadedCount:I

    .line 180
    const-string v1, "osBits"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccsansan/aj/getDownloadingList;->getDownloadingCount:I

    .line 181
    const-string v1, "versionCode"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lccsansan/aj/getDownloadingList;->getDownloadStatusByUrl:I

    .line 182
    const-string v1, "versionName"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->getDownloadedList:Ljava/lang/String;

    .line 183
    const-string v1, "apkSize"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/aj/getDownloadingList;->getPackageNameByRecord:J

    .line 184
    const-string v1, "useableNetStatus"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lccsansan/aj/getDownloadingList$unifiedDownload;->fromInt(I)Lccsansan/aj/getDownloadingList$unifiedDownload;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->trackReportShow:Lccsansan/aj/getDownloadingList$unifiedDownload;

    .line 185
    const-string v1, "appReleaseTime"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    .line 186
    const-string v1, "timeZone"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/aj/getDownloadingList;->IncentiveSDK:J

    .line 187
    const-string v1, "createTime"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/aj/getDownloadingList;->trackReportClick:J

    .line 188
    const-string v1, "read_flag"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->IncentiveSDK$1:Ljava/lang/Boolean;

    .line 189
    const-string v1, "auto_reserve"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->shouldTryHandlingAction:Ljava/lang/Boolean;

    .line 190
    const-string v1, "track_urls"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->execute:Ljava/lang/String;

    .line 191
    const-string v1, "md5"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsansan/aj/getDownloadingList;->resolveUrl:Ljava/lang/String;

    .line 192
    const-string v1, "extra"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    .line 193
    iput-boolean v3, v0, Lccsansan/aj/getDownloadingList;->performAction:Z

    sget p1, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x38

    goto :goto_0

    :cond_0
    const/16 p1, 0xd

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;
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

    sget v5, Lccsansan/as/addDownloadListener;->getDownloadingList:I

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

.method static unifiedDownload()V
    .locals 1

    const/16 v0, 0x52

    sput v0, Lccsansan/as/addDownloadListener;->getDownloadingList:I

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/aj/getDownloadingList;",
            ">;"
        }
    .end annotation

    .line 67
    sget v0, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 39
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return-object v2

    .line 43
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :try_start_0
    new-array v7, v1, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p2, v7, v11

    const/4 p2, 0x1

    aput-object p3, v7, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v11, v11, v11}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x10

    invoke-static {v11, v11}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0xc

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int v4, v4, 0xbd

    const-string v5, "\u0007\u000b\ufffa\ufff4\ufff9\u0004\u000c\u0003\u0001\u0004\ufff6\ufff9\u0007\ufffa\u0008\ufffa"

    invoke-static {v5, v11, p3, v3, v4}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 47
    :try_start_1
    sget-object v6, Lccsansan/as/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v2

    .line 48
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    .line 67
    sget p1, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_2

    .line 48
    :cond_2
    if-eqz v2, :cond_3

    .line 67
    const/16 p1, 0x2a

    goto :goto_0

    :cond_3
    const/16 p1, 0x61

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 59
    :try_start_2
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    sget p1, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr p1, v1

    goto :goto_1

    .line 59
    :catch_0
    move-exception p1

    :goto_1
    :pswitch_0
    nop

    .line 67
    return-object v0

    .line 60
    :cond_4
    :pswitch_1
    :try_start_3
    invoke-direct {p0, v2}, Lccsansan/as/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/aj/getDownloadingList;

    move-result-object p1

    .line 61
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_5

    .line 67
    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    packed-switch p1, :pswitch_data_1

    .line 62
    if-eqz v2, :cond_7

    goto :goto_5

    .line 67
    :catch_1
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_6

    :try_start_4
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    :cond_6
    :goto_3
    throw p1

    :goto_4
    if-eqz v2, :cond_7

    :goto_5
    :try_start_5
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    :cond_7
    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/aj/getDownloadingList;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    monitor-enter p0

    .line 100
    nop

    .line 68
    :try_start_0
    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    .line 72
    invoke-static/range {p3 .. p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    .line 100
    :pswitch_0
    sget v0, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 68
    :cond_1
    nop

    .line 100
    monitor-exit p0

    return-object v4

    .line 72
    :goto_1
    if-eqz v0, :cond_2

    .line 73
    :try_start_1
    invoke-virtual/range {p0 .. p2}, Lccsansan/as/addDownloadListener;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_2
    nop

    .line 77
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    :try_start_3
    new-array v11, v5, [Ljava/lang/String;

    aput-object p2, v11, v3

    aput-object p3, v11, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "\u0007\u000b\ufffa\ufff4\ufff9\u0004\u000c\u0003\u0001\u0004\ufff6\ufff9\u0007\ufffa\u0008\ufffa"

    const/4 v7, 0x0

    invoke-static {v3, v7, v7}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v8

    cmpl-float v7, v8, v7

    add-int/lit8 v7, v7, 0x10

    const/16 v8, 0x30

    invoke-static {v8}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v8

    add-int/lit8 v8, v8, -0x24

    invoke-static {v3}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v9

    add-int/lit16 v9, v9, 0xbd

    invoke-static {v0, v3, v7, v8, v9}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v9, 0x0

    .line 81
    :try_start_5
    sget-object v10, Lccsansan/as/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v4

    .line 82
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 82
    if-eqz v4, :cond_6

    goto :goto_3

    .line 93
    :cond_4
    :pswitch_1
    invoke-direct {p0, v4}, Lccsansan/as/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/aj/getDownloadingList;

    move-result-object v0

    .line 94
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_4

    .line 100
    :try_start_6
    sget v0, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/2addr v0, v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v0, :cond_5

    .line 95
    :cond_5
    if-eqz v4, :cond_8

    goto :goto_8

    .line 100
    :goto_3
    const/16 v0, 0x27

    goto :goto_4

    :cond_6
    const/16 v0, 0x38

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 92
    :try_start_7
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catch_0
    move-exception v0

    :goto_5
    :pswitch_2
    monitor-exit p0

    return-object v6

    .line 100
    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_7

    :try_start_8
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :catch_2
    move-exception v0

    :cond_7
    :goto_6
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_7
    if-eqz v4, :cond_8

    :goto_8
    :try_start_a
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_9

    :catch_3
    move-exception v0

    :cond_8
    :goto_9
    monitor-exit p0

    return-object v6

    .line 67
    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/aj/getDownloadingList;)Z
    .locals 16

    move-object/from16 v0, p2

    .line 18
    sget v1, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v11, v1, [Ljava/lang/String;

    iget-object v3, v0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    aput-object v3, v11, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, ""

    const/16 v13, 0x30

    invoke-static {v12, v13, v2, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    rsub-int/lit8 v3, v3, 0xf

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0xc

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit16 v5, v5, 0xbd

    const-string v14, "\u0007\u000b\ufffa\ufff4\ufff9\u0004\u000c\u0003\u0001\u0004\ufff6\ufff9\u0007\ufffa\u0008\ufffa"

    invoke-static {v14, v2, v3, v4, v5}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2
    :try_start_1
    sget-object v15, Lccsansan/as/addDownloadListener;->unifiedDownload:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-object v6, v15

    move-object v7, v11

    invoke-virtual/range {v3 .. v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 18
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 3
    if-eqz v3, :cond_6

    goto/16 :goto_4

    .line 5
    :pswitch_0
    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V

    .line 12
    :cond_2
    new-instance v3, Lccsanandroid/content/ContentValues;

    invoke-direct {v3}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "app_status"

    .line 13
    :try_start_2
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    invoke-virtual {v5}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->toInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "is_reserved"

    .line 14
    :try_start_3
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "read_flag"

    .line 15
    :try_start_4
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->IncentiveSDK$1:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, "extra"

    .line 16
    :try_start_5
    iget-object v0, v0, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    invoke-static {v2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-static {v12}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-static {v12, v13, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    rsub-int v5, v5, 0xbc

    invoke-static {v14, v2, v0, v4, v5}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 18
    move-object/from16 v4, p1

    :try_start_6
    invoke-virtual {v4, v0, v3, v15, v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    sget v0, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v2, v0, 0x67

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    :cond_5
    :goto_3
    return v1

    .line 5
    :goto_4
    :try_start_7
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 18
    nop

    .line 5
    :cond_6
    return v2

    .line 18
    :catch_0
    move-exception v0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/aj/getDownloadingList;",
            ">;"
        }
    .end annotation

    .line 166
    nop

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "\u0007\u000b\ufffa\ufff4\ufff9\u0004\u000c\u0003\u0001\u0004\ufff6\ufff9\u0007\ufffa\u0008\ufffa"

    const/16 v3, 0x30

    invoke-static {v3}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v3

    rsub-int/lit8 v3, v3, 0x40

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xc

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/lit16 v5, v5, 0xbd

    const/4 v6, 0x0

    invoke-static {v0, v6, v3, v4, v5}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 147
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v2

    .line 148
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 148
    move-object v4, p0

    if-eqz v2, :cond_3

    goto :goto_3

    .line 158
    :goto_1
    :pswitch_0
    move-object v4, p0

    :try_start_1
    invoke-direct {p0, v2}, Lccsansan/as/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/aj/getDownloadingList;

    move-result-object v0

    .line 159
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 166
    const/16 v0, 0x45

    goto :goto_2

    :cond_1
    const/16 v0, 0x49

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    sget v0, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 160
    :cond_2
    if-eqz v2, :cond_5

    .line 166
    goto :goto_7

    .line 160
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 164
    :catch_0
    move-exception v0

    goto :goto_6

    .line 166
    :goto_3
    const/4 v6, 0x1

    goto :goto_4

    :cond_3
    nop

    :goto_4
    packed-switch v6, :pswitch_data_2

    .line 157
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    :pswitch_2
    return-object v1

    .line 164
    :catch_1
    move-exception v0

    move-object v4, p0

    goto :goto_6

    .line 160
    :catchall_1
    move-exception v0

    move-object v4, p0

    :goto_5
    if-eqz v2, :cond_4

    .line 164
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :goto_6
    if-eqz v2, :cond_5

    .line 166
    :goto_7
    invoke-interface {v2}, Lccsanandroid/database/Cursor;->close()V

    sget v0, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    :cond_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/aj/getDownloadingList;",
            ">;"
        }
    .end annotation

    .line 64
    sget v0, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    :try_start_0
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_1

    goto :goto_1

    .line 64
    :goto_3
    sget p1, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    .line 37
    return-object v3

    .line 41
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    :try_start_1
    new-array v8, v1, [Ljava/lang/String;

    aput-object p2, v8, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {v2, v2}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x10

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v9, "\u0007\u000b\ufffa\ufff4\ufff9\u0004\u000c\u0003\u0001\u0004\ufff6\ufff9\u0007\ufffa\u0008\ufffa"

    cmp-long v10, v4, v6

    rsub-int/lit8 v4, v10, 0xd

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit16 v5, v5, 0xbd

    invoke-static {v9, v2, p2, v4, v5}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 45
    :try_start_2
    sget-object v7, Lccsansan/as/addDownloadListener;->unifiedDownload:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 46
    :try_start_3
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p2, :cond_4

    if-eqz p1, :cond_2

    .line 56
    :try_start_4
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 64
    goto :goto_4

    .line 56
    :catch_0
    move-exception p1

    :cond_2
    :goto_4
    nop

    .line 37
    sget p1, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_5
    packed-switch v1, :pswitch_data_1

    .line 64
    return-object v0

    .line 37
    :pswitch_1
    :try_start_5
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    .line 57
    :cond_4
    :try_start_6
    invoke-direct {p0, p1}, Lccsansan/as/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/aj/getDownloadingList;

    move-result-object p2

    .line 58
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez p2, :cond_4

    if-eqz p1, :cond_6

    goto :goto_9

    .line 64
    :catchall_1
    move-exception p2

    move-object v3, p1

    goto :goto_6

    :catch_1
    move-exception p2

    move-object v3, p1

    goto :goto_8

    :catchall_2
    move-exception p2

    :goto_6
    if-eqz v3, :cond_5

    :try_start_7
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    :cond_5
    :goto_7
    throw p2

    :catch_3
    move-exception p1

    :goto_8
    if-eqz v3, :cond_6

    move-object p1, v3

    :goto_9
    :try_start_8
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_a

    :catch_4
    move-exception p1

    :cond_6
    :goto_a
    return-object v0

    :catchall_3
    move-exception p1

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;
    .locals 13

    .line 143
    sget v0, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 104
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :goto_2
    return-object v4

    .line 108
    :cond_1
    invoke-static/range {p3 .. p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 104
    sget v0, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-static/range {p4 .. p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :try_start_1
    array-length v5, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 108
    :cond_2
    invoke-static/range {p4 .. p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    move-object v6, p0

    goto/16 :goto_11

    :cond_3
    const/4 v0, 0x3

    .line 121
    :try_start_2
    new-array v9, v0, [Ljava/lang/String;

    aput-object p2, v9, v3

    aput-object p3, v9, v2

    aput-object p4, v9, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x10

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-string v10, "\u0007\u000b\ufffa\ufff4\ufff9\u0004\u000c\u0003\u0001\u0004\ufff6\ufff9\u0007\ufffa\u0008\ufffa"

    cmp-long v11, v5, v7

    rsub-int/lit8 v5, v11, 0xd

    invoke-static {v3, v3}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    rsub-int v6, v6, 0xbd

    invoke-static {v10, v3, v0, v5, v6}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 122
    :try_start_3
    sget-object v8, Lccsansan/as/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 123
    :try_start_4
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v0, :cond_4

    .line 131
    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 123
    move-object v6, p0

    if-eqz v5, :cond_5

    goto :goto_5

    .line 132
    :pswitch_1
    move-object v6, p0

    :try_start_5
    invoke-direct {p0, v5}, Lccsansan/as/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/database/Cursor;)Lccsansan/aj/getDownloadingList;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_8

    goto :goto_f

    .line 137
    :catchall_2
    move-exception v0

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_e

    .line 131
    :goto_5
    const/16 v0, 0x1a

    goto :goto_6

    :cond_5
    const/16 v0, 0x4e

    :goto_6
    packed-switch v0, :pswitch_data_2

    :goto_7
    goto :goto_a

    .line 104
    :pswitch_2
    sget v0, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_6

    .line 131
    const/16 v0, 0x45

    goto :goto_8

    :cond_6
    const/16 v0, 0x2d

    :goto_8
    packed-switch v0, :pswitch_data_3

    :try_start_6
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->close()V

    goto :goto_9

    :pswitch_3
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    :goto_9
    const/16 v0, 0x19

    :try_start_7
    div-int/2addr v0, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    .line 104
    :catchall_3
    move-exception v0

    move-object v1, v0

    throw v1

    .line 131
    :goto_a
    return-object v4

    .line 137
    :catchall_4
    move-exception v0

    move-object v6, p0

    :goto_b
    move-object v1, v0

    move-object v4, v5

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v6, p0

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v6, p0

    move-object v1, v0

    :goto_c
    if-eqz v4, :cond_7

    :try_start_8
    invoke-interface {v4}, Lccsanandroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    :cond_7
    :goto_d
    throw v1

    :catch_4
    move-exception v0

    move-object v6, p0

    move-object v5, v4

    :goto_e
    if-eqz v5, :cond_8

    :goto_f
    :try_start_9
    invoke-interface {v5}, Lccsanandroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_10

    :catch_5
    move-exception v0

    :cond_8
    :goto_10
    return-object v4

    .line 108
    :cond_9
    move-object v6, p0

    .line 141
    :goto_11
    invoke-virtual/range {p0 .. p3}, Lccsansan/as/addDownloadListener;->getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 131
    goto :goto_12

    :cond_a
    const/4 v2, 0x0

    :goto_12
    packed-switch v2, :pswitch_data_4

    goto :goto_13

    .line 142
    :pswitch_4
    nop

    .line 143
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/aj/getDownloadingList;

    return-object v0

    :cond_b
    :goto_13
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2d
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/aj/getDownloadingList;)Z
    .locals 10

    .line 36
    sget v0, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p2, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v4, p2, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v5, p2, Lccsansan/aj/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v4, v5}, Lccsansan/as/addDownloadListener;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    goto/16 :goto_4

    :cond_0
    iget-object v0, p2, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object v4, p2, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v5, p2, Lccsansan/aj/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v4, v5}, Lccsansan/as/addDownloadListener;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5
    :cond_2
    :pswitch_0
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "pkgName"

    .line 6
    :try_start_1
    iget-object v5, p2, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "adId"

    .line 7
    :try_start_2
    iget-object v5, p2, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "cId"

    .line 8
    :try_start_3
    iget-object v5, p2, Lccsansan/aj/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "app_status"

    .line 9
    :try_start_4
    iget-object v5, p2, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    invoke-virtual {v5}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->toInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, "is_reserved"

    .line 10
    :try_start_5
    iget-object v5, p2, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v4, "portal"

    .line 11
    :try_start_6
    iget-object v5, p2, Lccsansan/aj/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v4, "appName"

    .line 12
    :try_start_7
    iget-object v5, p2, Lccsansan/aj/getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v4, ""

    invoke-static {v4}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    invoke-static {v3, v3}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/lit16 v7, v7, 0xbb

    const-string v8, "\t\uffec\ufffb\ufff8\u0006\u0003\u0005\u000e\u0006\ufffb\u0003"

    invoke-static {v8, v2, v5, v6, v7}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 13
    :try_start_8
    iget-object v6, p2, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v5, "gpUrl"

    .line 14
    :try_start_9
    iget-object v6, p2, Lccsansan/aj/getDownloadingList;->resume:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v5, "minisiteUrl"

    .line 15
    :try_start_a
    iget-object v6, p2, Lccsansan/aj/getDownloadingList;->deleteDownList:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v5, "iconUrl"

    .line 16
    :try_start_b
    iget-object v6, p2, Lccsansan/aj/getDownloadingList;->pause:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v5, "minOsVersion"

    .line 17
    :try_start_c
    iget v6, p2, Lccsansan/aj/getDownloadingList;->getDownloadedCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v5, "osBits"

    .line 18
    :try_start_d
    iget v6, p2, Lccsansan/aj/getDownloadingList;->getDownloadingCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v5, "versionName"

    .line 19
    :try_start_e
    iget-object v6, p2, Lccsansan/aj/getDownloadingList;->getDownloadedList:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const-string v5, "versionCode"

    .line 20
    :try_start_f
    iget v6, p2, Lccsansan/aj/getDownloadingList;->getDownloadStatusByUrl:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const-string v5, "apkSize"

    .line 21
    :try_start_10
    iget-wide v6, p2, Lccsansan/aj/getDownloadingList;->getPackageNameByRecord:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const-string v5, "useableNetStatus"

    .line 22
    :try_start_11
    iget-object v6, p2, Lccsansan/aj/getDownloadingList;->trackReportShow:Lccsansan/aj/getDownloadingList$unifiedDownload;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lccsansan/aj/getDownloadingList$unifiedDownload;->toInt()I

    move-result v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    .line 1
    sget v7, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v7, v7, 0x71

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_3

    .line 36
    :cond_3
    goto :goto_2

    .line 22
    :cond_4
    const/4 v6, 0x1

    :goto_2
    :try_start_12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    const-string v5, "appReleaseTime"

    .line 23
    :try_start_13
    iget-wide v6, p2, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    const-string v5, "timeZone"

    .line 24
    :try_start_14
    iget-wide v6, p2, Lccsansan/aj/getDownloadingList;->IncentiveSDK:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    const-string v5, "createTime"

    .line 25
    :try_start_15
    iget-wide v6, p2, Lccsansan/aj/getDownloadingList;->trackReportClick:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    const-string v5, "read_flag"

    .line 26
    :try_start_16
    iget-object v6, p2, Lccsansan/aj/getDownloadingList;->IncentiveSDK$1:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    const-string v5, "auto_reserve"

    .line 27
    :try_start_17
    iget-object v6, p2, Lccsansan/aj/getDownloadingList;->shouldTryHandlingAction:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    const-string v5, "track_urls"

    .line 28
    :try_start_18
    iget-object v6, p2, Lccsansan/aj/getDownloadingList;->execute:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    const-string v5, "md5"

    .line 29
    :try_start_19
    iget-object v6, p2, Lccsansan/aj/getDownloadingList;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    const-string v5, "extra"

    .line 30
    :try_start_1a
    iget-object p2, p2, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v0, v5, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "\u0007\u000b\ufffa\ufff4\ufff9\u0004\u000c\u0003\u0001\u0004\ufff6\ufff9\u0007\ufffa\u0008\ufffa"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    rsub-int/lit8 v7, v7, 0xf

    invoke-static {v3}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    const/16 v9, 0x30

    invoke-static {v4, v9, v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int v4, v4, 0xbc

    invoke-static {p2, v3, v7, v8, v4}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    .line 32
    invoke-virtual {p1, p2, v4, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-ltz v0, :cond_5

    .line 1
    const/16 p1, 0x3e

    goto :goto_3

    :cond_5
    const/16 p1, 0x2f

    :goto_3
    packed-switch p1, :pswitch_data_1

    const/4 v2, 0x0

    goto :goto_5

    .line 32
    :pswitch_1
    goto :goto_5

    .line 3
    :goto_4
    invoke-virtual {p0, p1, p2}, Lccsansan/as/addDownloadListener;->unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/aj/getDownloadingList;)Z

    move-result p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    .line 36
    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    :goto_5
    sget p1, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    .line 1
    goto :goto_6

    :cond_6
    const/16 v1, 0xd

    :goto_6
    packed-switch v1, :pswitch_data_2

    .line 36
    return v2

    :pswitch_2
    const/16 p1, 0x56

    :try_start_1b
    div-int/2addr p1, v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e
        :pswitch_2
    .end packed-switch
.end method

.method public unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/aj/getDownloadingList;)Z
    .locals 15

    move-object/from16 v0, p2

    .line 38
    nop

    .line 0
    const/4 v1, 0x3

    .line 1
    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, v0, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v3, v0, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v3, v1, v11

    iget-object v3, v0, Lccsansan/aj/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    const/4 v12, 0x2

    aput-object v3, v1, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, -0xfffff0

    invoke-static {v2, v2, v2}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    rsub-int/lit8 v4, v4, 0xc

    invoke-static {v2}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v5

    add-int/lit16 v5, v5, 0xbd

    const-string v13, "\u0007\u000b\ufffa\ufff4\ufff9\u0004\u000c\u0003\u0001\u0004\ufff6\ufff9\u0007\ufffa\u0008\ufffa"

    invoke-static {v13, v2, v3, v4, v5}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 2
    :try_start_1
    sget-object v14, Lccsansan/as/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-object v6, v14

    move-object v7, v1

    invoke-virtual/range {v3 .. v10}, Lccsanandroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v4, :cond_0

    .line 38
    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    sget v0, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v0, 0x53

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v1, v12

    if-eqz v1, :cond_4

    goto/16 :goto_3

    .line 5
    :pswitch_0
    if-eqz v3, :cond_1

    .line 10
    :try_start_2
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    sget v3, Lccsansan/as/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0x41

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v3, v12

    if-eqz v3, :cond_1

    .line 12
    :cond_1
    :try_start_3
    new-instance v3, Lccsanandroid/content/ContentValues;

    invoke-direct {v3}, Lccsanandroid/content/ContentValues;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "app_status"

    .line 13
    :try_start_4
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    invoke-virtual {v5}, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->toInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, "is_reserved"

    .line 14
    :try_start_5
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v4, "adId"

    .line 15
    :try_start_6
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v4, "cId"

    .line 16
    :try_start_7
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v4, "portal"

    .line 17
    :try_start_8
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v4, "appName"

    .line 18
    :try_start_9
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v4, "versionCode"

    .line 19
    :try_start_a
    iget v5, v0, Lccsansan/aj/getDownloadingList;->getDownloadStatusByUrl:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v4, "versionName"

    .line 20
    :try_start_b
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->getDownloadedList:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    invoke-static {v2, v2}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xb

    invoke-static {v2}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0xa

    const-string v6, ""

    const/16 v7, 0x30

    invoke-static {v6, v7, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v8

    rsub-int v8, v8, 0xba

    const-string v9, "\t\uffec\ufffb\ufff8\u0006\u0003\u0005\u000e\u0006\ufffb\u0003"

    invoke-static {v9, v11, v4, v5, v8}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 21
    :try_start_c
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v4, "gpUrl"

    .line 22
    :try_start_d
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->resume:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v4, "minisiteUrl"

    .line 23
    :try_start_e
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->deleteDownList:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const-string v4, "iconUrl"

    .line 24
    :try_start_f
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->pause:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const-string v4, "minOsVersion"

    .line 25
    :try_start_10
    iget v5, v0, Lccsansan/aj/getDownloadingList;->getDownloadedCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const-string v4, "osBits"

    .line 26
    :try_start_11
    iget v5, v0, Lccsansan/aj/getDownloadingList;->getDownloadingCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const-string v4, "apkSize"

    .line 27
    :try_start_12
    iget-wide v8, v0, Lccsansan/aj/getDownloadingList;->getPackageNameByRecord:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    const-string v4, "useableNetStatus"

    .line 28
    :try_start_13
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->trackReportShow:Lccsansan/aj/getDownloadingList$unifiedDownload;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lccsansan/aj/getDownloadingList$unifiedDownload;->toInt()I

    move-result v5

    .line 38
    goto :goto_1

    .line 28
    :cond_2
    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    const-string v4, "appReleaseTime"

    .line 29
    :try_start_14
    iget-wide v8, v0, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    const-string v4, "timeZone"

    .line 30
    :try_start_15
    iget-wide v8, v0, Lccsansan/aj/getDownloadingList;->IncentiveSDK:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    const-string v4, "createTime"

    .line 31
    :try_start_16
    iget-wide v8, v0, Lccsansan/aj/getDownloadingList;->trackReportClick:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    const-string v4, "read_flag"

    .line 32
    :try_start_17
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->IncentiveSDK$1:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    const-string v4, "auto_reserve"

    .line 33
    :try_start_18
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->shouldTryHandlingAction:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    const-string v4, "track_urls"

    .line 34
    :try_start_19
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->execute:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    const-string v4, "md5"

    .line 35
    :try_start_1a
    iget-object v5, v0, Lccsansan/aj/getDownloadingList;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    const-string v4, "extra"

    .line 36
    :try_start_1b
    iget-object v0, v0, Lccsansan/aj/getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    invoke-static {v6, v7, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    invoke-static {v6, v6, v2, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0xc

    const v5, 0x10000bd

    invoke-static {v2, v2, v2}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v13, v2, v0, v4, v6}, Lccsansan/as/addDownloadListener;->getDownloadingList(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 38
    move-object/from16 v4, p1

    :try_start_1c
    invoke-virtual {v4, v0, v3, v14, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    const/4 v2, 0x1

    :pswitch_1
    return v2

    .line 3
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 38
    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    packed-switch v11, :pswitch_data_2

    goto :goto_5

    :pswitch_2
    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v0, v12

    if-eqz v0, :cond_6

    .line 5
    :cond_6
    :try_start_1d
    invoke-interface {v3}, Lccsanandroid/database/Cursor;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_5
    nop

    .line 38
    return v2

    :catch_0
    move-exception v0

    return v2

    nop

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
        :pswitch_2
    .end packed-switch
.end method
