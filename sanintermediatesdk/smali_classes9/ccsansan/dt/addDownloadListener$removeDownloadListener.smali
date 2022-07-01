.class public Lccsansan/dt/addDownloadListener$removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dt/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "removeDownloadListener"
.end annotation


# static fields
.field private static execute:I

.field private static getThumbPathByRecord:C

.field private static trackReportClick:I

.field private static trackReportShow:[C


# instance fields
.field private final IncentiveDownloadUtils:Z

.field private final IncentiveSDK:J

.field private final addDownloadListener:I

.field private final deleteDownItem:J

.field private final deleteDownList:Z

.field private final getDownloadStatusByUrl:I

.field private final getDownloadedCount:J

.field private final getDownloadedList:Z

.field private final getDownloadedRecordByUrl:Z

.field private final getDownloadingCount:Z

.field private final getDownloadingList:J

.field private final getDownloadingRecordByUrl:Z

.field private final getPackageNameByRecord:J

.field private final pause:Z

.field private final removeDownloadListener:Z

.field private final resume:Z

.field private final unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    const/4 v0, 0x4

    sput-char v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getThumbPathByRecord:C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportShow:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x62s
        0x64s
        0x5fs
        0x61s
        0x75s
        0x74s
        0x6fs
        0x69s
        0x6es
        0x73s
        0x6cs
        0x72s
        0x77s
        0x6ds
        0x65s
        0x63s
    .end array-data
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v2, "bd_sendtrigger"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    .line 3
    const-string v2, "bd_waittime"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadingList:J

    .line 4
    const-string v2, "bd_resendclick"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->unifiedDownload:Z

    .line 5
    const-string v2, "bd_supplementclick"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->removeDownloadListener:Z

    const-string v2, ""

    const/16 v6, 0x30

    invoke-static {v2, v6, v3}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    rsub-int/lit8 v7, v7, 0xd

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-string v10, "\u0001\u0002\u0003\u0000\u0005\u0006\u0007\u0004\t\n\u0007\u0001\u00e3\u00e3"

    const-string v11, "\u0001\u0002\u0003\u0000\u0005\u0006\u0005\n\u0007\u0001\t\u0007"

    const-string v12, "\u0003\u0004\u0003\u0000\u0005\u0006\u0005\n\u0007\u0001\t\u0007"

    const-string v13, "bi_sendreferrer"

    const-string v14, "\u0003\u0004\u0003\u0000\u0005\u0006\u0005\n\u0007\u0001\t\u0007\u0000\u000e\u0007\u000b\u00e0\u00e0\u0005\u000f\u00d1"

    const-string v15, "cd_sendtrigger"

    const-string v6, "cd_waittime"

    const-string v3, "\r\u0003\u0003\u0000\u0005\u0006\u0007\u0004\t\n\u0007\u0001\u00e6\u00e6"

    const-string v4, "\r\u0003\u0003\u0000\u0005\u0006\u0005\n\u0007\u0001\t\u0007"

    const-string v5, "\u0003\u000b\u0003\u0000\u0005\u0006\u0005\n\u0007\u0001\t\u0007"

    move-object/from16 v18, v5

    const-string v5, "ci_sendreferrer"

    move-object/from16 v19, v5

    const-string v5, "ci_impwaittime"

    move-object/from16 v20, v5

    const-string v5, "\u0003\u000b\u0003\u0000\u0005\u0006\u0005\n\u0007\u0001\t\u0007\u0000\u000e\u0007\u000b\u00dc\u00dc\u0005\u000f\u00cd"

    const-wide/16 v16, 0x0

    cmp-long v21, v8, v16

    add-int/lit8 v8, v21, 0x76

    int-to-byte v8, v8

    invoke-static {v10, v7, v8}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v1, v7}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Z

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0xc

    const/4 v8, 0x0

    invoke-static {v8, v8, v8}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x7c

    int-to-byte v9, v9

    invoke-static {v11, v7, v9}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual {v1, v7}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:Z

    invoke-static {v2, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v7

    add-int/lit8 v7, v7, 0xc

    invoke-static {v2, v8}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v9

    add-int/lit8 v9, v9, 0x57

    int-to-byte v8, v9

    invoke-static {v12, v7, v8}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v1, v7}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:Z

    .line 10
    invoke-virtual {v1, v13}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadedList:Z

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    add-int/lit8 v7, v7, 0x15

    const/16 v8, 0x30

    const/4 v9, 0x0

    invoke-static {v2, v8, v9, v9}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v8

    add-int/lit8 v8, v8, 0x6d

    int-to-byte v8, v8

    invoke-static {v14, v7, v8}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v1, v7}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->deleteDownItem:J

    .line 13
    invoke-virtual {v1, v15, v9}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadStatusByUrl:I

    .line 14
    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadedCount:J

    invoke-static {v9}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/lit8 v6, v6, 0xe

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    add-int/lit8 v7, v7, 0x7a

    int-to-byte v7, v7

    invoke-static {v3, v6, v7}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v1, v3, v9}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->resume:Z

    invoke-static {v9, v9}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x5

    int-to-byte v6, v6

    invoke-static {v4, v3, v6}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v1, v3, v9}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->pause:Z

    invoke-static {v2, v2, v9}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0xc

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, 0x43

    int-to-byte v4, v4

    move-object/from16 v6, v18

    invoke-static {v6, v3, v4}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v1, v3, v9}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->deleteDownList:Z

    .line 19
    move-object/from16 v3, v19

    invoke-virtual {v1, v3}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadingCount:Z

    .line 20
    move-object/from16 v6, v20

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v6, v3, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->IncentiveSDK:J

    invoke-static {v2, v2, v9}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x68

    int-to-byte v6, v6

    invoke-static {v5, v2, v6}, Lccsansan/dt/addDownloadListener$removeDownloadListener;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v2, v3, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getPackageNameByRecord:J

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;
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
    sget-object v1, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportShow:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getThumbPathByRecord:C

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


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    add-int/lit8 v1, v0, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:Z

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveSDK()J
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    add-int/lit8 v1, v0, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-wide v1, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->IncentiveSDK:J

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-wide v1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener()I
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    add-int/lit8 v1, v0, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget v1, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public deleteDownItem()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    add-int/lit8 v1, v0, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-boolean v1, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->resume:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v1, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->resume:Z

    goto :goto_2

    :goto_1
    :try_start_0
    div-int/2addr v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v0, v0, 0x2

    return v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public deleteDownList()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    add-int/lit8 v1, v0, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->pause:Z

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    const/16 v0, 0x60

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 v0, 0x3f

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadStatusByUrl()I
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x3e

    goto :goto_0

    :cond_0
    const/16 v0, 0x52

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadStatusByUrl:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadStatusByUrl:I

    const/16 v1, 0x53

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedCount()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    add-int/lit8 v1, v0, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:Z

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method public getDownloadedList()J
    .locals 5

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    add-int/lit8 v1, v0, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x2a

    goto :goto_0

    :cond_0
    const/16 v1, 0x2f

    :goto_0
    const/4 v2, 0x0

    iget-wide v3, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadedCount:J

    packed-switch v1, :pswitch_data_0

    :try_start_0
    array-length v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x5c

    goto :goto_1

    :cond_1
    const/16 v0, 0xd

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-wide v3

    :goto_2
    :try_start_1
    array-length v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v3

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadedRecordByUrl()J
    .locals 5

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    iget-wide v3, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->deleteDownItem:J

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    array-length v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v0, 0x28

    goto :goto_2

    :cond_1
    const/16 v0, 0xa

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-wide v3

    :goto_3
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-wide v3

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingCount()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Z

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget v1, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()J
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    add-int/lit8 v1, v0, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-wide v1, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadingList:J

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x5c

    goto :goto_0

    :cond_1
    const/16 v0, 0x25

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-wide v1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingRecordByUrl()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadedList:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadedList:Z

    goto :goto_2

    :goto_1
    const/16 v2, 0x47

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method

.method public getThumbPathByRecord()J
    .locals 4

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    add-int/lit8 v1, v0, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x45

    goto :goto_0

    :cond_0
    const/16 v1, 0x3d

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-wide v1, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getPackageNameByRecord:J

    goto :goto_1

    :pswitch_0
    iget-wide v1, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getPackageNameByRecord:J

    goto :goto_2

    :goto_1
    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_1

    return-wide v1

    :pswitch_1
    const/16 v0, 0x34

    :try_start_1
    div-int/2addr v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v1

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public pause()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x38

    goto :goto_0

    :cond_0
    const/16 v0, 0x3d

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->deleteDownList:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->deleteDownList:Z

    const/16 v2, 0x11

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    add-int/lit8 v1, v0, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->unifiedDownload:Z

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x39

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v1

    :goto_1
    const/16 v0, 0x26

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public resume()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->getDownloadingCount:Z

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public unifiedDownload()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/addDownloadListener$removeDownloadListener;->execute:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lccsansan/dt/addDownloadListener$removeDownloadListener;->removeDownloadListener:Z

    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/addDownloadListener$removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method
