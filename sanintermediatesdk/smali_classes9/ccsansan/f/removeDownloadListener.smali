.class public Lccsansan/f/removeDownloadListener;
.super Lccsanandroid/app/Service;
.source ""

# interfaces
.implements Lccsancom/san/xz/api/IDownloadService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/f/removeDownloadListener$getThumbPathByRecord;,
        Lccsansan/f/removeDownloadListener$trackReportClick;
    }
.end annotation


# static fields
.field private static addDownloadListener:Z = true

.field private static getDownloadedCount:I

.field private static getDownloadedList:[C

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingCount:Z

.field private static getDownloadingRecordByUrl:Z

.field private static resume:I


# instance fields
.field private final IncentiveDownloadUtils:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/san/xz/api/unifiedDownload;",
            ">;"
        }
    .end annotation
.end field

.field private deleteDownItem:Lccsanandroid/content/BroadcastReceiver;

.field private getDownloadStatusByUrl:Lccsansan/aw/unifiedDownload;

.field private getDownloadingList:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private removeDownloadListener:Lccsansan/f/removeDownloadListener$trackReportClick;

.field private unifiedDownload:Lccsansan/f/addDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener;->resume:I

    invoke-static {}, Lccsansan/f/removeDownloadListener;->addDownloadListener()V

    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Service;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    .line 16
    new-instance v0, Lccsansan/f/removeDownloadListener$trackReportClick;

    invoke-direct {v0, p0}, Lccsansan/f/removeDownloadListener$trackReportClick;-><init>(Lccsansan/f/removeDownloadListener;)V

    iput-object v0, p0, Lccsansan/f/removeDownloadListener;->removeDownloadListener:Lccsansan/f/removeDownloadListener$trackReportClick;

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsansan/f/removeDownloadListener;->getDownloadingList:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 355
    new-instance v0, Lccsansan/f/removeDownloadListener$resume;

    invoke-direct {v0, p0}, Lccsansan/f/removeDownloadListener$resume;-><init>(Lccsansan/f/removeDownloadListener;)V

    iput-object v0, p0, Lccsansan/f/removeDownloadListener;->deleteDownItem:Lccsanandroid/content/BroadcastReceiver;

    .line 432
    new-instance v0, Lccsansan/f/removeDownloadListener$addDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/f/removeDownloadListener$addDownloadListener;-><init>(Lccsansan/f/removeDownloadListener;)V

    iput-object v0, p0, Lccsansan/f/removeDownloadListener;->getDownloadStatusByUrl:Lccsansan/aw/unifiedDownload;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;)Lccsansan/f/IncentiveDownloadUtils;
    .locals 2

    .line 2
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    :goto_0
    invoke-direct {p0, p1}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Lccsansan/f/IncentiveDownloadUtils;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x15

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/f/removeDownloadListener;)Lccsansan/f/addDownloadListener;
    .locals 2

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ae/getDownloadingList;Lccsancom/san/xz/base/IncentiveDownloadUtils;Ljava/lang/String;)V
    .locals 9

    .line 127
    nop

    .line 121
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "com.san.sdk.ACTION_IXZ_CLOUD_ITEM"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lccsansan/ae/getDownloadingList;->getDownloadedCount()Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x0

    const-string v3, "\u0091\u0089\u008f\u008c\u0090\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087\u0090\u0086\u008a\u008f\u008e\u0089"

    invoke-static {v2, v1, v2, v3}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 123
    invoke-virtual {p2}, Lccsancom/san/xz/base/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v3}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    const-string v5, "\u0094\u0089\u0093\u0090\u0085\u008a\u0092\u0090\u0087\u0092\u0082\u0085\u008d\u0090\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087\u0090\u0086\u008a\u008f\u008e\u0089"

    const-string v6, ""

    const-string v7, "\u0085\u008a\u0092\u0090\u0087\u0092\u0082\u0085\u008d\u0090\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0087\u0090\u0086\u008a\u008f\u008e\u0089"

    const-string v8, "portal"

    cmpl-float v3, v4, v3

    rsub-int/lit8 v3, v3, 0x7f

    invoke-static {v2, v3, v2, v5}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 124
    invoke-virtual {p2}, Lccsancom/san/xz/base/IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, v1}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x7f

    invoke-static {v2, p2, v2, v7}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 125
    invoke-virtual {v0, v8, p3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 126
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    const-class p2, Lccsansan/f/removeDownloadListener;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/Intent;->setClass(Lccsanandroid/content/Context;Ljava/lang/Class;)Lccsanandroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    sget p0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x56

    goto :goto_0

    :cond_0
    const/16 p0, 0x29

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Lccsancom/san/xz/base/XzRecord;ZZLccsansan/aw/getDownloadingRecordByUrl;)V
    .locals 10

    .line 110
    nop

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireOnCompleted record = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " success : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x0

    const-string v4, "\u0089\u008d\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v3, v2, v3, v4}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, p4}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lccsancom/san/xz/api/unifiedDownload;

    .line 99
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v2

    new-instance v9, Lccsansan/f/removeDownloadListener$getDownloadedList;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lccsansan/f/removeDownloadListener$getDownloadedList;-><init>(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/api/unifiedDownload;Lccsancom/san/xz/base/XzRecord;ZLccsansan/aw/getDownloadingRecordByUrl;)V

    invoke-virtual {v2, v9}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 110
    sget v2, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 107
    :cond_1
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    .line 109
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getStatsInfo()Lccsancom/san/xz/base/XzRecord$StatsInfo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lccsancom/san/xz/base/XzRecord$StatsInfo;->setErrorMsg(Lccsansan/aw/getDownloadingRecordByUrl;)V

    .line 110
    invoke-static {p1, p2, p3, v1}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;ZZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 119
    nop

    .line 111
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 112
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/f/removeDownloadListener$deleteDownItem;

    invoke-direct {v1, p0, p1}, Lccsansan/f/removeDownloadListener$deleteDownItem;-><init>(Lccsansan/f/removeDownloadListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 119
    sget p1, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x3a

    goto :goto_1

    :cond_0
    const/16 p1, 0x30

    goto :goto_1

    .line 112
    :cond_1
    const/4 v0, 0x0

    .line 119
    invoke-static {p1, v0}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    sget p1, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/16 p1, 0x24

    goto :goto_0

    :cond_2
    const/16 p1, 0x2d

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils()Z
    .locals 5

    .line 11
    nop

    .line 3
    sget-boolean v0, Lccsansan/f/removeDownloadListener;->addDownloadListener:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v3, v0, 0x5

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    goto :goto_3

    .line 7
    :pswitch_0
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 11
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    .line 7
    nop

    .line 11
    return v2

    .line 7
    :cond_1
    if-nez v0, :cond_3

    .line 11
    invoke-static {}, Lccsansan/aa/getDownloadingList;->addDownloadListener()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x36

    goto :goto_1

    :cond_2
    const/16 v0, 0x33

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    return v2

    :cond_3
    :goto_2
    return v1

    .line 3
    :cond_4
    :goto_3
    nop

    .line 11
    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 1

    const/16 v0, 0x45

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    sput-boolean v0, Lccsansan/f/removeDownloadListener;->getDownloadingCount:Z

    sput-boolean v0, Lccsansan/f/removeDownloadListener;->getDownloadingRecordByUrl:Z

    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/f/removeDownloadListener;->getDownloadedList:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x89s
        0xb4s
        0xbcs
        0xb3s
        0xb1s
        0xa6s
        0xa9s
        0x98s
        0xaas
        0xb7s
        0xbbs
        0xaes
        0xa8s
        0xbds
        0xb9s
        0xa4s
        0xb2s
        0xbas
        0xb0s
        0xbes
        0x86s
        0x93s
        0x7fs
    .end array-data
.end method

.method private addDownloadListener(Lccsanandroid/content/Intent;)V
    .locals 5

    .line 85
    nop

    .line 50
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x0

    const-string v4, "\u0089\u008d\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v3, v2, v3, v4}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 85
    sget p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    const-string v0, "action is null"

    if-nez p1, :cond_0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    add-int/lit8 p1, p1, -0x9

    add-int/lit8 p1, p1, 0x65

    invoke-static {v3, p1, v3, v4}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 53
    :goto_0
    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    add-int/lit8 p1, p1, 0x7f

    invoke-static {v3, p1, v3, v4}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 53
    :cond_1
    nop

    .line 56
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 57
    invoke-virtual {p0}, Lccsanandroid/app/Service;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Lccsanandroid/net/NetworkInfo;

    move-result-object p1

    const/4 v0, 0x5

    if-nez p1, :cond_2

    .line 53
    const/4 v2, 0x5

    goto :goto_1

    :cond_2
    const/4 v2, 0x7

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 57
    const-string p1, ""

    invoke-static {p1}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x7f

    invoke-static {v3, p1, v3, v4}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 59
    const-string v0, "can`t get connectivity manager"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :pswitch_0
    sget-boolean v2, Lccsansan/f/removeDownloadListener;->addDownloadListener:Z

    if-nez v2, :cond_4

    .line 64
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v2, Lccsansan/f/removeDownloadListener$getDownloadedCount;

    invoke-direct {v2, p0}, Lccsansan/f/removeDownloadListener$getDownloadedCount;-><init>(Lccsansan/f/removeDownloadListener;)V

    invoke-virtual {p1, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 85
    sget p1, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 53
    goto :goto_2

    :cond_3
    const/16 v0, 0x2b

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 85
    return-void

    :pswitch_1
    const/16 p1, 0x54

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 72
    :cond_4
    invoke-virtual {p1}, Lccsanandroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 75
    :cond_5
    invoke-virtual {p1}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_8

    .line 85
    sget p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    .line 75
    :cond_6
    invoke-static {}, Lccsansan/aa/getDownloadingList;->addDownloadListener()Z

    move-result p1

    if-nez p1, :cond_8

    .line 76
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsansan/f/removeDownloadListener$IncentiveSDK;

    invoke-direct {v0, p0}, Lccsansan/f/removeDownloadListener$IncentiveSDK;-><init>(Lccsansan/f/removeDownloadListener;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 85
    sget p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_7

    .line 53
    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    nop

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 85
    goto :goto_4

    :pswitch_2
    return-void

    :goto_4
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :cond_8
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsansan/f/removeDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/f/removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/f/removeDownloadListener;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V
    .locals 4

    .line 14
    nop

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireOnPause record = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7e

    const/4 v2, 0x0

    const-string v3, "\u0089\u008d\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v2, v1, v2, v3}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/api/unifiedDownload;

    .line 6
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v2

    new-instance v3, Lccsansan/f/removeDownloadListener$removeDownloadListener;

    invoke-direct {v3, p0, v1, p1}, Lccsansan/f/removeDownloadListener$removeDownloadListener;-><init>(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/api/unifiedDownload;Lccsancom/san/xz/base/XzRecord;)V

    invoke-virtual {v2, v3}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    sget p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method static synthetic addDownloadListener(Lccsansan/f/removeDownloadListener;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    :goto_0
    invoke-direct {p0}, Lccsansan/f/removeDownloadListener;->deleteDownItem()V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x26

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord$Status;Z)V
    .locals 2

    .line 7
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord$Status;Z)V

    sget p0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private deleteDownItem()V
    .locals 2

    .line 2
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsansan/f/removeDownloadListener;->getDownloadedRecordByUrl()V

    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private getDownloadedRecordByUrl()V
    .locals 6

    .line 2
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "\u0089\u008d\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    const-string v4, "releaseWakeLock"

    const-string v5, "\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081\u0097\u0096\u0095\u0088"

    cmpl-float v0, v0, v1

    rsub-int v0, v0, 0x80

    invoke-static {v2, v0, v2, v3}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1
    invoke-static {v0, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x7f

    invoke-static {v2, v0, v2, v5}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsansan/ax/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Lccsansan/ax/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/ax/addDownloadListener;->getDownloadingList()V

    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Lccsansan/f/IncentiveDownloadUtils;
    .locals 2

    .line 120
    new-instance v0, Lccsansan/f/IncentiveDownloadUtils;

    invoke-direct {v0, p1}, Lccsansan/f/IncentiveDownloadUtils;-><init>(Lccsancom/san/xz/base/XzRecord;)V

    sget p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x38

    goto :goto_0

    :cond_0
    const/16 p1, 0x3d

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 p1, 0x42

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList()V
    .locals 2

    .line 4
    nop

    .line 2
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    .line 3
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lccsansan/f/removeDownloadListener;->deleteDownItem:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lccsanandroid/app/Service;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/ae/getDownloadingList;Lccsancom/san/xz/base/IncentiveDownloadUtils;Ljava/lang/String;)V
    .locals 2

    .line 3
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/ae/getDownloadingList;Lccsancom/san/xz/base/IncentiveDownloadUtils;Ljava/lang/String;)V

    sget p0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/16 p0, 0x34

    goto :goto_0

    :cond_2
    const/16 p0, 0x3d

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList(Lccsancom/san/xz/base/XzRecord$Status;)V
    .locals 8

    .line 47
    nop

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v1, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/f/addDownloadListener;->addDownloadListener()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x42

    if-eqz v2, :cond_0

    .line 37
    const/16 v2, 0x61

    goto :goto_1

    :cond_0
    const/16 v2, 0x42

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    .line 47
    sget v2, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v2, v2, 0x79

    rem-int/lit16 v7, v2, 0x80

    sput v7, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    goto :goto_5

    .line 43
    :pswitch_0
    iget-object p1, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {p1}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload()V

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/san/xz/base/XzRecord;

    .line 46
    invoke-direct {p0, v0}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 47
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    goto :goto_2

    :cond_1
    sget p1, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 37
    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    nop

    :goto_3
    packed-switch v5, :pswitch_data_1

    .line 47
    goto :goto_4

    :pswitch_1
    return-void

    :goto_4
    :try_start_0
    array-length p1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    .line 37
    :goto_5
    goto :goto_6

    :cond_3
    const/4 v5, 0x1

    :goto_6
    packed-switch v5, :pswitch_data_2

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/aw/IncentiveDownloadUtils;

    .line 35
    check-cast v2, Lccsansan/f/IncentiveDownloadUtils;

    .line 36
    invoke-virtual {v2}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v4

    sget-object v5, Lccsancom/san/xz/base/XzRecord$Status;->PROCESSING:Lccsancom/san/xz/base/XzRecord$Status;

    if-eq v4, v5, :cond_6

    :goto_7
    goto :goto_8

    .line 47
    :pswitch_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/aw/IncentiveDownloadUtils;

    .line 35
    check-cast v2, Lccsansan/f/IncentiveDownloadUtils;

    .line 36
    invoke-virtual {v2}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v5

    sget-object v6, Lccsancom/san/xz/base/XzRecord$Status;->PROCESSING:Lccsancom/san/xz/base/XzRecord$Status;

    :try_start_1
    array-length v4, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v5, v6, :cond_6

    goto :goto_7

    .line 47
    :catchall_1
    move-exception p1

    throw p1

    :goto_8
    sget v4, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v4, v4, 0x71

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    .line 37
    :cond_4
    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v4

    sget-object v5, Lccsancom/san/xz/base/XzRecord$Status;->WAITING:Lccsancom/san/xz/base/XzRecord$Status;

    if-ne v4, v5, :cond_5

    goto :goto_9

    :cond_5
    const/16 v3, 0x1c

    :goto_9
    packed-switch v3, :pswitch_data_3

    goto/16 :goto_0

    .line 38
    :cond_6
    :pswitch_3
    invoke-virtual {v2, p1}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 39
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget v2, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    :cond_7
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x42
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
    .packed-switch 0x42
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    sget p0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/f/removeDownloadListener;Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    sget p0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/f/removeDownloadListener;)Z
    .locals 2

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x12

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingRecordByUrl()V
    .locals 4

    .line 16
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v0, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7f

    const/4 v2, 0x0

    const-string v3, "\u0089\u008d\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v2, v0, v2, v3}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 15
    const-string v3, "acquireWakeLock"

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v1, v1, v1}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v0

    add-int/lit8 v0, v0, 0x7f

    const-string v3, "\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081\u0097\u0096\u0095\u0088"

    invoke-static {v2, v0, v2, v3}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lccsansan/ax/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Lccsansan/ax/addDownloadListener;

    move-result-object v0

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/ax/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)V

    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

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
    return-void

    :goto_1
    const/16 v0, 0x33

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v1, Lccsansan/f/removeDownloadListener;->getDownloadedList:[C

    .line 1166
    sget v2, Lccsansan/f/removeDownloadListener;->getDownloadedRecordByUrl:I

    .line 1168
    sget-boolean v3, Lccsansan/f/removeDownloadListener;->getDownloadingCount:Z

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
    sget-boolean p3, Lccsansan/f/removeDownloadListener;->getDownloadingRecordByUrl:Z

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

.method private removeDownloadListener()V
    .locals 3

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->deleteDownItem:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lccsanandroid/app/Service;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->deleteDownItem:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lccsanandroid/app/Service;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    goto :goto_2

    :goto_1
    :try_start_0
    array-length v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    array-length v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private removeDownloadListener(Lccsancom/san/xz/base/XzRecord$Status;Z)V
    .locals 5

    .line 49
    nop

    .line 0
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    const-string v2, "\u0089\u008d\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v1, v0, v1, v2}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 49
    const/16 v2, 0x35

    goto :goto_0

    :cond_0
    const/16 v2, 0x24

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 48
    const-string v2, "exclude"

    goto :goto_1

    .line 49
    :pswitch_0
    sget v2, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v3, v2, 0x5

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 48
    :cond_1
    nop

    .line 49
    add-int/lit8 v2, v2, 0x11

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    :cond_2
    const-string v2, "include"

    .line 48
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/f/removeDownloadListener$pause;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/f/removeDownloadListener$pause;-><init>(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord$Status;Z)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    :goto_2
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p1, 0x50

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V
    .locals 4

    .line 23
    nop

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireOnStart record = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x0

    const-string v3, "\u0089\u008d\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v2, v1, v2, v3}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 23
    sget v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/api/unifiedDownload;

    .line 14
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v2

    new-instance v3, Lccsansan/f/removeDownloadListener$getDownloadingList;

    invoke-direct {v3, p0, v1, p1}, Lccsansan/f/removeDownloadListener$getDownloadingList;-><init>(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/api/unifiedDownload;Lccsancom/san/xz/base/XzRecord;)V

    invoke-virtual {v2, v3}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p0, p1}, Lccsansan/ap/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    .line 23
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    sget p1, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/f/removeDownloadListener;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsansan/f/removeDownloadListener;->getDownloadingRecordByUrl()V

    sget p0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;)V
    .locals 2

    .line 4
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    sget p0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x45

    goto :goto_0

    :cond_1
    const/16 p0, 0xc

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;JJ)V
    .locals 2

    .line 6
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x5a

    goto :goto_0

    :cond_0
    const/16 v0, 0x34

    :goto_0
    invoke-direct/range {p0 .. p5}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsancom/san/xz/base/XzRecord;JJ)V

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0x23

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord;ZZLccsansan/aw/getDownloadingRecordByUrl;)V
    .locals 2

    .line 3
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x5f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/xz/base/XzRecord;ZZLccsansan/aw/getDownloadingRecordByUrl;)V

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/f/removeDownloadListener;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 3

    .line 5
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v1, v0, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x22

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    :goto_0
    const/4 v2, 0x0

    iget-object p0, p0, Lccsansan/f/removeDownloadListener;->getDownloadingList:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    return-object p0

    :pswitch_1
    :try_start_1
    array-length v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private unifiedDownload(Lccsancom/san/xz/base/XzRecord;JJ)V
    .locals 16

    .line 96
    nop

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireOnProgress record = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " progress "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p4

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p2

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x0

    const-string v4, "\u0089\u008d\u008c\u008b\u008a\u0089\u0088\u0087\u0086\u0082\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v3, v2, v3, v4}, Lccsansan/f/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 96
    sget v2, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v2, 0x39

    goto :goto_0

    :cond_0
    const/16 v2, 0x56

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 87
    :goto_1
    :pswitch_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lccsancom/san/xz/api/unifiedDownload;

    .line 88
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v15

    new-instance v8, Lccsansan/f/removeDownloadListener$unifiedDownload;

    move-object v2, v8

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object v0, v8

    move-wide/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Lccsansan/f/removeDownloadListener$unifiedDownload;-><init>(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/api/unifiedDownload;Lccsancom/san/xz/base/XzRecord;JJ)V

    invoke-virtual {v15, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    move-object/from16 v0, p0

    goto :goto_1

    .line 96
    :cond_1
    invoke-static/range {p0 .. p1}, Lccsansan/ap/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 32
    nop

    .line 23
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    const/16 v1, 0x9

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 11
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p2}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lccsansan/au/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 11
    :pswitch_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p2}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lccsansan/au/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 13
    :goto_3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance p2, Lccsansan/f/removeDownloadListener$getDownloadedRecordByUrl;

    invoke-direct {p2, p0}, Lccsansan/f/removeDownloadListener$getDownloadedRecordByUrl;-><init>(Lccsansan/f/removeDownloadListener;)V

    invoke-virtual {p1, p2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 32
    return-void

    .line 21
    :cond_1
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p2}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v0

    .line 22
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    sget p3, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p3, p3, 0x37

    rem-int/lit16 v5, p3, 0x80

    sput v5, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Lccsansan/f/IncentiveDownloadUtils;

    move-result-object p3

    :try_start_1
    array-length v4, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    .line 22
    :cond_2
    invoke-direct {p0, p1}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Lccsansan/f/IncentiveDownloadUtils;

    move-result-object p3

    goto :goto_4

    :cond_3
    new-instance v4, Lccsansan/f/getDownloadStatusByUrl;

    invoke-direct {v4, p1, p3}, Lccsansan/f/getDownloadStatusByUrl;-><init>(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;)V

    move-object p3, v4

    :goto_4
    if-nez v0, :cond_4

    .line 12
    const/4 v2, 0x0

    goto :goto_5

    :cond_4
    nop

    :goto_5
    packed-switch v2, :pswitch_data_1

    goto :goto_7

    .line 32
    :pswitch_1
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 23
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {p3}, Lccsansan/aw/IncentiveDownloadUtils;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v0

    :try_start_2
    div-int/2addr v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_6

    goto :goto_6

    .line 32
    :catchall_1
    move-exception p1

    throw p1

    .line 23
    :cond_5
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {p3}, Lccsansan/aw/IncentiveDownloadUtils;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_6
    goto :goto_7

    .line 26
    :cond_6
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/q/removeDownloadListener;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 27
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {v0, p3}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;)V

    .line 28
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object p3

    sget-object v0, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    if-ne p3, v0, :cond_7

    .line 29
    invoke-static {p1, p2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;)V

    .line 31
    :cond_7
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance p2, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;

    invoke-direct {p2, p0}, Lccsansan/f/removeDownloadListener$getDownloadingRecordByUrl;-><init>(Lccsansan/f/removeDownloadListener;)V

    invoke-virtual {p1, p2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 32
    goto :goto_8

    .line 31
    :goto_7
    nop

    .line 32
    const-string p1, "Saving"

    invoke-direct {p0, p1}, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    :goto_8
    return-void

    .line 23
    :catchall_2
    move-exception p1

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/f/removeDownloadListener;Lccsanandroid/content/Intent;)V
    .locals 2

    .line 9
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Intent;)V

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/base/XzRecord$Status;)V
    .locals 2

    .line 8
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord$Status;)V

    sget p0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic unifiedDownload()Z
    .locals 2

    .line 10
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x26

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lccsansan/f/removeDownloadListener;->addDownloadListener:Z

    goto :goto_1

    :pswitch_0
    sget-boolean v0, Lccsansan/f/removeDownloadListener;->addDownloadListener:Z

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
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
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addListener(Lccsancom/san/xz/api/unifiedDownload;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Lccsansan/cs/unifiedDownload;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cs/unifiedDownload;",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;Z)V"
        }
    .end annotation

    .line 30
    sget p1, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/util/List;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Ljava/util/List;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_2

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    const/4 v2, 0x0

    goto :goto_3

    :cond_1
    const/4 v2, 0x1

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/xz/base/XzRecord;

    .line 3
    iget-object v3, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v4

    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lccsansan/f/addDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const/16 p1, 0x61

    if-eqz p3, :cond_2

    .line 12
    const/16 p3, 0x61

    goto :goto_4

    :cond_2
    const/16 p3, 0x11

    :goto_4
    packed-switch p3, :pswitch_data_2

    :goto_5
    goto/16 :goto_c

    :pswitch_2
    sget p3, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/2addr p3, p1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_3

    .line 6
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 12
    const/16 p2, 0x2f

    goto :goto_7

    :cond_4
    const/16 p2, 0x5a

    :goto_7
    packed-switch p2, :pswitch_data_3

    goto :goto_5

    .line 6
    :pswitch_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/san/xz/base/XzRecord;

    .line 7
    invoke-virtual {p2}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object p3

    .line 8
    invoke-virtual {p2}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v2

    sget-object v3, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    if-eq v2, v3, :cond_5

    .line 12
    const/4 v2, 0x0

    goto :goto_8

    :cond_5
    const/4 v2, 0x1

    :goto_8
    packed-switch v2, :pswitch_data_4

    .line 2
    sget v2, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v2, v2, 0x3d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 9
    sget-object v2, Lccsancom/san/xz/base/XzRecord$Status;->ERROR:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p2, v2}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 10
    invoke-static {p0, p2}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    .line 11
    invoke-static {p2, v1, v0, v1}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;ZZZ)V

    goto :goto_9

    .line 9
    :cond_6
    sget-object v2, Lccsancom/san/xz/base/XzRecord$Status;->ERROR:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p2, v2}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 10
    invoke-static {p0, p2}, Lccsansan/ap/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/xz/base/XzRecord;)V

    .line 11
    invoke-static {p2, v0, v0, v1}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;ZZZ)V

    .line 12
    :goto_9
    invoke-virtual {p2}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v2

    invoke-virtual {p2}, Lccsancom/san/xz/base/XzRecord;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lccsansan/ad/unifiedDownload;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 14
    :pswitch_4
    iget-object v2, p0, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/san/xz/api/unifiedDownload;

    .line 15
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v4

    new-instance v5, Lccsansan/f/removeDownloadListener$deleteDownList;

    invoke-direct {v5, p0, v3, p2}, Lccsansan/f/removeDownloadListener$deleteDownList;-><init>(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/api/unifiedDownload;Lccsancom/san/xz/base/XzRecord;)V

    invoke-virtual {v4, v5}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_a

    .line 23
    :cond_7
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto/16 :goto_6

    .line 26
    :cond_8
    invoke-static {p3}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 12
    sget p3, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p3, p3, 0x47

    rem-int/lit16 v2, p3, 0x80

    sput v2, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_9

    .line 28
    :cond_9
    invoke-static {p2}, Lccsansan/au/getDownloadingList;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)V

    .line 30
    :pswitch_5
    goto/16 :goto_6

    :cond_a
    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->deleteDownList()Z

    .line 12
    sget p2, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p2, p2, 0x7d

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_b

    const/4 p2, 0x0

    goto :goto_b

    :cond_b
    const/4 p2, 0x1

    :goto_b
    packed-switch p2, :pswitch_data_5

    goto/16 :goto_6

    .line 30
    :goto_c
    return-void

    :catchall_0
    move-exception p1

    goto :goto_e

    :goto_d
    throw p1

    :goto_e
    goto :goto_d

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2f
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public getDownloadingItemCount(Lccsansan/cs/unifiedDownload;)I
    .locals 2

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;)I

    move-result p1

    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    return p1
