.class public Lccsansan/p/getDownloadingList;
.super Lccsanandroid/database/ContentObserver;
.source ""


# static fields
.field public static IncentiveDownloadUtils:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static IncentiveSDK:Z

.field private static deleteDownList:[C

.field private static getDownloadingCount:J

.field public static getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static getPackageNameByRecord:Z

.field private static pause:[C

.field private static resume:I

.field private static trackReportClick:I

.field private static trackReportShow:I

.field private static final unifiedDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final addDownloadListener:Lccsanandroid/content/Context;

.field private final deleteDownItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/cy/resume;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadStatusByUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadedCount:Lccsanandroid/os/Handler;

.field private final getDownloadedList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadedRecordByUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadingRecordByUrl:Lccsansan/bw/AdError;

.field private final removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    const/4 v0, 0x1

    sput v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    invoke-static {}, Lccsansan/p/getDownloadingList;->getDownloadingList()V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsansan/p/getDownloadingList;->unifiedDownload:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsansan/p/getDownloadingList;->getDownloadingList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/List;

    sget v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lccsanandroid/database/ContentObserver;-><init>(Lccsanandroid/os/Handler;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lccsansan/p/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    .line 3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lccsansan/p/getDownloadingList;->getDownloadStatusByUrl:Ljava/util/Map;

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lccsansan/p/getDownloadingList;->getDownloadedList:Ljava/util/Map;

    .line 5
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lccsansan/p/getDownloadingList;->getDownloadedRecordByUrl:Ljava/util/Map;

    .line 6
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lccsansan/p/getDownloadingList;->deleteDownItem:Ljava/util/Map;

    .line 8
    new-instance p2, Lccsansan/p/getDownloadingList$addDownloadListener;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lccsansan/p/getDownloadingList$addDownloadListener;-><init>(Lccsansan/p/getDownloadingList;Lccsanandroid/os/Looper;)V

    iput-object p2, p0, Lccsansan/p/getDownloadingList;->getDownloadedCount:Lccsanandroid/os/Handler;

    .line 49
    iput-object p1, p0, Lccsansan/p/getDownloadingList;->addDownloadListener:Lccsanandroid/content/Context;

    .line 50
    new-instance p2, Lccsansan/bw/AdError;

    invoke-direct {p2, p1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsansan/p/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/bw/AdError;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/p/getDownloadingList;)Ljava/util/Map;
    .locals 2

    .line 1
    sget v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/p/getDownloadingList;->getDownloadedRecordByUrl:Ljava/util/Map;

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;J)V
    .locals 28

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 967
    nop

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    const/4 v7, 0x0

    invoke-static {v1, v7, v7}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v2

    const/high16 v3, -0x1000000

    invoke-static {v7, v7, v7}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x1a

    invoke-static {v2, v3, v4}, Lccsansan/p/getDownloadingList;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "AD.CPI.Observer"

    invoke-static {v13, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-wide/16 v15, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-static {v2}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    add-int/lit8 v2, v2, -0x16

    const v3, 0xd4fc

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    int-to-char v3, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    cmp-long v6, v4, v15

    rsub-int/lit8 v4, v6, 0x26

    invoke-static {v2, v3, v4}, Lccsansan/p/getDownloadingList;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 18
    iget-object v2, v11, Lccsansan/p/getDownloadingList;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v22}, Lccsanandroid/content/ContentResolver;->query(Lccsanandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_17
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v10, :cond_38

    .line 19
    :try_start_1
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v15, v10

    const/4 v14, 0x0

    const/16 v20, 0x1

    goto/16 :goto_2a

    :cond_0
    const-string v2, "current_bytes"

    .line 27
    invoke-interface {v10, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "total_bytes"

    .line 28
    invoke-interface {v10, v4}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/high16 v17, 0x42c80000    # 100.0f

    cmp-long v18, v4, v15

    if-gtz v18, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    long-to-float v2, v2

    mul-float v2, v2, v17

    long-to-float v3, v4

    div-float/2addr v2, v3

    move v3, v2

    :goto_0
    const-string v2, "title"

    .line 31
    invoke-interface {v10, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v18, :cond_2

    .line 748
    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    const/16 v18, 0x0

    :goto_1
    packed-switch v18, :pswitch_data_0

    goto :goto_3

    .line 32
    :pswitch_0
    :try_start_2
    sget-object v8, Lccsansan/p/getDownloadingList;->getDownloadingList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    cmpg-float v8, v3, v17

    if-gez v8, :cond_5

    if-eqz v10, :cond_4

    .line 967
    sget v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 138
    :cond_3
    :try_start_3
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 967
    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    :cond_4
    :goto_2
    return-void

    .line 959
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v9, v10

    goto/16 :goto_27

    :catch_1
    move-exception v0

    move-object v9, v10

    const/16 v4, 0x14

    const/4 v14, 0x0

    goto/16 :goto_2f

    .line 139
    :cond_5
    :goto_3
    :try_start_4
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v8, :cond_7

    :try_start_5
    sget-object v8, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_7

    if-eqz v10, :cond_6

    .line 242
    :try_start_6
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    :cond_6
    :goto_4
    return-void

    :cond_7
    :try_start_7
    const-string v8, "uri"

    .line 243
    invoke-interface {v10, v8}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 244
    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_13
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v19, :cond_8

    .line 245
    :try_start_8
    invoke-static {v8}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v14

    const-string v6, "packageName"

    invoke-virtual {v14, v6}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 244
    :cond_8
    const/4 v6, 0x0

    .line 245
    :goto_5
    nop

    .line 247
    :try_start_9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    rsub-int/lit8 v9, v21, 0x3f

    invoke-static {v1}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v7

    add-int/lit16 v7, v7, 0x60f4

    int-to-char v7, v7

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v23

    cmp-long v25, v23, v15

    rsub-int/lit8 v15, v25, 0x29

    invoke-static {v9, v7, v15}, Lccsansan/p/getDownloadingList;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", title: "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_13
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v7, :cond_c

    :try_start_a
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 748
    const/16 v7, 0x63

    goto :goto_6

    :cond_9
    const/16 v7, 0x50

    :goto_6
    packed-switch v7, :pswitch_data_1

    goto :goto_8

    .line 248
    :pswitch_1
    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v0, 0x0

    invoke-static {v1, v0, v0}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x67

    const v2, 0x10077ee

    invoke-static {v0, v0, v0}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v3

    add-int/2addr v3, v2

    int-to-char v2, v3

    invoke-static {v0, v0}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    invoke-static {v1, v2, v0}, Lccsansan/p/getDownloadingList;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v13, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v10, :cond_b

    .line 748
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    .line 343
    :cond_a
    :try_start_b
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    :cond_b
    :goto_7
    return-void

    .line 344
    :cond_c
    :goto_8
    :try_start_c
    invoke-direct {v11, v6, v2}, Lccsansan/p/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v7

    .line 346
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_13
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v1, :cond_d

    if-eqz v7, :cond_d

    .line 347
    :try_start_d
    iget-object v1, v7, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v9, v1

    goto :goto_9

    :cond_d
    move-object v9, v6

    .line 349
    :goto_9
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-static {v6, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v14

    const-wide/16 v23, 0x0

    cmp-long v6, v14, v23

    add-int/lit16 v6, v6, 0x80

    const-string v14, "\u0091\u0088\u0095\u0083\u0094\u0084\u0093\u0091\u0092\u0082\u0081\u0091\u0090\u008f\u0086\u008e\u0083\u0082\u0081\u008d\u008c\u008b\u008a\u0084\u0082\u0088\u0085\u0083\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    const/4 v15, 0x0

    :try_start_f
    invoke-static {v15, v6, v15, v14}, Lccsansan/p/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_12
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_13
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v7, :cond_f

    .line 748
    sget v6, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 v6, v6, 0x19

    rem-int/lit16 v14, v6, 0x80

    sput v14, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_e

    .line 967
    :cond_e
    const/4 v6, 0x1

    goto :goto_a

    .line 349
    :cond_f
    const/4 v6, 0x0

    :goto_a
    :try_start_11
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_13
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v7, :cond_12

    .line 350
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v1, v7, Lccsansan/m/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    sub-long v14, v14, v25

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    invoke-static {}, Lccsansan/cy/unifiedDownload;->removeDownloadListener()J

    move-result-wide v25

    cmp-long v1, v14, v25

    if-gez v1, :cond_12

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v0

    rsub-int v0, v0, 0x8e

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x33

    invoke-static {v0, v1, v2}, Lccsansan/p/getDownloadingList;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v13, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v10, :cond_11

    .line 748
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    .line 434
    :cond_10
    :try_start_13
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    :cond_11
    :goto_b
    nop

    .line 967
    return-void

    .line 434
    :cond_12
    if-eqz v7, :cond_16

    .line 435
    :try_start_14
    iget-object v1, v7, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v23, 0x0

    cmp-long v1, v14, v23

    if-eqz v1, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v1, v7, Lccsansan/m/removeDownloadListener;->getPackageNameByRecord:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    sub-long v14, v14, v25

    invoke-static {}, Lccsansan/cy/unifiedDownload;->unifiedDownload()J

    move-result-wide v25

    cmp-long v1, v14, v25

    if-ltz v1, :cond_15

    .line 436
    iget-object v1, v11, Lccsansan/p/getDownloadingList;->getDownloadedList:Ljava/util/Map;

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-nez v1, :cond_14

    .line 748
    sget v1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v6, v1, 0x80

    sput v6, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    .line 437
    :cond_13
    :try_start_15
    iget-object v1, v11, Lccsansan/p/getDownloadingList;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v6, v7, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v14, v7, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    move-wide v15, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v6, v14, v4, v5}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 438
    iget-object v1, v7, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, v7, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v5, v7, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v1, v4, v2, v6, v5}, Lccsansan/l/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 439
    iget-object v1, v11, Lccsansan/p/getDownloadingList;->getDownloadedList:Ljava/util/Map;

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 436
    :cond_14
    move-wide v15, v4

    const/4 v6, 0x1

    goto :goto_c

    .line 435
    :cond_15
    move-wide v15, v4

    const/4 v6, 0x1

    goto :goto_c

    .line 434
    :cond_16
    move-wide v15, v4

    const/4 v6, 0x1

    .line 439
    :goto_c
    const/16 v0, 0x2b

    const/16 v14, 0x57

    if-eqz v7, :cond_20

    .line 443
    iget-object v1, v7, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    if-eqz v1, :cond_1f

    iget-boolean v1, v1, Lccsansan/m/getDownloadingRecordByUrl;->removeDownloadListener:Z

    if-eqz v1, :cond_1f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x7f

    const-string v4, "\u0098\u0096\u0086\u0098\u0088\u008b\u0097\u0091\u008c\u0097\u0096\u0091\u0090\u008f\u0086\u008e\u0083\u0082\u0081\u008d\u008c\u008b\u008a\u0084\u0082\u0088\u0085\u0083\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    const/4 v5, 0x0

    :try_start_16
    invoke-static {v5, v1, v5, v4}, Lccsansan/p/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :try_start_17
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v13, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v1, v7, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget v1, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadingList:I

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_18

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x7f

    const-string v2, "\u0091\u009a\u008b\u0086\u008e\u008e\u008c\u008b\u0098\u0091\u0089\u0088\u0085\u0086\u0099\u0091\u0092\u0092\u0086\u008b\u008e\u0088\u008b\u0097\u0091\u0084\u0082\u0088\u0085\u0083\u0089\u0088\u0084\u0091\u0090\u008f\u0086\u008e\u0083\u0082\u0081\u008d\u008c\u008b\u008a\u0084\u0082\u0088\u0085\u0083\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    const/4 v4, 0x0

    :try_start_18
    invoke-static {v4, v1, v4, v2}, Lccsansan/p/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :try_start_19
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v10, :cond_17

    .line 514
    :try_start_1a
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    :cond_17
    :goto_d
    return-void

    .line 959
    :catch_6
    move-exception v0

    move-object v14, v4

    goto :goto_12

    .line 515
    :cond_18
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 516
    iget-object v1, v7, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v25
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    const-wide/16 v23, 0x0

    cmp-long v1, v25, v23

    if-eqz v1, :cond_1d

    .line 748
    sget v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/2addr v1, v14

    rem-int/lit16 v6, v1, 0x80

    sput v6, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_19

    .line 517
    :cond_19
    :try_start_1c
    invoke-direct {v11, v7, v12, v4, v5}, Lccsansan/p/getDownloadingList;->unifiedDownload(Lccsansan/m/removeDownloadListener;Ljava/lang/String;J)Z

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    if-eqz v1, :cond_1a

    .line 748
    const/4 v1, 0x0

    goto :goto_e

    :cond_1a
    const/4 v1, 0x1

    :goto_e
    packed-switch v1, :pswitch_data_2

    .line 517
    if-eqz v10, :cond_1c

    goto :goto_f

    .line 748
    :pswitch_2
    move-object/from16 v26, v2

    move v0, v3

    const/16 v20, 0x1

    goto :goto_13

    .line 967
    :goto_f
    sget v1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    .line 579
    :cond_1b
    :try_start_1d
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7

    goto :goto_10

    :catch_7
    move-exception v0

    :cond_1c
    :goto_10
    return-void

    .line 580
    :cond_1d
    move-object/from16 v1, p0

    move-object v6, v2

    move-object v2, v7

    move v0, v3

    move-object/from16 v3, p1

    move-object/from16 v26, v6

    const/16 v20, 0x1

    :try_start_1e
    invoke-direct/range {v1 .. v6}, Lccsansan/p/getDownloadingList;->unifiedDownload(Lccsansan/m/removeDownloadListener;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    if-eqz v1, :cond_21

    if-eqz v10, :cond_1e

    .line 639
    :try_start_1f
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8

    goto :goto_11

    :catch_8
    move-exception v0

    :cond_1e
    :goto_11
    return-void

    .line 959
    :catch_9
    move-exception v0

    move-object v14, v5

    :goto_12
    move-object v9, v10

    goto/16 :goto_29

    .line 443
    :cond_1f
    move-object/from16 v26, v2

    move v0, v3

    const/16 v20, 0x1

    goto :goto_13

    .line 439
    :cond_20
    move-object/from16 v26, v2

    move v0, v3

    const/16 v20, 0x1

    .line 639
    :cond_21
    :goto_13
    const-wide/32 v1, 0x240c8400

    if-eqz v7, :cond_24

    .line 640
    :try_start_20
    iget-object v3, v7, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v27, v3, v5

    if-eqz v27, :cond_23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v7, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-gtz v5, :cond_23

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have clicked ad, just return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v0, v11, Lccsansan/p/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    if-eqz v10, :cond_22

    .line 748
    const/16 v0, 0x57

    goto :goto_14

    :cond_22
    const/16 v0, 0x2b

    :goto_14
    packed-switch v0, :pswitch_data_3

    goto :goto_15

    .line 694
    :pswitch_3
    :try_start_21
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_a

    goto :goto_15

    :catch_a
    move-exception v0

    :goto_15
    return-void

    .line 640
    :cond_23
    move-object/from16 v3, v26

    goto :goto_16

    .line 639
    :cond_24
    move-object/from16 v3, v26

    .line 695
    :goto_16
    :try_start_22
    invoke-direct {v11, v0, v8}, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils(FLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 748
    const/4 v6, 0x1

    goto :goto_17

    :cond_25
    const/4 v6, 0x0

    :goto_17
    packed-switch v6, :pswitch_data_4

    move-object v15, v10

    goto/16 :goto_24

    .line 696
    :pswitch_4
    invoke-static {}, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_13
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    if-eqz v4, :cond_2a

    .line 698
    :try_start_23
    invoke-static {}, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 699
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    if-eqz v5, :cond_26

    const/4 v7, 0x1

    goto :goto_18

    .line 698
    :cond_27
    const/4 v7, 0x0

    .line 699
    :goto_18
    if-nez v7, :cond_2a

    .line 748
    sget v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_28

    .line 705
    :cond_28
    :try_start_24
    iget-object v0, v11, Lccsansan/p/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    if-eqz v10, :cond_29

    .line 743
    :try_start_25
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_b

    goto :goto_19

    :catch_b
    move-exception v0

    :cond_29
    :goto_19
    return-void

    .line 744
    :cond_2a
    :try_start_26
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getDownloadingRecordByUrl()Z

    move-result v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_13
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    if-nez v4, :cond_30

    .line 745
    :try_start_27
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-static {v8}, Lccsansan/cb/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1a

    :cond_2b
    move-object v4, v3

    :goto_1a
    cmpg-float v5, v0, v17

    if-gez v5, :cond_2f

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, v11, Lccsansan/p/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/bw/AdError;

    invoke-virtual {v7, v4}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v20

    sub-long v5, v5, v20

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    cmp-long v7, v5, v1

    if-gez v7, :cond_2f

    .line 967
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2d

    .line 747
    :try_start_28
    iget-object v0, v11, Lccsansan/p/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v0, v11, Lccsansan/p/getDownloadingList;->getDownloadStatusByUrl:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    const/4 v1, 0x0

    :try_start_29
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    if-eqz v10, :cond_2c

    const/16 v0, 0x36

    goto :goto_1b

    :cond_2c
    const/16 v0, 0x49

    :goto_1b
    packed-switch v0, :pswitch_data_5

    goto :goto_1c

    .line 967
    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 747
    :cond_2d
    :try_start_2a
    iget-object v0, v11, Lccsansan/p/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v0, v11, Lccsansan/p/getDownloadingList;->getDownloadStatusByUrl:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_1
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    if-eqz v10, :cond_2e

    .line 777
    :pswitch_5
    :try_start_2b
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_c

    goto :goto_1c

    :catch_c
    move-exception v0

    :cond_2e
    :goto_1c
    return-void

    .line 778
    :cond_2f
    :try_start_2c
    iget-object v1, v11, Lccsansan/p/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/bw/AdError;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_1
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 781
    :cond_30
    :try_start_2d
    iget-object v1, v11, Lccsansan/p/getDownloadingList;->getDownloadStatusByUrl:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_13
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    if-eqz v1, :cond_33

    .line 967
    sget v1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_31

    .line 748
    const/16 v1, 0x23

    goto :goto_1d

    :cond_31
    const/16 v1, 0x2c

    :goto_1d
    packed-switch v1, :pswitch_data_6

    .line 967
    :try_start_2e
    iget-object v1, v11, Lccsansan/p/getDownloadingList;->getDownloadStatusByUrl:Ljava/util/Map;

    goto :goto_1e

    .line 781
    :pswitch_6
    iget-object v1, v11, Lccsansan/p/getDownloadingList;->getDownloadStatusByUrl:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v14, 0x0

    if-eqz v1, :cond_34

    goto :goto_1f

    .line 967
    :goto_1e
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_1
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    const/4 v14, 0x0

    :try_start_2f
    array-length v2, v14
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    if-eqz v1, :cond_34

    .line 781
    :goto_1f
    cmpg-float v1, v0, v17

    if-gez v1, :cond_34

    if-eqz v10, :cond_32

    .line 748
    const/16 v0, 0x13

    goto :goto_20

    :cond_32
    const/16 v0, 0x5f

    :goto_20
    packed-switch v0, :pswitch_data_7

    .line 804
    :try_start_30
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_d

    .line 967
    goto :goto_21

    .line 804
    :catch_d
    move-exception v0

    :goto_21
    :pswitch_7
    return-void

    .line 781
    :cond_33
    const/4 v14, 0x0

    .line 805
    :cond_34
    :try_start_31
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_11
    .catchall {:try_start_31 .. :try_end_31} :catchall_3

    if-nez v1, :cond_37

    :try_start_32
    iget-object v1, v11, Lccsansan/p/getDownloadingList;->deleteDownItem:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 806
    iget-object v1, v11, Lccsansan/p/getDownloadingList;->deleteDownItem:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/cy/resume;

    if-eqz v1, :cond_36

    .line 807
    invoke-virtual {v1}, Lccsanandroid/os/AsyncTask;->getStatus()Lccsanandroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Lccsanandroid/os/AsyncTask$Status;->FINISHED:Lccsanandroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Lccsanandroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_f
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    if-nez v1, :cond_36

    if-eqz v10, :cond_35

    .line 824
    :try_start_33
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_e

    goto :goto_22

    :catch_e
    move-exception v0

    :cond_35
    :goto_22
    return-void

    .line 825
    :cond_36
    :try_start_34
    iget-object v1, v11, Lccsansan/p/getDownloadingList;->deleteDownItem:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_f
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    goto :goto_23

    .line 959
    :catch_f
    move-exception v0

    goto/16 :goto_12

    .line 827
    :cond_37
    :goto_23
    :try_start_35
    iget-object v1, v11, Lccsansan/p/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    iget-object v1, v11, Lccsansan/p/getDownloadingList;->getDownloadStatusByUrl:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_11
    .catchall {:try_start_35 .. :try_end_35} :catchall_3

    .line 830
    move-object/from16 v1, p0

    move-object v2, v9

    move-object v4, v8

    move v5, v0

    move-wide v6, v15

    move-object/from16 v8, p1

    move-object v15, v10

    move-wide/from16 v9, p2

    :try_start_36
    invoke-direct/range {v1 .. v10}, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJLjava/lang/String;J)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_10
    .catchall {:try_start_36 .. :try_end_36} :catchall_2

    goto :goto_24

    .line 959
    :catchall_2
    move-exception v0

    goto :goto_26

    :catch_10
    move-exception v0

    goto :goto_28

    :catch_11
    move-exception v0

    goto :goto_25

    .line 830
    :goto_24
    if-eqz v15, :cond_3b

    move-object v10, v15

    goto/16 :goto_30

    .line 959
    :catch_12
    move-exception v0

    move-object v14, v15

    :goto_25
    move-object v15, v10

    goto :goto_28

    :catchall_3
    move-exception v0

    move-object v15, v10

    :goto_26
    move-object v1, v0

    move-object v9, v15

    :goto_27
    const/16 v4, 0x14

    goto/16 :goto_32

    :catch_13
    move-exception v0

    move-object v15, v10

    const/4 v14, 0x0

    :goto_28
    move-object v9, v15

    :goto_29
    const/16 v4, 0x14

    goto :goto_2f

    .line 18
    :cond_38
    move-object v15, v10

    const/4 v14, 0x0

    const/16 v20, 0x1

    .line 840
    :goto_2a
    :try_start_37
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0xc1

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-static {v2}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v3
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_16
    .catchall {:try_start_37 .. :try_end_37} :catchall_5

    const/16 v4, 0x14

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x6

    const/16 v5, 0x23

    rsub-int/lit8 v8, v3, 0x23

    :try_start_38
    invoke-static {v0, v1, v8}, Lccsansan/p/getDownloadingList;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 841
    invoke-static {v13, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_15
    .catchall {:try_start_38 .. :try_end_38} :catchall_4

    if-eqz v15, :cond_39

    .line 748
    const/4 v7, 0x0

    goto :goto_2b

    :cond_39
    const/4 v7, 0x1

    :goto_2b
    packed-switch v7, :pswitch_data_8

    goto :goto_2c

    .line 959
    :pswitch_8
    :try_start_39
    invoke-interface {v15}, Lccsanandroid/database/Cursor;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_14

    goto :goto_2c

    :catch_14
    move-exception v0

    :goto_2c
    return-void

    :catchall_4
    move-exception v0

    goto :goto_2d

    :catch_15
    move-exception v0

    goto :goto_2e

    :catchall_5
    move-exception v0

    const/16 v4, 0x14

    :goto_2d
    move-object v1, v0

    move-object v9, v15

    goto :goto_32

    :catch_16
    move-exception v0

    const/16 v4, 0x14

    :goto_2e
    move-object v9, v15

    goto :goto_2f

    :catchall_6
    move-exception v0

    const/16 v4, 0x14

    const/4 v14, 0x0

    move-object v1, v0

    move-object v9, v14

    goto :goto_32

    :catch_17
    move-exception v0

    const/16 v4, 0x14

    const/4 v14, 0x0

    move-object v9, v14

    .line 960
    :goto_2f
    :try_start_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    add-int/lit8 v7, v7, 0x7e

    const-string v2, "\u009c\u0083\u0088\u008c\u0098\u0097\u0086\u0096\u009b\u0086\u0091\u0090\u008f\u0086\u008e\u0083\u0082\u0081\u008d\u008c\u008b\u008a\u0084\u0082\u0088\u0085\u0083\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v14, v7, v14, v2}, Lccsansan/p/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    sget-object v0, Lccsansan/p/getDownloadingList;->unifiedDownload:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 962
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_7

    :cond_3a
    if-eqz v9, :cond_3b

    move-object v10, v9

    .line 840
    :goto_30
    :try_start_3b
    invoke-interface {v10}, Lccsanandroid/database/Cursor;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_18

    goto :goto_31

    :catch_18
    move-exception v0

    .line 962
    :cond_3b
    :goto_31
    return-void

    .line 959
    :catchall_7
    move-exception v0

    move-object v1, v0

    .line 962
    :goto_32
    if-eqz v9, :cond_3c

    .line 748
    const/16 v14, 0x14

    goto :goto_33

    :cond_3c
    const/16 v14, 0xc

    :goto_33
    packed-switch v14, :pswitch_data_9

    .line 967
    :try_start_3c
    invoke-interface {v9}, Lccsanandroid/database/Cursor;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_19

    goto :goto_34

    :catch_19
    move-exception v0

    :goto_34
    :pswitch_9
    goto :goto_36

    :goto_35
    throw v1

    :goto_36
    goto :goto_35

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x63
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x57
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x36
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2c
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x5f
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xc
        :pswitch_9
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1003
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 999
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0xe

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1003
    :catchall_0
    move-exception p1

    throw p1

    .line 999
    :goto_2
    return-void

    .line 1002
    :cond_1
    invoke-static {p1}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1003
    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lccsansan/p/getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsansan/p/getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsansan/p/getDownloadingList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    sget p1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJLjava/lang/String;J)V
    .locals 13

    .line 971
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v12, Lccsansan/p/getDownloadingList$removeDownloadListener;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p8

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lccsansan/p/getDownloadingList$removeDownloadListener;-><init>(Lccsansan/p/getDownloadingList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJJLjava/lang/String;)V

    invoke-virtual {v0, v12}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(FLjava/lang/String;)Z
    .locals 4

    .line 975
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/cy/unifiedDownload;->performAction()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/cy/unifiedDownload;->performAction()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :goto_1
    goto :goto_4

    :goto_2
    const/16 v3, 0x30

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :goto_4
    invoke-static {}, Lccsansan/cy/unifiedDownload;->ActionTypeDownload()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_3

    :cond_2
    :pswitch_1
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    :cond_3
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x26

    goto :goto_5

    :cond_4
    const/16 p1, 0x33

    :goto_5
    packed-switch p1, :pswitch_data_2

    goto :goto_7

    :pswitch_2
    sget p1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_6

    :cond_5
    const/4 p1, 0x1

    :goto_6
    packed-switch p1, :pswitch_data_3

    const/4 v1, 0x0

    :pswitch_3
    move v2, v1

    :cond_6
    :goto_7
    return v2

    :catchall_0
    move-exception p1

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x26
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/p/getDownloadingList;)Lccsanandroid/content/Context;
    .locals 2

    .line 1
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    const/16 v0, 0x45

    :goto_0
    iget-object p0, p0, Lccsansan/p/getDownloadingList;->addDownloadListener:Lccsanandroid/content/Context;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener(Lccsanandroid/net/Uri;)Ljava/lang/String;
    .locals 10

    .line 998
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 995
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 998
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 996
    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v3, v2, :cond_3

    const-string v3, "AD.CPI.Observer"

    .line 997
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    rsub-int v5, v9, 0x80

    const-string v6, "\u009c\u0098\u0092\u008c\u00a5\u0085\u0082\u0096\u0088\u0085\u0091\u0084\u0094\u0084\u0082\u0088\u00a5\u0083\u0089\u0088\u0087\u0086\u008b\u008c\u009d\u00a4\u0096\u0082\u00a3"

    invoke-static {v0, v5, v0, v6}, Lccsansan/p/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/16 v0, 0x1f

    goto :goto_1

    :cond_2
    const/16 v0, 0x24

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object p1

    :goto_2
    const/16 v0, 0x5f

    :try_start_2
    div-int/2addr v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    move-exception p1

    :cond_3
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_1
    .end packed-switch
.end method

.method private addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    .locals 3

    .line 994
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 991
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x4d

    const/4 v2, 0x0

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 994
    :catchall_0
    move-exception p1

    throw p1

    .line 991
    :cond_1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x4a

    goto :goto_1

    :cond_2
    const/16 v0, 0x3c

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_4

    .line 993
    :pswitch_0
    const/4 p1, 0x0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 991
    const/16 v0, 0x26

    goto :goto_3

    :cond_3
    const/16 v0, 0x57

    :goto_3
    packed-switch v0, :pswitch_data_2

    .line 994
    iget-object p1, p0, Lccsansan/p/getDownloadingList;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsansan/m/unifiedDownload;->removeDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p1

    goto :goto_5

    .line 992
    :goto_4
    iget-object p2, p0, Lccsansan/p/getDownloadingList;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {p2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p1

    .line 994
    :goto_5
    :pswitch_1
    nop

    .line 991
    sget p2, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 p2, p2, 0x7

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 p2, p2, 0x2

    .line 994
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_1
    .end packed-switch
.end method

.method private addDownloadListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 12
    nop

    .line 5
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 7
    iput-object p1, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    new-instance p1, Lccsanandroid/os/Bundle;

    invoke-direct {p1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 9
    const-string v1, "adId"

    invoke-virtual {p1, v1, p4}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string p4, "pkg"

    invoke-virtual {p1, p4, p5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 12
    iget-object p1, p0, Lccsansan/p/getDownloadingList;->getDownloadedCount:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Lccsanandroid/os/Handler;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    sget p1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method static synthetic getDownloadStatusByUrl(Lccsansan/p/getDownloadingList;)Ljava/util/Map;
    .locals 3

    .line 1
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v1, v0, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/p/getDownloadingList;->getDownloadStatusByUrl:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

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
    return-object p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsansan/p/getDownloadingList;->deleteDownList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/p/getDownloadingList;->getDownloadingCount:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static synthetic getDownloadingList(Lccsansan/p/getDownloadingList;)Ljava/util/Map;
    .locals 3

    .line 1
    sget v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 v1, v0, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x35

    goto :goto_0

    :cond_0
    const/16 v1, 0x57

    :goto_0
    iget-object p0, p0, Lccsansan/p/getDownloadingList;->deleteDownItem:Ljava/util/Map;

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x2f

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 2

    const/16 v0, 0x112

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/p/getDownloadingList;->deleteDownList:[C

    const-wide v0, -0x25e558deaf44bae8L    # -1.1276177259084349E126

    sput-wide v0, Lccsansan/p/getDownloadingList;->getDownloadingCount:J

    const/16 v0, 0x38

    sput v0, Lccsansan/p/getDownloadingList;->resume:I

    const/4 v0, 0x1

    sput-boolean v0, Lccsansan/p/getDownloadingList;->IncentiveSDK:Z

    sput-boolean v0, Lccsansan/p/getDownloadingList;->getPackageNameByRecord:Z

    const/16 v0, 0x25

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lccsansan/p/getDownloadingList;->pause:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x68s
        0x4579s
        -0x75a2s
        -0x30d4s
        0x140cs
        0x591ds
        -0x612cs
        -0x1c39s
        0x28b7s
        0x6db6s
        -0x4d64s
        -0x799s
        0x3d41s
        -0x7da4s
        -0x38fbs
        0xc1as
        0x51e9s
        -0x6925s
        -0x2428s
        0x20a9s
        0x658es
        -0x5561s
        -0xf8bs
        0x3500s
        0x7a69s
        -0x4088s
        -0x2b61s
        -0x6e75s
        0x5ea2s
        0x1bc0s
        -0x3f07s
        -0x7216s
        0x4a18s
        0x376es
        -0x3eds
        -0x46f5s
        0x6668s
        0x2c9bs
        -0x1655s
        0x56aas
        0x13c0s
        -0x2705s
        -0x7ae3s
        0x4200s
        0xf3fs
        -0xbe5s
        -0x4e94s
        0x7e71s
        0x248es
        -0x1e48s
        -0x512bs
        0x6bc7s
        -0x2f2ds
        -0x62f0s
        0x5a33s
        0x733s
        -0x33bes
        -0x7688s
        0x7793s
        0x3c85s
        -0x658s
        -0x5939s
        0x63b3s
        0x609bs
        0x258as
        -0x1553s
        -0x5021s
        0x74ffs
        0x39ees
        -0x1d9s
        -0x7cccs
        0x4844s
        0xd45s
        -0x2d91s
        -0x676cs
        0x5db2s
        -0x1d51s
        -0x580as
        0x6ce9s
        0x311as
        -0x9d8s
        -0x44d5s
        0x405as
        0x57ds
        -0x3594s
        -0x6f7as
        0x55f3s
        0x1a9as
        -0x2075s
        0x64f3s
        0x291as
        -0x11d0s
        -0x4ce0s
        0x7842s
        0x3d7cs
        -0x3c6as
        -0x7735s
        0x4dads
        0x12das
        -0x2802s
        -0x6312s
        0x2159s
        -0x1985s
        0x7786s
        0x3297s
        -0x250s
        -0x473es
        0x63e2s
        0x2ef3s
        -0x16c6s
        -0x6bd7s
        0x5f59s
        0x1a58s
        -0x3a8es
        -0x7077s
        0x4aafs
        -0xa4es
        -0x4f15s
        0x7bf4s
        0x2607s
        -0x1ecbs
        -0x53cas
        0x5747s
        0x1260s
        -0x228fs
        -0x7865s
        0x42ees
        0xd87s
        -0x376as
        0x73f0s
        0x3e09s
        -0x692s
        -0x5be0s
        0x6f5fs
        0x2a6as
        -0x2b79s
        -0x606es
        0x5afes
        0x5c2s
        -0x3f11s
        -0x741es
        0x361fs
        0x68s
        0x4579s
        -0x75a2s
        -0x30d4s
        0x140cs
        0x591ds
        -0x612cs
        -0x1c39s
        0x28b7s
        0x6db6s
        -0x4d64s
        -0x799s
        0x3d41s
        -0x7da4s
        -0x38fbs
        0xc1as
        0x51e9s
        -0x6925s
        -0x2428s
        0x20a9s
        0x658es
        -0x5561s
        -0xf8bs
        0x3500s
        0x7a69s
        -0x4088s
        0x418s
        0x49e9s
        -0x712ds
        -0x2c68s
        0x18a3s
        0x5d9ds
        -0x5c90s
        -0x1798s
        0x2d5cs
        0x722ds
        -0x48f3s
        -0x3e3s
        0x41fes
        -0x7924s
        -0x3420s
        0x10b1s
        0x559es
        -0x64d8s
        -0x1fefs
        0x250as
        0x6a38s
        -0x50f9s
        -0xb0bs
        0x39eas
        0x7ec3s
        0x68s
        0x4579s
        -0x75a2s
        -0x30d4s
        0x140cs
        0x591ds
        -0x612cs
        -0x1c39s
        0x28b7s
        0x6db6s
        -0x4d64s
        -0x799s
        0x3d41s
        -0x7da4s
        -0x38fbs
        0xc1as
        0x51e9s
        -0x6925s
        -0x2428s
        0x20a9s
        0x658es
        -0x5561s
        -0xf8bs
        0x3500s
        0x7a69s
        -0x4088s
        0x41es
        0x49e7s
        -0x7180s
        -0x2c36s
        0x18b5s
        0x5d8bs
        -0x5c91s
        -0x1796s
        0x2d54s
        0x68s
        0x4579s
        -0x75a2s
        -0x30d4s
        0x140cs
        0x591ds
        -0x612cs
        -0x1c39s
        0x28b7s
        0x6db6s
        -0x4d64s
        -0x799s
        0x3d41s
        -0x7da4s
        -0x38fbs
        0xc1as
        0x51e9s
        -0x6925s
        -0x2428s
        0x20a9s
        0x658es
        -0x5561s
        -0xf8bs
        0x3500s
        0x7a69s
        -0x4088s
        0x402s
        0x49eds
        -0x712ds
        -0x2c23s
        0x18bes
        0x5d8cs
        -0x5ce0s
        -0x1785s
        0x2d5cs
        0x7221s
        -0x48fds
        -0x3eds
        0x41b0s
        -0x796cs
        -0x3420s
        0x10efs
        0x5594s
        -0x6497s
        -0x1fa7s
        0x254bs
    .end array-data

    :array_1
    .array-data 2
        0xa0s
        0x99s
        0xa6s
        0x9cs
        0xa4s
        0x9ds
        0x7cs
        0xa7s
        0xafs
        0x8ds
        0xaas
        0xa1s
        0x7bs
        0x9fs
        0x60s
        0x61s
        0x58s
        0xabs
        0x79s
        0x81s
        0x9es
        0x9bs
        0xa8s
        0xacs
        0x9as
        0x72s
        0xb0s
        0x75s
        0xads
        0xa5s
        0xa3s
        0x74s
        0x69s
        0x6as
        0x5bs
        0xa9s
        0x84s
    .end array-data
.end method

.method static synthetic getDownloadingList(Lccsansan/p/getDownloadingList;Ljava/lang/String;J)V
    .locals 2

    .line 3
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    const/16 v0, 0x34

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;J)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x49

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/p/getDownloadingList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList(F)Z
    .locals 6

    .line 974
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    cmpl-float p1, p1, v3

    const/16 v0, 0x26

    :try_start_0
    div-int/2addr v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    .line 0
    :cond_0
    cmpl-float p1, p1, v3

    if-ltz p1, :cond_1

    .line 974
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_2
    goto :goto_2

    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 0
    :cond_3
    invoke-static {v5, v5}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x7f

    const-string v0, "\u0084\u0086\u0084\u0082\u0088\u0085\u0083\u0089\u0088\u0084"

    invoke-static {v4, p1, v4, v0}, Lccsansan/p/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 972
    invoke-static {p1}, Lccsansan/cy/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p1

    .line 974
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :cond_4
    packed-switch v2, :pswitch_data_1

    return p1

    :pswitch_1
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    throw p1

    .line 972
    :goto_2
    invoke-static {v5}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p1

    add-int/lit16 p1, p1, 0x80

    const-string v0, "\u0084\u0082\u0088\u0085\u0083\u0089\u0088\u0084"

    invoke-static {v4, p1, v4, v0}, Lccsansan/p/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 974
    invoke-static {p1}, Lccsansan/cy/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/p/getDownloadingList;)Lccsanandroid/os/Handler;
    .locals 2

    .line 1
    sget v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x3a

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    iget-object p0, p0, Lccsansan/p/getDownloadingList;->getDownloadedCount:Lccsanandroid/os/Handler;

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x4e

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
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
    sget-object v1, Lccsansan/p/getDownloadingList;->pause:[C

    .line 1166
    sget v2, Lccsansan/p/getDownloadingList;->resume:I

    .line 1168
    sget-boolean v3, Lccsansan/p/getDownloadingList;->IncentiveSDK:Z

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
    sget-boolean p3, Lccsansan/p/getDownloadingList;->getPackageNameByRecord:Z

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

.method static synthetic unifiedDownload(Lccsansan/p/getDownloadingList;)Lccsansan/bw/AdError;
    .locals 3

    .line 1
    sget v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 v1, v0, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x4e

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    :goto_0
    const/4 v2, 0x0

    iget-object p0, p0, Lccsansan/p/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/bw/AdError;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    array-length v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x4c

    goto :goto_2

    :cond_1
    const/16 v0, 0x52

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object p0

    :goto_3
    :try_start_1
    array-length v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1
    .end packed-switch
.end method

.method private unifiedDownload(Lccsansan/m/removeDownloadListener;Ljava/lang/String;J)Z
    .locals 7

    .line 990
    nop

    .line 984
    iget-object v1, p1, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget-boolean v1, v1, Lccsansan/m/getDownloadingRecordByUrl;->unifiedDownload:Z

    if-eqz v1, :cond_0

    .line 990
    const/16 v1, 0x46

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    sget v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 984
    :cond_1
    iget-object v1, p1, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p3, v3

    const-wide/32 v5, 0x240c8400

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    .line 990
    const/16 v1, 0x4f

    goto :goto_1

    :cond_2
    const/16 v1, 0x32

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 984
    invoke-static {v2}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    rsub-int v1, v1, 0xe4

    const/high16 v3, 0x1000000

    invoke-static {v2, v2, v2}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v4

    add-int/2addr v4, v3

    int-to-char v3, v4

    invoke-static {v2}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2e

    invoke-static {v1, v3, v4}, Lccsansan/p/getDownloadingList;->getDownloadingList(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 985
    const-string v3, "AD.CPI.Observer"

    invoke-static {v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v1, p0, Lccsansan/p/getDownloadingList;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v3, p1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, p1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, p3, p4}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;J)V

    .line 987
    iget-object v1, p1, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, p1, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget-wide v3, v1, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils:J

    iget-object v5, p1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v6, p1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lccsansan/p/getDownloadingList;->addDownloadListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v1, p1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v2, p1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v5, p1, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    const/4 v4, 0x2

    move-object v0, v1

    move-object v1, v2

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 990
    iget-object v0, p0, Lccsansan/p/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0

    :goto_2
    sget v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 v0, 0x41

    goto :goto_3

    :cond_3
    const/16 v0, 0x18

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    return v2

    :goto_4
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x18
        :pswitch_2
    .end packed-switch
.end method

.method private unifiedDownload(Lccsansan/m/removeDownloadListener;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 14

    move-object v7, p0

    move-object v0, p1

    move-wide/from16 v8, p3

    .line 983
    nop

    .line 976
    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget-boolean v1, v1, Lccsansan/m/getDownloadingRecordByUrl;->addDownloadListener:Z

    if-eqz v1, :cond_0

    .line 983
    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/16 v1, 0x5c

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x2

    packed-switch v1, :pswitch_data_0

    sget v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/2addr v1, v10

    if-nez v1, :cond_1

    .line 976
    :cond_1
    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->resume:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v8, v4

    const-wide/32 v11, 0x2932e00

    cmp-long v1, v4, v11

    if-gez v1, :cond_2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    const-wide/16 v11, 0x0

    const-string v1, "AD.CPI.Observer"

    const-string v6, "\u0092\u008b\u009d\u0088\u0081\u00a2\u00a1\u0091\u00a0\u0091\u009f\u0096\u008c\u0085\u0096\u0091\u0098\u0083\u0086\u009e\u0086\u0085\u0097\u0097\u009d\u0092\u0091\u0090\u008f\u0086\u008e\u0083\u0082\u0081\u008d\u008c\u008b\u008a\u0084\u0082\u0088\u0085\u0083\u0089\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    cmp-long v13, v4, v11

    add-int/lit8 v13, v13, 0x7e

    invoke-static {v3, v13, v3, v6}, Lccsansan/p/getDownloadingList;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 977
    invoke-static {v1, v3}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v1, v7, Lccsansan/p/getDownloadingList;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, v0, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v8, v9}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;J)V

    .line 979
    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget-wide v3, v1, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils:J

    iget-object v5, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v6, v0, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lccsansan/p/getDownloadingList;->addDownloadListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v2, v0, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v6, v0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    const/4 v5, 0x3

    move-wide/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 981
    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v2, v0, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v0, v0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    move-object/from16 v3, p5

    invoke-static {v1, v2, v3, v10, v0}, Lccsansan/l/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 983
    iget-object v0, v7, Lccsansan/p/getDownloadingList;->removeDownloadListener:Ljava/util/List;

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0

    :cond_2
    :pswitch_0
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/2addr v0, v10

    if-eqz v0, :cond_3

    const/16 v0, 0x35

    goto :goto_1

    :cond_3
    const/16 v0, 0x14

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return v2

    :goto_2
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/p/getDownloadingList;F)Z
    .locals 2

    .line 4
    sget v0, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/p/getDownloadingList;->getDownloadingList(F)Z

    move-result p0

    sget p1, Lccsansan/p/getDownloadingList;->trackReportShow:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/getDownloadingList;->trackReportClick:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x27

    goto :goto_0

    :cond_1
    const/16 p1, 0x3f

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/16 p1, 0x1a

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onChange(ZLccsanandroid/net/Uri;)V
    .locals 1

    .line 11
    nop

    .line 1
    invoke-super {p0, p1, p2}, Lccsanandroid/database/ContentObserver;->onChange(ZLccsanandroid/net/Uri;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onChange uri="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AD.CPI.Observer"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Lccsansan/p/getDownloadingList;->addDownloadListener(Lccsanandroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    sget p1, Lccsansan/p/getDownloadingList;->trackReportClick:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/getDownloadingList;->trackReportShow:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    .line 8
    :cond_0
    sget-object p2, Lccsansan/p/getDownloadingList;->unifiedDownload:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p2

    new-instance v0, Lccsansan/p/getDownloadingList$unifiedDownload;

    invoke-direct {v0, p0, p1}, Lccsansan/p/getDownloadingList$unifiedDownload;-><init>(Lccsansan/p/getDownloadingList;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method
