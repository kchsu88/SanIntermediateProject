.class public Lccsancom/san/az/getDownloadingList;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field private static getDownloadStatusByUrl:[S

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:I

.field public static final getDownloadingList:[B

.field private static getDownloadingRecordByUrl:[B

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    invoke-static {}, Lccsancom/san/az/getDownloadingList;->unifiedDownload()V

    const/16 v2, 0x2a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lccsancom/san/az/getDownloadingList;->getDownloadingList:[B

    const/16 v2, 0x25

    sput v2, Lccsancom/san/az/getDownloadingList;->IncentiveDownloadUtils:I

    sget v2, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v2, v2, 0x21

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    const/16 v1, 0x15

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x30t
        -0xat
        0x79t
        0x5t
        -0x15t
        0x2t
        -0x16t
        -0x5t
        -0x2t
        -0x3t
        0x2et
        -0x3dt
        -0x14t
        -0x7t
        -0xet
        0x7t
        -0x11t
        -0xet
        0x3et
        -0x1dt
        -0x34t
        -0x7t
        -0xet
        0x7t
        -0x1bt
        -0x4t
        -0x6t
        -0x17t
        0x1ct
        -0x19t
        -0xat
        -0x10t
        0x2t
        -0xet
        -0x6t
        0x10t
        -0x1ct
        -0x15t
        0x5t
        -0xet
        -0x6t
        -0x15t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(BBB)Ljava/lang/String;
    .locals 8

    sget v0, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v0, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x44

    goto :goto_0

    :cond_0
    const/16 v1, 0x58

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lccsancom/san/az/getDownloadingList;->getDownloadingList:[B

    const/16 v4, 0xd

    shr-int p1, v4, p1

    add-int/lit8 p1, p1, 0x14

    const/16 v4, 0x2c

    rsub-int/lit8 p2, p2, 0x2c

    add-int/lit8 p2, p2, 0x69

    shr-int p0, v4, p0

    const/16 v4, 0x4e

    shr-int p0, v4, p0

    new-array v4, p1, [B

    add-int/lit8 p1, p1, 0x37

    if-nez v1, :cond_2

    goto :goto_2

    :pswitch_0
    sget-object v1, Lccsancom/san/az/getDownloadingList;->getDownloadingList:[B

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x11

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x61

    mul-int/lit8 p0, p0, 0x16

    rsub-int/lit8 p0, p0, 0x1a

    new-array v4, p1, [B

    add-int/lit8 p1, p1, -0x1

    if-nez v1, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    packed-switch v5, :pswitch_data_1

    const/4 v0, 0x0

    goto :goto_6

    :pswitch_1
    const/4 v5, 0x0

    goto :goto_4

    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    const/4 v5, 0x1

    :goto_3
    packed-switch v5, :pswitch_data_2

    const/4 v0, 0x1

    goto :goto_6

    :pswitch_2
    const/4 v5, 0x1

    :goto_4
    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/16 v0, 0x23

    goto :goto_5

    :cond_3
    const/4 v0, 0x0

    :goto_5
    packed-switch v0, :pswitch_data_3

    :pswitch_3
    move v0, p2

    move p2, p1

    move p1, p0

    goto :goto_7

    :goto_6
    int-to-byte v5, p2

    aput-byte v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    if-ne v0, p1, :cond_4

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_4
    aget-byte v0, v1, p0

    move v7, p1

    move p1, p0

    move p0, v0

    move v0, p2

    move p2, v7

    :goto_7
    neg-int p0, p0

    add-int/2addr p1, v3

    add-int/2addr v0, p0

    add-int/lit8 p0, v0, -0x8

    move v0, v5

    move v7, p2

    move p2, p0

    move p0, p1

    move p1, v7

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x23
        :pswitch_3
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(BIIIS)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsancom/san/az/getDownloadingList;->removeDownloadListener:I

    add-int/2addr p2, v2

    .line 1206
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1207
    :goto_0
    if-eqz v3, :cond_2

    .line 1209
    sget-object p2, Lccsancom/san/az/getDownloadingList;->getDownloadingRecordByUrl:[B

    if-eqz p2, :cond_1

    .line 1211
    sget v6, Lccsancom/san/az/getDownloadingList;->addDownloadListener:I

    add-int/2addr v6, p1

    aget-byte p2, p2, v6

    add-int/2addr p2, v2

    int-to-byte p2, p2

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p2, Lccsancom/san/az/getDownloadingList;->getDownloadStatusByUrl:[S

    sget v6, Lccsancom/san/az/getDownloadingList;->addDownloadListener:I

    add-int/2addr v6, p1

    aget-short p2, p2, v6

    add-int/2addr p2, v2

    int-to-short p2, p2

    .line 1223
    :cond_2
    :goto_1
    if-lez p2, :cond_5

    .line 1226
    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x2

    sget v2, Lccsancom/san/az/getDownloadingList;->addDownloadListener:I

    add-int/2addr p1, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p1, v4

    sput p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p0, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsancom/san/az/getDownloadingList;->unifiedDownload:I

    add-int/2addr p3, p0

    int-to-char p0, p3

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

    if-ge p0, p2, :cond_5

    .line 1238
    sget-object p0, Lccsancom/san/az/getDownloadingList;->getDownloadingRecordByUrl:[B

    if-eqz p0, :cond_4

    .line 1240
    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-byte p0, p0, p1

    .line 1241
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p4

    int-to-byte p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    goto :goto_3

    .line 1245
    :cond_4
    sget-object p0, Lccsancom/san/az/getDownloadingList;->getDownloadStatusByUrl:[S

    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-short p0, p0, p1

    .line 1246
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p4

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

.method private getDownloadingList(Lccsanandroid/content/Intent;)V
    .locals 22

    .line 124
    nop

    .line 0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    int-to-byte v2, v2

    const v3, 0x451e18ab

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, -0x10

    const v6, 0x41f7732d

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v6

    const-string v6, ""

    invoke-static {v6}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x8

    int-to-short v8, v8

    invoke-static {v2, v5, v3, v7, v8}, Lccsancom/san/az/getDownloadingList;->IncentiveDownloadUtils(BIIIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v3

    .line 2
    const-string v5, "key_dynamic_app_pkg_name"

    invoke-virtual {v3, v5}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    const-string v7, "android.content.pm.extra.STATUS"

    invoke-virtual {v3, v7}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 4
    const-string v8, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v3, v8}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5
    const-string v9, "key_dynamic_app_az_path"

    invoke-virtual {v3, v9}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " status is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", pkg is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AppReceiver"

    invoke-static {v11, v10}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x4

    const-string v13, ", "

    const/16 v14, 0x30

    const v15, 0x451e189c

    const v16, 0x41f77312

    const/4 v10, 0x0

    const/16 v17, 0x1

    packed-switch v7, :pswitch_data_0

    .line 56
    invoke-static {v9}, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 57
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x1000000

    invoke-static {v4, v4, v4}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v3

    add-int/2addr v3, v1

    int-to-byte v1, v3

    invoke-static {v10, v10}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v3

    cmpl-float v3, v3, v10

    sub-int/2addr v15, v3

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, -0x1

    cmp-long v3, v18, v20

    rsub-int/lit8 v3, v3, -0x19

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int v6, v6, v16

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    add-int/lit8 v10, v10, -0x4b

    int-to-short v10, v10

    invoke-static {v1, v15, v3, v6, v10}, Lccsancom/san/az/getDownloadingList;->IncentiveDownloadUtils(BIIIS)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {v9}, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v5}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 67
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    sub-int/2addr v15, v3

    invoke-static {v6, v14, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    rsub-int/lit8 v3, v3, -0x1b

    const v6, 0x42f77312

    invoke-static {v4, v4, v4}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, -0x4b

    int-to-short v6, v6

    invoke-static {v1, v15, v3, v10, v6}, Lccsancom/san/az/getDownloadingList;->IncentiveDownloadUtils(BIIIS)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v9}, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v5}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    const v1, 0x451e18c4

    invoke-static {v10, v10}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v3

    cmpl-float v3, v3, v10

    sub-int/2addr v1, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, -0x18

    invoke-static {v6, v4}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    sub-int v6, v16, v6

    invoke-static {v4, v4}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v10

    add-int/lit8 v10, v10, -0x4b

    int-to-short v10, v10

    invoke-static {v0, v1, v3, v6, v10}, Lccsancom/san/az/getDownloadingList;->IncentiveDownloadUtils(BIIIS)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v11, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v9}, Lccsancom/san/az/getDownloadingRecordByUrl;->removeDownloadListener(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v5}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 73
    :pswitch_3
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v9}, Lccsancom/san/az/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_0

    .line 75
    :cond_0
    const-string v10, "android.intent.extra.INTENT"

    invoke-virtual {v3, v10}, Lccsanandroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/content/Intent;

    if-eqz v3, :cond_3

    .line 76
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v10

    .line 124
    sget v13, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v13, v13, 0x3b

    rem-int/lit16 v15, v13, 0x80

    sput v15, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v13, v13, 0x2

    if-nez v13, :cond_1

    .line 76
    :cond_1
    :try_start_0
    sget v13, Lccsancom/san/az/getDownloadingList;->IncentiveDownloadUtils:I

    and-int/lit8 v13, v13, 0x3

    int-to-byte v13, v13

    int-to-byte v15, v13

    add-int/lit8 v12, v15, -0x1

    int-to-byte v12, v12

    invoke-static {v13, v15, v12}, Lccsancom/san/az/getDownloadingList;->IncentiveDownloadUtils(BBB)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    int-to-byte v13, v4

    int-to-byte v15, v13

    add-int/lit8 v0, v15, 0x1

    int-to-byte v0, v0

    invoke-static {v13, v15, v0}, Lccsancom/san/az/getDownloadingList;->IncentiveDownloadUtils(BBB)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v10, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v3, v4}, Lccsanandroid/content/pm/PackageManager;->resolveActivity(Lccsanandroid/content/Intent;I)Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, v0, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v14, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    const v12, 0x451e18d5

    invoke-static {v6, v6, v4, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v13

    add-int/2addr v13, v12

    invoke-static {v6, v4}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/lit8 v6, v6, -0x15

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v12

    shr-int/lit8 v12, v12, 0x18

    add-int v12, v12, v16

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v18, 0x0

    cmp-long v16, v14, v18

    add-int/lit8 v14, v16, 0x62

    int-to-short v14, v14

    invoke-static {v10, v13, v6, v12, v14}, Lccsancom/san/az/getDownloadingList;->IncentiveDownloadUtils(BIIIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, v0, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 81
    :try_start_1
    invoke-virtual {v3}, Lccsanandroid/content/Intent;->getFlags()I

    move-result v1

    .line 82
    new-instance v6, Lccsanandroid/content/ComponentName;

    iget-object v10, v0, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lccsanandroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v10, v0}, Lccsanandroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    const/high16 v0, 0x10000000

    or-int/2addr v0, v1

    .line 83
    invoke-virtual {v3, v0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 84
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 85
    invoke-static {v9}, Lccsancom/san/az/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v5}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    .line 76
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    throw v1

    :cond_2
    throw v0

    .line 86
    :cond_3
    if-eqz v3, :cond_5

    .line 124
    sget v0, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 91
    :cond_4
    invoke-virtual {v3}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 94
    :cond_5
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v5}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    sget v0, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    goto :goto_2

    .line 94
    :cond_6
    :goto_0
    return-void

    .line 124
    :goto_1
    sget v0, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 94
    :cond_7
    :goto_2
    if-nez v7, :cond_8

    .line 124
    const/16 v0, 0x2e

    goto :goto_3

    :cond_8
    const/16 v0, 0x51

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 94
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_4
    const/4 v0, 0x0

    .line 122
    :goto_4
    invoke-static {v5, v0, v7, v8, v9}, Lccsancom/san/az/getDownloadingList;->removeDownloadListener(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/util/HashMap;)V

    const/4 v1, -0x1

    if-eq v7, v1, :cond_a

    if-nez v7, :cond_9

    .line 124
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    const/4 v0, 0x1

    :goto_5
    packed-switch v0, :pswitch_data_2

    .line 122
    goto :goto_6

    :pswitch_5
    const/4 v4, 0x1

    .line 124
    :goto_6
    invoke-static {v5, v4, v7, v8}, Lccsancom/san/az/getDownloadingList;->getDownloadingList(Ljava/lang/String;ZILjava/lang/String;)V

    sget v0, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 2

    .line 131
    sget v0, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;ZILjava/lang/String;)V

    sget p0, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    nop

    .line 125
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 126
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "statusCode"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string p0, "errMsg"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string p0, "filePath"

    invoke-virtual {v0, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0
.end method

.method static unifiedDownload()V
    .locals 1

    const/16 v0, 0x2a

    sput v0, Lccsancom/san/az/getDownloadingList;->removeDownloadListener:I

    const v0, -0x41f772c9

    sput v0, Lccsancom/san/az/getDownloadingList;->unifiedDownload:I

    const v0, -0x451e189c

    sput v0, Lccsancom/san/az/getDownloadingList;->addDownloadListener:I

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/getDownloadingList;->getDownloadingRecordByUrl:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        0x8t
        0x4at
        0x44t
        0x4et
        0x53t
        0x46t
        -0x6ft
        -0x1t
        0x4bt
        0x56t
        0x38t
        0x4ct
        0x50t
        0x70t
        -0xat
        -0x7t
        0xbt
        -0x1bt
        -0x7t
        0xct
        -0x15t
        -0x8t
        0x3t
        -0x1bt
        -0x7t
        -0x3t
        -0x3t
        0x2t
        -0x19t
        -0x8t
        0x7t
        -0x6t
        -0xct
        -0xet
        -0xct
        0x4t
        -0x15t
        -0x13t
        0xdt
        0x8t
        0x4at
        0x4ct
        0x4at
        0x4bt
        0x4dt
        0x4bt
        0x39t
        0x4dt
        -0x62t
        -0x1t
        0x4bt
        0x56t
        0x38t
        0x4ct
        0x50t
        0x70t
        0x68t
        -0x5at
        -0x6bt
        -0x3et
        0x6dt
        -0x5et
        -0x58t
        -0x70t
        -0x56t
        -0x6et
        -0x52t
        -0x61t
        -0x22t
        0x51t
        -0x63t
        -0x58t
        -0x76t
        -0x62t
        -0x5et
        -0x3et
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 2

    .line 7
    nop

    .line 0
    if-eqz p2, :cond_0

    .line 7
    const/16 p1, 0x24

    goto :goto_0

    :cond_0
    const/16 p1, 0x1a

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget p1, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 1
    :cond_1
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 3
    :cond_2
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppReceiver"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.san.package.action.az_completed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    sget p1, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto :goto_2

    :cond_4
    invoke-direct {p0, p2}, Lccsancom/san/az/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Intent;)V

    :goto_2
    return-void

    :goto_3
    sget p1, Lccsancom/san/az/getDownloadingList;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/getDownloadingList;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