.end method

.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 3

    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lccsanandroid/app/Service;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-super {p0}, Lccsanandroid/app/Service;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    goto :goto_2

    :goto_1
    const/16 v1, 0x29

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget v1, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method

.method public listDownloadedRecord(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cs/unifiedDownload;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsansan/q/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    sget p2, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p2, p2, 0x5f

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    packed-switch p2, :pswitch_data_0

    return-object p1

    :pswitch_0
    const/4 p2, 0x0

    :try_start_0
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public listDownloadingRecord(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cs/unifiedDownload;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;"
        }
    .end annotation

    .line 14
    nop

    .line 8
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsansan/q/removeDownloadListener;->getDownloadingList(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_2
    goto :goto_2

    .line 14
    :goto_1
    :pswitch_0
    return-object p2

    .line 5
    :goto_2
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {v0, p1}, Lccsansan/f/addDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;)Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2
    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_4
    packed-switch v4, :pswitch_data_1

    .line 14
    sget v4, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v4, v4, 0x21

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    goto :goto_6

    .line 11
    :pswitch_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/base/XzRecord;

    .line 13
    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/xz/base/XzRecord;

    if-eqz v2, :cond_4

    .line 14
    move-object v1, v2

    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    return-object p1

    .line 2
    :goto_6
    const/16 v4, 0x46

    goto :goto_7

    :cond_6
    const/16 v4, 0x27

    :goto_7
    packed-switch v4, :pswitch_data_2

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/aw/IncentiveDownloadUtils;

    .line 8
    invoke-virtual {v4}, Lccsansan/aw/IncentiveDownloadUtils;->trackReportShow()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/san/xz/base/XzRecord;

    invoke-virtual {v5}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lccsansan/aw/IncentiveDownloadUtils;->trackReportShow()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/san/xz/base/XzRecord;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 14
    :pswitch_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/aw/IncentiveDownloadUtils;

    .line 8
    invoke-virtual {v4}, Lccsansan/aw/IncentiveDownloadUtils;->trackReportShow()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/san/xz/base/XzRecord;

    invoke-virtual {v5}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lccsansan/aw/IncentiveDownloadUtils;->trackReportShow()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/san/xz/base/XzRecord;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 14
    :catchall_1
    move-exception p1

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x46
        :pswitch_2
    .end packed-switch
.end method

.method public onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;
    .locals 2

    .line 1
    sget p1, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    :cond_0
    iget-object p1, p0, Lccsansan/f/removeDownloadListener;->removeDownloadListener:Lccsansan/f/removeDownloadListener$trackReportClick;

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/16 v0, 0x5c

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const/16 v0, 0x52

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()V
    .locals 2

    .line 6
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super {p0}, Lccsanandroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-static {v0}, Lccsansan/k/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/cs/unifiedDownload;)Lccsansan/aw/getDownloadedRecordByUrl;

    move-result-object v0

    check-cast v0, Lccsansan/f/addDownloadListener;

    iput-object v0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    .line 4
    iget-object v1, p0, Lccsansan/f/removeDownloadListener;->getDownloadStatusByUrl:Lccsansan/aw/unifiedDownload;

    invoke-virtual {v0, v1}, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList(Lccsansan/aw/unifiedDownload;)V

    .line 6
    invoke-direct {p0}, Lccsansan/f/removeDownloadListener;->getDownloadingList()V

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-super {p0}, Lccsanandroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-static {v0}, Lccsansan/k/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/cs/unifiedDownload;)Lccsansan/aw/getDownloadedRecordByUrl;

    move-result-object v0

    check-cast v0, Lccsansan/f/addDownloadListener;

    iput-object v0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    .line 4
    iget-object v1, p0, Lccsansan/f/removeDownloadListener;->getDownloadStatusByUrl:Lccsansan/aw/unifiedDownload;

    invoke-virtual {v0, v1}, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList(Lccsansan/aw/unifiedDownload;)V

    .line 6
    invoke-direct {p0}, Lccsansan/f/removeDownloadListener;->getDownloadingList()V

    goto :goto_2

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 6
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4d

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Lccsansan/f/removeDownloadListener;->removeDownloadListener()V

    .line 3
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    iget-object v1, p0, Lccsansan/f/removeDownloadListener;->getDownloadStatusByUrl:Lccsansan/aw/unifiedDownload;

    invoke-virtual {v0, v1}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/unifiedDownload;)V

    .line 4
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload()V

    .line 6
    invoke-super {p0}, Lccsanandroid/app/Service;->onDestroy()V

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-direct {p0}, Lccsansan/f/removeDownloadListener;->removeDownloadListener()V

    .line 3
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    iget-object v1, p0, Lccsansan/f/removeDownloadListener;->getDownloadStatusByUrl:Lccsansan/aw/unifiedDownload;

    invoke-virtual {v0, v1}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/unifiedDownload;)V

    .line 4
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload()V

    .line 6
    invoke-super {p0}, Lccsanandroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method

