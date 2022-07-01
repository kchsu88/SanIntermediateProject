.class public Lccsancom/san/hybrid/ui/removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/webkit/DownloadListener;


# static fields
.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:C

.field private static getDownloadedRecordByUrl:I

.field private static final getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static removeDownloadListener:J


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field private addDownloadListener:Lccsansan/an/getDownloadingList;

.field private unifiedDownload:Lccsansan/ba/IncentiveDownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    invoke-static {}, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadingList()V

    .line 1
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v3, v0

    const-string v0, "https"

    aput-object v0, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadingList:Ljava/util/List;

    sget v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/2addr v0, v2

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsansan/ba/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/san/hybrid/ui/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    .line 3
    iput-object p2, p0, Lccsancom/san/hybrid/ui/removeDownloadListener;->unifiedDownload:Lccsansan/ba/IncentiveDownloadUtils;

    return-void
.end method

.method private IncentiveDownloadUtils()Lccsansan/an/getDownloadingList;
    .locals 2

    .line 45
    nop

    .line 32
    iget-object v0, p0, Lccsancom/san/hybrid/ui/removeDownloadListener;->addDownloadListener:Lccsansan/an/getDownloadingList;

    if-nez v0, :cond_0

    .line 45
    const/16 v0, 0x49

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 34
    :try_start_0
    iget-object v0, p0, Lccsancom/san/hybrid/ui/removeDownloadListener;->unifiedDownload:Lccsansan/ba/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Lccsansan/bg/addDownloadListener;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bg/addDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0}, Lccsansan/an/getDownloadingList$getDownloadingList;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lccsansan/an/getDownloadingList$getDownloadingList;->getDownloadingList(Lccsanandroid/os/IBinder;)Lccsansan/an/getDownloadingList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/hybrid/ui/removeDownloadListener;->addDownloadListener:Lccsansan/an/getDownloadingList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    sget v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 35
    :cond_1
    const/4 v1, 0x3

    .line 37
    :try_start_1
    invoke-virtual {v0, v1}, Lccsansan/ba/IncentiveDownloadUtils;->getDownloadingList(I)Lccsanandroid/os/IBinder;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lccsansan/an/getDownloadingList$getDownloadingList;->getDownloadingList(Lccsanandroid/os/IBinder;)Lccsansan/an/getDownloadingList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/hybrid/ui/removeDownloadListener;->addDownloadListener:Lccsansan/an/getDownloadingList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    sget v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hybrid"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lccsancom/san/hybrid/ui/removeDownloadListener;->addDownloadListener:Lccsansan/an/getDownloadingList;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;J)V
    .locals 0

    .line 8
    sget p2, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p2, p2, 0x35

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 6
    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Lccsancom/san/hybrid/ui/removeDownloadListener;->IncentiveDownloadUtils()Lccsansan/an/getDownloadingList;

    move-result-object p2

    iput-object p2, p0, Lccsancom/san/hybrid/ui/removeDownloadListener;->addDownloadListener:Lccsansan/an/getDownloadingList;

    if-eqz p2, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Lccsancom/san/hybrid/ui/removeDownloadListener;->IncentiveDownloadUtils()Lccsansan/an/getDownloadingList;

    move-result-object p2

    iput-object p2, p0, Lccsancom/san/hybrid/ui/removeDownloadListener;->addDownloadListener:Lccsansan/an/getDownloadingList;

    const/4 p3, 0x0

    :try_start_0
    invoke-super {p3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    goto :goto_1

    .line 8
    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p2

    new-instance p3, Lccsancom/san/hybrid/ui/removeDownloadListener$unifiedDownload;

    invoke-direct {p3, p0, p1}, Lccsancom/san/hybrid/ui/removeDownloadListener$unifiedDownload;-><init>(Lccsancom/san/hybrid/ui/removeDownloadListener;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_1
    sget p1, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener(Ljava/lang/String;)Z
    .locals 3

    .line 5
    nop

    .line 2
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0xf

    goto :goto_1

    :cond_1
    const/16 v0, 0x1e

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 3
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :pswitch_1
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x21

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    sget p1, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
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

    sget-wide v5, Lccsancom/san/hybrid/ui/removeDownloadListener;->removeDownloadListener:J

    xor-long/2addr v3, v5

    sget v5, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadedRecordByUrl:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadedList:C

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

.method static getDownloadingList()V
    .locals 2

    const-wide v0, -0x5c4bf48855a3c777L    # -1.077267579178332E-136

    sput-wide v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->removeDownloadListener:J

    const/4 v0, 0x0

    sput-char v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadedList:C

    sput v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadedRecordByUrl:I

    return-void
.end method

.method private getDownloadingList(Ljava/lang/String;)V
    .locals 2

    .line 4
    nop

    .line 1
    :try_start_0
    new-instance v0, Lccsanandroid/content/Intent;
    :try_end_0
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android.intent.action.VIEW"

    :try_start_1
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Lccsancom/san/hybrid/ui/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_1
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4
    sget p1, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x21

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    :goto_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 2
    :catch_0
    move-exception p1

    .line 4
    const-string p1, "san_content_file_open_not_support"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsansan/bq/deleteDownItem;->addDownloadListener(II)V

    :goto_1
    sget p1, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 31
    nop

    .line 9
    iget-object v0, p0, Lccsancom/san/hybrid/ui/removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v1

    int-to-byte v1, v1

    rsub-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "\u3889\uaa5c\u0b77\ua3b4"

    const-string v7, "\u6321\u86b0\u469a\ubd8b\u63bc\u8583\uaa62\u2dbf"

    const-string v8, "\ud796\u8b15\u525e\u461f"

    cmp-long v9, v2, v4

    add-int/lit8 v9, v9, -0x1

    invoke-static {v7, v6, v1, v9, v8}, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/DownloadManager;

    .line 10
    new-instance v1, Lccsanandroid/app/DownloadManager$Request;

    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/app/DownloadManager$Request;-><init>(Lccsanandroid/net/Uri;)V

    if-eqz p2, :cond_0

    .line 31
    const/16 v2, 0xe

    goto :goto_0

    :cond_0
    const/16 v2, 0x36

    :goto_0
    const-string v3, ""

    packed-switch v2, :pswitch_data_0

    .line 14
    move-object p2, v3

    goto :goto_1

    .line 31
    :pswitch_0
    sget v2, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v7, v2, 0x80

    sput v7, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 10
    :cond_1
    nop

    .line 13
    const-string v2, "attachment;filename="

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    .line 31
    goto :goto_1

    .line 13
    :cond_2
    add-int/lit8 v2, v2, 0x14

    .line 14
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 17
    :goto_1
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsanandroid/webkit/MimeTypeMap;->getSingleton()Lccsanandroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Lccsanandroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    if-eqz p2, :cond_4

    .line 31
    const/4 p3, 0x7

    goto :goto_2

    :cond_4
    const/16 p3, 0x33

    :goto_2
    const/4 v2, 0x0

    packed-switch p3, :pswitch_data_1

    sget p3, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p3, p3, 0xb

    rem-int/lit16 v7, p3, 0x80

    sput v7, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_5

    .line 23
    :cond_5
    :try_start_0
    sget-object p3, Lccsanandroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, p3, p2}, Lccsanandroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/DownloadManager$Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    sget p2, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p2, p2, 0x5

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    .line 23
    :pswitch_1
    const/4 p2, 0x1

    .line 26
    :try_start_1
    invoke-virtual {v1, p2}, Lccsanandroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Lccsanandroid/app/DownloadManager$Request;

    .line 27
    invoke-virtual {v0, v1}, Lccsanandroid/app/DownloadManager;->enqueue(Lccsanandroid/app/DownloadManager$Request;)J

    const-string p2, "\u6c48\ud1b8\u8cea\ud83f\uddee\ue147\u4fa6\u2996\ue39b\u5a1b\u35ce\u7252\udc1e\udd81\u8775\u7b5a\u7076\u50c1\u6344\ue05e\u45e2\u5794\uf5dc\u39bc\ud9fc\u37b2\u4c04\ue723\u3025\u6dd3"

    invoke-static {v2, v2}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result p3

    add-int/lit16 p3, p3, 0x3f04

    int-to-char p3, p3

    invoke-static {v3, v2}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    const-string v1, "\u2acf\u82fe\u0457\u7b3f"

    invoke-static {p2, v6, p3, v0, v1}, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2, v2}, Lccsansan/bq/deleteDownItem;->addDownloadListener(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 30
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x9c72

    invoke-static {v2, v2}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-char v0, v0

    const v1, -0x3927d7a7

    invoke-static {v2, v2}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v3

    sub-int/2addr v1, v3

    const-string v3, "\ubd6c\ub8ad\u09f8\ua147\u521b\u0605\u33a8\ud5d2\u1b1b\ubd15\u7973\uaadd\ub636\ue743\u396b\ub816\u3e58\uc020\u3240\u8c17\u9b55\ucb8b\uc56c\u6797\u7e3d\u7256\ubd89\uf39d\u0960\u5d65\uea9a\u1209\u79c3\ucb17\udc92\u68db\uccfb\u492d\u4d31\ufa0a\u1f82\u89d3\ub0ae\ua330\u234b\u7ed4\u00c5\u51c1\u811d\u1c00\uf5a4\u12f4\u2aec\u9f3b\uc81d"

    const-string v7, "\u5907\ud828\u72c6\u989c"

    invoke-static {v3, v6, v0, v1, v7}, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const-string p3, "\u2c7d\uadcb\uc826\u7f19\udbff\uc26a\u5ce1\u3551\u0a55\ub7c7\ue6e5\u5179\ue123\u9e38\ue3ba\u6a02\uc868\u3cd4\uf2f2\u5b21\u61b4\u5f92\u8a17\u26bc"

    const-string v3, "\u04fc\u94ba\u7c7a\uaee3"

    cmp-long v7, v0, v4

    add-int/lit8 v7, v7, -0x1

    int-to-char v0, v7

    invoke-static {v2}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p3, v6, v0, v1, v3}, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/hybrid/ui/removeDownloadListener;)Lccsansan/an/getDownloadingList;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 v1, v0, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsancom/san/hybrid/ui/removeDownloadListener;->addDownloadListener:Lccsansan/an/getDownloadingList;

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .line 9
    nop

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    rsub-int v0, v0, 0x5464

    int-to-char v0, v0

    const v1, 0x4f8e9495

    const/16 v2, 0x30

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/2addr v2, v1

    const-string v1, "\ue614\uee38\u423d\u8828\u92de\u962b\u8284\u6ace\ub434\uf7b7\uc915\u18b0\ua9cb\uc6f4\u1d75\u5e40\u49dc\uc6da\u9c91\u96cc\ub7e5\ud2dc\u77fb\ua41c\u3470\uc36e\u9a80\u809e\u9127\u27d6\u6946\uc6fb\u696a\u32c8\u54fd\udaff\ub104\u7d82\u6984\u2e05\u385f"

    const-string v3, "\u3889\uaa5c\u0b77\ua3b4"

    const-string v5, "\u94cf\u8e94\u644f\ud154"

    invoke-static {v1, v3, v0, v2, v5}, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v4}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v1

    const-string v2, "\u2c7d\uadcb\uc826\u7f19\udbff\uc26a\u5ce1\u3551\u0a55\ub7c7\ue6e5\u5179\ue123\u9e38\ue3ba\u6a02\uc868\u3cd4\uf2f2\u5b21\u61b4\u5f92\u8a17\u26bc"

    const-string v5, "\u04fc\u94ba\u7c7a\uaee3"

    invoke-static {v2, v3, v0, v1, v5}, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 9
    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    sget p2, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p2, p2, 0x5b

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string p2, "application/"

    packed-switch v0, :pswitch_data_1

    .line 2
    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 9
    :pswitch_1
    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 v0, 0x29

    :try_start_0
    div-int/2addr v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p2, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p2, p2, 0x5f

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    const/16 p2, 0x55

    goto :goto_2

    :cond_2
    const/16 p2, 0x2a

    :goto_2
    const-string v0, ".apk"

    packed-switch p2, :pswitch_data_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    goto :goto_3

    .line 2
    :pswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_4

    .line 9
    :goto_3
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_3

    goto :goto_4

    :catchall_1
    move-exception p1

    throw p1

    .line 7
    :cond_3
    invoke-direct {p0, p1, p5, p6}, Lccsancom/san/hybrid/ui/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;J)V

    goto :goto_8

    .line 2
    :cond_4
    :goto_4
    nop

    .line 8
    :goto_5
    invoke-direct {p0, p1}, Lccsancom/san/hybrid/ui/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 9
    const/16 p2, 0x60

    goto :goto_6

    :cond_5
    const/16 p2, 0x11

    :goto_6
    packed-switch p2, :pswitch_data_3

    :cond_6
    :goto_7
    goto :goto_8

    :pswitch_3
    invoke-direct {p0, p1, p3, p4}, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    goto :goto_7

    :goto_8
    sget p1, Lccsancom/san/hybrid/ui/removeDownloadListener;->deleteDownItem:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/hybrid/ui/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void

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
    .packed-switch 0x2a
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_3
    .end packed-switch
.end method
