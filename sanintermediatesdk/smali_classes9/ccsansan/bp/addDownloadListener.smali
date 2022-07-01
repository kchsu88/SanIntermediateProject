.class public Lccsansan/bp/addDownloadListener;
.super Lccsansan/bp/unifiedDownload;
.source ""


# static fields
.field private static IncentiveDownloadUtils:[C

.field public static final addDownloadListener:I

.field private static deleteDownItem:Z

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:Z

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field public static final unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    invoke-static {}, Lccsansan/bp/addDownloadListener;->unifiedDownload()V

    const/16 v1, 0x2a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lccsansan/bp/addDownloadListener;->unifiedDownload:[B

    const/16 v1, 0x5e

    sput v1, Lccsansan/bp/addDownloadListener;->addDownloadListener:I

    sget v1, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x4f

    goto :goto_0

    :cond_0
    const/16 v1, 0x44

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v1, 0xb

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
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x30t
        -0xat
        0x79t
        0x5t
        0x15t
        -0x2t
        0x16t
        0x5t
        0x2t
        0x3t
        -0x2et
        0x3dt
        0x14t
        0x7t
        0xet
        -0x7t
        0x11t
        0xet
        -0x3et
        0x1dt
        0x34t
        0x7t
        0xet
        -0x7t
        0x1bt
        0x4t
        0x6t
        0x17t
        -0x1ct
        0x19t
        0xat
        0x10t
        -0x2t
        0xet
        0x6t
        -0x10t
        0x1ct
        0x15t
        -0x5t
        0xet
        0x6t
        0x15t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lccsansan/bp/unifiedDownload;-><init>()V

    .line 2
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lccsansan/bp/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/IntentFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    const/4 v3, 0x0

    const-string v4, "\u0095\u0095\u008b\u0094\u0093\u0092\u0091\u0090\u0096\u008f\u0095\u0095\u008b\u0094\u0093\u0092\u0091\u0090\u008f\u008e\u008b\u008d\u008c\u008b\u008a\u0085\u0089\u0084\u0082\u0088\u0087\u0083\u0085\u0086\u0086\u0083\u0085\u0084\u0083\u0082\u0081"

    cmpl-float v1, v1, v2

    rsub-int/lit8 v1, v1, 0x7f

    invoke-static {v3, v1, v3, v4}, Lccsansan/bp/addDownloadListener;->unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Intent;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 16
    sget v1, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 2
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    int-to-byte v4, v3

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    int-to-byte v6, v5

    :try_start_0
    invoke-static {v4, v5, v6}, Lccsansan/bp/addDownloadListener;->unifiedDownload(IIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lccsansan/bp/addDownloadListener;->unifiedDownload:[B

    const/16 v6, 0x8

    aget-byte v5, v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    add-int/lit8 v7, v5, -0x1

    int-to-byte v7, v7

    int-to-byte v8, v7

    invoke-static {v5, v7, v8}, Lccsansan/bp/addDownloadListener;->unifiedDownload(IIS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v4, 0x10000

    invoke-virtual {v1, v0, v4}, Lccsanandroid/content/pm/PackageManager;->resolveActivity(Lccsanandroid/content/Intent;I)Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 3
    new-instance v4, Lccsanandroid/content/ComponentName;

    iget-object v5, v1, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v8, v5, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Lccsanandroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v8, v5}, Lccsanandroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    .line 5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v5, v1, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v5, v5, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-string v12, "\u0099\u0081\u0083\u0089\u0090\u0099\u009c\u0083\u009b\u0087\u0083\u0086\u0090\u009a\u0099\u0098\u0098\u0083\u0088\u0097\u0089\u0082"

    const-string v13, ""

    const-string v14, "\u0099\u0081\u0083\u0089\u0090\u009a\u0099\u0098\u0098\u0083\u0088\u0097\u0089\u0082"

    const-string v15, "AD_CONVERT"

    const-string v6, "\u0089\u0084\u0082\u0088\u0083\u0081\u009a\u0084\u009d\u0089\u0082\u0090\u009a\u0099\u0098\u0098\u0083\u0088\u0097\u0089\u0082"

    cmp-long v2, v8, v10

    rsub-int v2, v2, 0x80

    invoke-static {v7, v2, v7, v12}, Lccsansan/bp/addDownloadListener;->unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, v1, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v1, v1, Lccsanandroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v2, 0x30

    invoke-static {v13, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7e

    invoke-static {v7, v2, v7, v14}, Lccsansan/bp/addDownloadListener;->unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x7f

    invoke-static {v7, v1, v7, v6}, Lccsansan/bp/addDownloadListener;->unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v15, v1, v4}, Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 10
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/16 v2, 0x1f

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 13
    const/high16 v1, 0x10000000

    .line 15
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 16
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    goto :goto_1

    .line 13
    :pswitch_0
    invoke-virtual {v1, v0}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V

    goto :goto_3

    .line 16
    :goto_1
    sget v0, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    :goto_3
    :pswitch_1
    return-void

    .line 2
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    throw v1

    :cond_3
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 33
    nop

    .line 17
    new-instance v6, Lccsansan/bp/addDownloadListener$addDownloadListener;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lccsansan/bp/addDownloadListener$addDownloadListener;-><init>(Lccsansan/bp/addDownloadListener;Ljava/lang/String;JLjava/lang/String;)V

    .line 33
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/bh/addDownloadListener;->removeDownloadListener()Lccsansan/bk/getDownloadStatusByUrl;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/bk/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsansan/bk/deleteDownItem;

    move-result-object p1

    invoke-virtual {p1, v6}, Lccsansan/bk/deleteDownItem;->unifiedDownload(Lccsansan/bk/getDownloadingList;)V

    sget p1, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/content/Intent;)V
    .locals 7

    .line 129
    sget v0, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "task_id"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1
    invoke-virtual {p1, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    :try_start_0
    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 129
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_1
    invoke-virtual {p1, v1}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    :pswitch_0
    const-string v1, "AD_CONVERT"

    const-string v3, "no_task_id"

    invoke-static {v1, v3}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget v1, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 4
    :cond_2
    :goto_1
    const/high16 v1, -0x80000000

    .line 6
    const-string v3, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v3, v1}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 7
    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v3}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x7f

    const-string v6, "\u009e\u0082\u0090\u0089\u0084\u0082\u0097\u0097\u0099\u0097\u0090\u0098\u0098\u0083\u0088\u0097\u0089\u0082"

    invoke-static {v2, v5, v2, v6}, Lccsansan/bp/addDownloadListener;->unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 8
    const/4 v5, -0x1

    invoke-virtual {p1, v2, v5}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    if-eq v1, v5, :cond_3

    .line 2
    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 8
    if-eqz v1, :cond_4

    goto :goto_3

    .line 104
    :pswitch_1
    nop

    .line 105
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p1, v1}, Lccsanandroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/Intent;

    .line 106
    new-instance v1, Lccsansan/bp/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v1, p0, p1, v0}, Lccsansan/bp/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/bp/addDownloadListener;Lccsanandroid/content/Intent;Ljava/lang/String;)V

    .line 118
    new-instance p1, Lccsansan/bp/addDownloadListener$getDownloadingList;

    invoke-direct {p1, p0, v0, v1}, Lccsansan/bp/addDownloadListener$getDownloadingList;-><init>(Lccsansan/bp/addDownloadListener;Ljava/lang/String;Lccsansan/bk/unifiedDownload;)V

    .line 129
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/bh/addDownloadListener;->removeDownloadListener()Lccsansan/bk/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/bk/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsansan/bk/deleteDownItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/bk/deleteDownItem;->unifiedDownload(Lccsansan/bk/getDownloadingList;)V

    goto :goto_4

    .line 66
    :goto_3
    new-instance p1, Lccsansan/bp/addDownloadListener$unifiedDownload;

    invoke-direct {p1, p0, v0, v1, v3}, Lccsansan/bp/addDownloadListener$unifiedDownload;-><init>(Lccsansan/bp/addDownloadListener;Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/bh/addDownloadListener;->removeDownloadListener()Lccsansan/bk/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/bk/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsansan/bk/deleteDownItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/bk/deleteDownItem;->unifiedDownload(Lccsansan/bk/getDownloadingList;)V

    goto :goto_4

    .line 86
    :cond_4
    new-instance p1, Lccsansan/bp/addDownloadListener$removeDownloadListener;

    invoke-direct {p1, p0, v0}, Lccsansan/bp/addDownloadListener$removeDownloadListener;-><init>(Lccsansan/bp/addDownloadListener;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/bh/addDownloadListener;->removeDownloadListener()Lccsansan/bk/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/bk/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsansan/bk/deleteDownItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/bk/deleteDownItem;->unifiedDownload(Lccsansan/bk/getDownloadingList;)V

    .line 129
    nop

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/bp/addDownloadListener;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 1
    sget v0, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lccsansan/bp/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;J)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x57

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload(IIS)Ljava/lang/String;
    .locals 9

    sget v0, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsansan/bp/addDownloadListener;->unifiedDownload:[B

    mul-int/lit8 p1, p1, 0x6

    rsub-int/lit8 p1, p1, 0x67

    mul-int/lit8 p0, p0, 0x6

    rsub-int/lit8 p0, p0, 0x17

    mul-int/lit8 p2, p2, 0x16

    rsub-int/lit8 p2, p2, 0x19

    new-array v6, p0, [B

    add-int/lit8 v5, p0, -0x1

    const/4 p0, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsansan/bp/addDownloadListener;->unifiedDownload:[B

    div-int p1, v2, p1

    add-int/lit8 p1, p1, 0x1a

    const/16 v5, 0x68

    rem-int/2addr v5, p0

    mul-int/lit8 v5, v5, 0x58

    const/16 p0, 0x63

    rem-int p2, p0, p2

    const/16 v6, 0x54

    shl-int p2, v6, p2

    new-array v6, v5, [B

    add-int/2addr v5, p0

    const/4 p0, 0x1

    if-nez v0, :cond_1

    :goto_1
    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    move-object v1, v0

    move v0, p2

    goto :goto_4

    :cond_1
    :goto_2
    int-to-byte v1, p1

    aput-byte v1, v6, p0

    add-int/lit8 v1, p0, 0x1

    add-int/2addr p2, v4

    if-ne p0, v5, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_2
    aget-byte p0, v0, p2

    sget v2, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v2, v2, 0x5d

    rem-int/lit16 v7, v2, 0x80

    sput v7, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    packed-switch v2, :pswitch_data_1

    :pswitch_1
    move v8, p1

    move p1, p0

    move p0, v1

    move-object v1, v0

    move v0, p2

    move p2, v8

    :goto_4
    add-int/2addr p2, p1

    add-int/lit8 p1, p2, -0x8

    move p2, v0

    move-object v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Lccsansan/bp/addDownloadListener;->IncentiveDownloadUtils:[C

    .line 1166
    sget v2, Lccsansan/bp/addDownloadListener;->getDownloadingList:I

    .line 1168
    sget-boolean v3, Lccsansan/bp/addDownloadListener;->getDownloadedList:Z

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
    sget-boolean p3, Lccsansan/bp/addDownloadListener;->deleteDownItem:Z

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

.method static unifiedDownload()V
    .locals 1

    const/16 v0, 0xae

    sput v0, Lccsansan/bp/addDownloadListener;->getDownloadingList:I

    const/4 v0, 0x1

    sput-boolean v0, Lccsansan/bp/addDownloadListener;->getDownloadedList:Z

    sput-boolean v0, Lccsansan/bp/addDownloadListener;->deleteDownItem:Z

    const/16 v0, 0x1e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bp/addDownloadListener;->IncentiveDownloadUtils:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x11bs
        0x117s
        0x10fs
        0x11ds
        0xdcs
        0x11es
        0x111s
        0x122s
        0x11cs
        0xfes
        0xefs
        0xf1s
        0xf9s
        0xf5s
        0xf3s
        0x10ds
        0xf7s
        0xfcs
        0x101s
        0x102s
        0xfas
        0x100s
        0x121s
        0x11as
        0x113s
        0x120s
        0x119s
        0x115s
        0x114s
        0x112s
    .end array-data
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 4

    .line 3
    nop

    .line 1
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7e

    const/4 v1, 0x0

    const-string v2, "\u0095\u0095\u008b\u0094\u0093\u0092\u0091\u0090\u0096\u008f\u0095\u0095\u008b\u0094\u0093\u0092\u0091\u0090\u008f\u008e\u008b\u008d\u008c\u008b\u008a\u0085\u0089\u0084\u0082\u0088\u0087\u0083\u0085\u0086\u0086\u0083\u0085\u0084\u0083\u0082\u0081"

    invoke-static {v1, v0, v1, v2}, Lccsansan/bp/addDownloadListener;->unifiedDownload(Ljava/lang/String;I[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3
    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lccsansan/bp/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Intent;)V

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    invoke-direct {p0, p2}, Lccsansan/bp/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Intent;)V

    :goto_1
    sget p1, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    :goto_2
    :pswitch_0
    sget p1, Lccsansan/bp/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/bp/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

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