.method public onStartCommand(Lccsanandroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p2

    new-instance p3, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;

    invoke-direct {p3, p0, p1}, Lccsansan/f/removeDownloadListener$getDownloadStatusByUrl;-><init>(Lccsansan/f/removeDownloadListener;Lccsanandroid/content/Intent;)V

    invoke-virtual {p2, p3}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    const/4 p2, 0x2

    rem-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return p2

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public pause(Ljava/lang/String;)V
    .locals 3

    .line 11
    nop

    .line 2
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {v0, p1}, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    const/16 v0, 0x2d

    goto :goto_0

    :cond_1
    const/16 v0, 0x46

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 11
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 2
    const/16 v0, 0x21

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    :goto_1
    packed-switch v0, :pswitch_data_1

    instance-of v0, p1, Lccsansan/f/IncentiveDownloadUtils;

    goto :goto_3

    :pswitch_0
    instance-of v0, p1, Lccsansan/f/IncentiveDownloadUtils;

    if-nez v0, :cond_3

    :goto_2
    goto :goto_4

    :goto_3
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    goto :goto_2

    .line 11
    :goto_4
    nop

    :pswitch_1
    nop

    .line 2
    sget p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    .line 11
    return-void

    .line 4
    :cond_3
    check-cast p1, Lccsansan/f/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    .line 5
    sget-object v0, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {p1, v0}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 6
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsansan/f/addDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 9
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lccsansan/bt/getDownloadingList;->IncentiveDownloadUtils(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public pause(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;)V"
        }
    .end annotation

    .line 20
    nop

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    const/16 v1, 0x21

    goto :goto_1

    :cond_0
    const/16 v1, 0x43

    :goto_1
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 20
    sget v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    goto :goto_5

    .line 16
    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 20
    :cond_1
    :goto_2
    nop

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/16 v0, 0x31

    if-eqz p1, :cond_2

    .line 14
    const/16 p1, 0x31

    goto :goto_3

    :cond_2
    const/16 p1, 0x33

    :goto_3
    packed-switch p1, :pswitch_data_1

    sget p1, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    goto :goto_4

    .line 18
    :pswitch_1
    nop

    .line 20
    invoke-static {v2}, Lccsansan/bt/getDownloadingList;->IncentiveDownloadUtils(Z)V

    return-void

    .line 16
    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/san/xz/base/XzRecord;

    .line 17
    invoke-direct {p0, p1}, Lccsansan/f/removeDownloadListener;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 18
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 14
    sget p1, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_2

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :goto_6
    packed-switch v1, :pswitch_data_2

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/base/XzRecord;

    .line 13
    sget-object v2, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v1, v2}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 14
    iget-object v2, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v3

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lccsansan/f/addDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)V

    goto :goto_7

    .line 20
    :pswitch_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/base/XzRecord;

    .line 13
    sget-object v3, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v1, v3}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 14
    iget-object v3, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v4

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lccsansan/f/addDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;)V

    const/16 v1, 0x3a

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 20
    :catchall_0
    move-exception p1

    throw p1

    :goto_7
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x43
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
.end method

