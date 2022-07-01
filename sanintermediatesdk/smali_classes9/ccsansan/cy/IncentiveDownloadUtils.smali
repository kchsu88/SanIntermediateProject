.class public Lccsansan/cy/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cy/IncentiveDownloadUtils$getDownloadingList;
    }
.end annotation


# static fields
.field private static volatile IncentiveDownloadUtils:Lccsansan/cy/IncentiveDownloadUtils;

.field private static deleteDownItem:J

.field private static getDownloadedCount:I

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:C

.field private static getDownloadingCount:I


# instance fields
.field private addDownloadListener:Lccsanandroid/os/HandlerThread;

.field private getDownloadStatusByUrl:Lccsanandroid/content/Context;

.field private getDownloadingList:Lccsansan/cy/IncentiveDownloadUtils$getDownloadingList;

.field private getDownloadingRecordByUrl:Lccsansan/a/getDownloadingList;

.field private removeDownloadListener:Lccsansan/p/getDownloadingList;

.field private final unifiedDownload:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingCount:I

    const/4 v1, 0x1

    sput v1, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedCount:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lccsansan/cy/IncentiveDownloadUtils;->deleteDownItem:J

    const/16 v1, 0x2b7b

    sput-char v1, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedRecordByUrl:C

    sput v0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedList:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cy/IncentiveDownloadUtils;->unifiedDownload:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
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

    sget-wide v5, Lccsansan/cy/IncentiveDownloadUtils;->deleteDownItem:J

    xor-long/2addr v3, v5

    sget v5, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedList:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedRecordByUrl:C

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

.method public static IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/cy/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/cy/IncentiveDownloadUtils;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/cy/IncentiveDownloadUtils;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/cy/IncentiveDownloadUtils;

    invoke-direct {v1}, Lccsansan/cy/IncentiveDownloadUtils;-><init>()V

    sput-object v1, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/cy/IncentiveDownloadUtils;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/cy/IncentiveDownloadUtils;

    return-object v0
.end method

.method private getDownloadingList()V
    .locals 8

    .line 28
    nop

    .line 23
    iget-object v0, p0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    invoke-virtual {p0, v0}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#dealCPIContentObserver has notification permission = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.CPI.Manager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lccsansan/p/getDownloadingList;

    iget-object v1, p0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingList:Lccsansan/cy/IncentiveDownloadUtils$getDownloadingList;

    invoke-direct {v0, v1, v2}, Lccsansan/p/getDownloadingList;-><init>(Lccsanandroid/content/Context;Lccsanandroid/os/Handler;)V

    iput-object v0, p0, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/getDownloadingList;

    .line 27
    iget-object v0, p0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    iget-object v0, p0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    const v3, 0xe487

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {v2}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v4

    const-string v5, "\uc6db\u0679\u4640\u82c7\ud05a\uf9bb\u696e\u8bff\ubca1\u0cf7\u7f4d\u1433\u0d38\ud6e4\u76a4\uec16\uae26\u5ffc\u28b6\u40c7\u6249\ua244\uc67d\u7aee\u8184\u94b1\uc74b\u5092\ubeac\u8bd6\ud676\ua9d8"

    const-string v6, "\u0000\u0000\u0000\u0000"

    const-string v7, "\u8b08\u4671\u87f7\u98e4"

    invoke-static {v5, v6, v3, v4, v7}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/getDownloadingList;

    invoke-virtual {v0, v3, v1, v4}, Lccsanandroid/content/ContentResolver;->registerContentObserver(Lccsanandroid/net/Uri;ZLccsanandroid/database/ContentObserver;)V

    sget v0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload()V
    .locals 2

    .line 4
    sget v0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0x35

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/cy/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/os/HandlerThread;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsansan/cy/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/os/HandlerThread;

    if-nez v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/16 v1, 0x28

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :goto_3
    new-instance v0, Lccsanandroid/os/HandlerThread;

    const-string v1, "AD.CPI.Manager"

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lccsansan/cy/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Lccsansan/cy/IncentiveDownloadUtils$getDownloadingList;

    iget-object v1, p0, Lccsansan/cy/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/os/HandlerThread;

    invoke-virtual {v1}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/cy/IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingList:Lccsansan/cy/IncentiveDownloadUtils$getDownloadingList;

    sget v0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z
    .locals 5

    .line 2
    sget v0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object v0, p0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroidx/core/app/NotificationManagerCompat;->getEnabledListenerPackages(Lccsanandroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroidx/core/app/NotificationManagerCompat;->getEnabledListenerPackages(Lccsanandroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2

    :goto_1
    :try_start_0
    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingCount:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return p1

    :goto_3
    :try_start_1
    array-length v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener()Ljava/util/concurrent/Executor;
    .locals 4

    .line 3
    sget v0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingCount:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/cy/IncentiveDownloadUtils;->unifiedDownload:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 4

    .line 22
    const-string v0, "AD.CPI.Manager"

    .line 1
    iput-object p1, p0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    .line 3
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0}, Lccsansan/cy/IncentiveDownloadUtils;->unifiedDownload()V

    .line 5
    new-instance v2, Lccsansan/a/getDownloadingList;

    invoke-direct {v2}, Lccsansan/a/getDownloadingList;-><init>()V

    iput-object v2, p0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsansan/a/getDownloadingList;

    .line 6
    new-instance v2, Lccsanandroid/content/IntentFilter;

    invoke-direct {v2}, Lccsanandroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 7
    invoke-virtual {v2, v3}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 8
    invoke-virtual {v2, v3}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "package"

    .line 9
    invoke-virtual {v2, v3}, Lccsanandroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsansan/a/getDownloadingList;

    invoke-virtual {p1, v3, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 12
    invoke-static {}, Lccsansan/cy/getDownloadedRecordByUrl;->getDownloadingList()V

    const/4 p1, 0x1

    .line 13
    invoke-static {p1}, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils(Z)V

    .line 15
    invoke-direct {p0}, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingList()V

    const-string p1, "init success"

    .line 17
    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    sget p1, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingCount:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    :goto_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 17
    :catch_0
    move-exception p1

    .line 19
    const-string p1, "init failure"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_1
    invoke-static {}, Lccsansan/p/deleteDownItem;->removeDownloadListener()Lccsansan/p/deleteDownItem;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/p/deleteDownItem;->getDownloadingList()V

    sget p1, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cy/IncentiveDownloadUtils;->getDownloadingCount:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_1

    const/16 p1, 0x52

    goto :goto_2

    :cond_1
    const/16 p1, 0x21

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/4 p1, 0x0

    :try_start_1
    array-length p1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_1
    .end packed-switch
.end method
