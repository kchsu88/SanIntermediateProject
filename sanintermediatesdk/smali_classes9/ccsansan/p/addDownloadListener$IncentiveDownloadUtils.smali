.class Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/addDownloadListener;->addDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:J

.field private static deleteDownItem:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->deleteDownItem:I

    const-wide v0, 0xf976c7c23693285L

    sput-wide v0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:J

    return-void
.end method

.method constructor <init>(Lccsansan/p/addDownloadListener;Ljava/lang/String;Ljava/lang/String;Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
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
.method public execute()V
    .locals 7

    .line 12
    nop

    .line 1
    :try_start_0
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->addDownloadListener(Ljava/io/File;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u32aa\u3b2a\u213c\u2f33\u1547\u037e\u0968\u7789\u7db9\u6be9"

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int v3, v3, 0x9eb

    invoke-static {v2, v3}, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsansan/bw/getAdSize;->removeDownloadListener(Lccsansan/da/removeDownloadListener;)Lccsansan/p/getDownloadedList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 8
    const/16 v1, 0x4c

    goto :goto_0

    :cond_0
    const/16 v1, 0x34

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 12
    sget v1, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 8
    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/16 v1, 0x3f

    :goto_1
    const/4 v3, 0x1

    const-string v4, "url"

    const-string v5, "portal"

    packed-switch v1, :pswitch_data_1

    .line 3
    goto :goto_2

    .line 12
    :pswitch_0
    nop

    .line 5
    :try_start_1
    iget-object v1, p0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v4, p0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v4, v4, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    :try_start_2
    array-length v5, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_3

    goto :goto_3

    .line 12
    :catchall_0
    move-exception v0

    throw v0

    .line 5
    :goto_2
    :try_start_3
    iget-object v1, p0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v4, p0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v4, v4, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_3
    iget-object v4, p0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v4, v4, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    sget v5, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v5, v5, 0x2b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/2addr v5, v2

    if-eqz v5, :cond_2

    .line 12
    :cond_2
    goto :goto_6

    .line 8
    :cond_3
    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    packed-switch v4, :pswitch_data_2

    sget v4, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v4, v4, 0xb

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/2addr v4, v2

    if-nez v4, :cond_5

    goto :goto_5

    :pswitch_1
    const-string v4, ""

    goto :goto_7

    :cond_5
    :goto_5
    :try_start_4
    invoke-virtual {v0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    :goto_6
    nop

    .line 12
    nop

    .line 8
    :goto_7
    invoke-virtual {v1, v4}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1

    .line 9
    iget-object v4, p0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0, v4, v3, v1}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 8
    sget v0, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/2addr v0, v2

    .line 12
    goto :goto_8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