.method public removeListener(Lccsancom/san/xz/api/unifiedDownload;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x22

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 p1, 0x61

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x3a

    goto :goto_2

    :cond_1
    const/16 p1, 0x4b

    :goto_2
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_1
    .end packed-switch
.end method

.method public resume(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/san/xz/base/XzRecord;",
            ">;)V"
        }
    .end annotation

    .line 20
    sget v0, Lccsansan/f/removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 20
    sget v2, Lccsansan/f/removeDownloadListener;->getDownloadedCount:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/f/removeDownloadListener;->resume:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_1

    const/16 v1, 0x32

    :cond_1
    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    nop

    .line 1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    const/16 v1, 0x31

    goto :goto_1

    :cond_2
    const/16 v1, 0x18

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 1
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/xz/base/XzRecord;

    .line 2
    sget-object v2, Lccsancom/san/xz/base/XzRecord$Status;->WAITING:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v1, v2}, Lccsancom/san/xz/base/XzRecord;->setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V

    .line 3
    invoke-static {}, Lccsansan/q/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/q/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsansan/q/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    .line 4
    iget-object v2, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object v2

    check-cast v2, Lccsansan/f/IncentiveDownloadUtils;

    if-eqz v2, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-direct {p0, v1}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)Lccsansan/f/IncentiveDownloadUtils;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lccsansan/f/removeDownloadListener;->unifiedDownload:Lccsansan/f/addDownloadListener;

    invoke-virtual {v2, v1}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;)V

    .line 9
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v1

    new-instance v2, Lccsansan/f/removeDownloadListener$getDownloadingCount;

    invoke-direct {v2, p0}, Lccsansan/f/removeDownloadListener$getDownloadingCount;-><init>(Lccsansan/f/removeDownloadListener;)V

    invoke-virtual {v1, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 18
    :goto_2
    new-instance p1, Lccsanandroid/content/Intent;

    invoke-direct {p1}, Lccsanandroid/content/Intent;-><init>()V

    .line 19
    const-class v0, Lccsansan/f/removeDownloadListener;

    invoke-virtual {p1, p0, v0}, Lccsanandroid/content/Intent;->setClass(Lccsanandroid/content/Context;Ljava/lang/Class;)Lccsanandroid/content/Intent;

    .line 20
    invoke-static {p0, p1}, Lccsansan/f/removeDownloadListener$getThumbPathByRecord;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1
    .end packed-switch
.end method
