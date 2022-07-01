.class Lccsansan/br/removeDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/br/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "unifiedDownload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/br/removeDownloadListener$unifiedDownload$getDownloadingList;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:J

.field private static unifiedDownload:I


# instance fields
.field private addDownloadListener:Lccsanandroid/os/Handler;

.field final synthetic removeDownloadListener:Lccsansan/br/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    const-wide v0, 0x461b478f09abb84dL    # 5.4032668641090734E29

    sput-wide v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->getDownloadingList:J

    return-void
.end method

.method public constructor <init>(Lccsansan/br/removeDownloadListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    new-instance p1, Lccsanandroid/os/HandlerThread;

    const-string v1, ""

    invoke-static {v1, v0}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    const v1, 0xa3db

    sub-int/2addr v1, v0

    const-string v0, "\ub805\u1bef\uff99\u53ae\u3748\u8b6e\u6f30\uc2f4\ua6fa\u7a89\udead\ub248\u1666\uea33\u4dd3\u21c7\u85a9\u59ae\u3d59\u9169\u7530\uc8de"

    invoke-static {v0, v1}, Lccsansan/br/removeDownloadListener$unifiedDownload;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lccsanandroid/os/HandlerThread;->start()V

    .line 9
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-virtual {p1}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    iput-object v0, p0, Lccsansan/br/removeDownloadListener$unifiedDownload;->addDownloadListener:Lccsanandroid/os/Handler;

    return-void
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 3

    .line 13
    nop

    .line 2
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 2
    :pswitch_1
    iget-object v0, p0, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-static {v0}, Lccsansan/br/removeDownloadListener;->getDownloadingList(Lccsansan/br/removeDownloadListener;)Lccsanokhttp3/OkHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 13
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 2
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-static {v0}, Lccsansan/br/removeDownloadListener;->removeDownloadListener(Lccsansan/br/removeDownloadListener;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    sget p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    .line 9
    :cond_3
    new-instance v0, Lccsanokhttp3/Request$Builder;

    invoke-direct {v0}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 10
    invoke-virtual {v0, p1}, Lccsanokhttp3/Request$Builder;->url(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-static {v1}, Lccsansan/br/removeDownloadListener;->getDownloadingList(Lccsansan/br/removeDownloadListener;)Lccsanokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanokhttp3/OkHttpClient;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object v0

    .line 13
    new-instance v1, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;

    invoke-direct {v1, p0, p1}, Lccsansan/br/removeDownloadListener$unifiedDownload$addDownloadListener;-><init>(Lccsansan/br/removeDownloadListener$unifiedDownload;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lccsanokhttp3/Call;->enqueue(Lccsanokhttp3/Callback;)V

    sget p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/br/removeDownloadListener$unifiedDownload;IIZ)Z
    .locals 2

    .line 1
    sget v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener(IIZ)Z

    move-result p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lccsansan/br/removeDownloadListener$unifiedDownload;->getDownloadingList:J

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

.method private getDownloadingList(Ljava/lang/String;)V
    .locals 4

    .line 3
    sget v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload(Ljava/lang/String;)Lccsansan/br/removeDownloadListener$unifiedDownload$getDownloadingList;

    move-result-object v0

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p1}, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload(Ljava/lang/String;)Lccsansan/br/removeDownloadListener$unifiedDownload$getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :goto_2
    const/16 v3, 0x1e

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 2
    :goto_3
    iget v3, v0, Lccsansan/br/removeDownloadListener$unifiedDownload$getDownloadingList;->unifiedDownload:I

    invoke-direct {p0, p1}, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener(Ljava/lang/String;)I

    move-result p1

    if-le v3, p1, :cond_2

    .line 1
    const/4 v1, 0x0

    goto :goto_4

    :cond_2
    nop

    :goto_4
    packed-switch v1, :pswitch_data_2

    .line 3
    invoke-direct {p0, v0}, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener(Lccsansan/br/removeDownloadListener$unifiedDownload$getDownloadingList;)V

    :cond_3
    :pswitch_1
    nop

    .line 1
    sget p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    .line 3
    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private removeDownloadListener(Ljava/lang/String;)I
    .locals 2

    .line 2
    nop

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lccsansan/bo/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bo/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 2
    const-string p1, "version"

    invoke-virtual {v0, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;)I

    move-result p1

    sget v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p1

    :goto_1
    const/16 v0, 0x9

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener(Lccsansan/br/removeDownloadListener$unifiedDownload$getDownloadingList;)V
    .locals 1

    sget p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private removeDownloadListener(IIZ)Z
    .locals 1

    .line 14
    iget-object v0, p0, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-static {v0}, Lccsansan/br/removeDownloadListener;->removeDownloadListener(Lccsansan/br/removeDownloadListener;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 16
    iget-object p1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-static {p1}, Lccsansan/br/removeDownloadListener;->removeDownloadListener(Lccsansan/br/removeDownloadListener;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    monitor-enter p1

    .line 17
    :try_start_0
    iget-object p2, p0, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-static {p2}, Lccsansan/br/removeDownloadListener;->removeDownloadListener(Lccsansan/br/removeDownloadListener;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 18
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private unifiedDownload(Ljava/lang/String;)Lccsansan/br/removeDownloadListener$unifiedDownload$getDownloadingList;
    .locals 9

    .line 23
    nop

    .line 1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    sget p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, p1, 0x47

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    goto :goto_4

    .line 5
    :pswitch_0
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 6
    const-string v2, "op"

    invoke-virtual {v0, v2}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lccsansan/cb/unifiedDownload;->getDownloadingList(Ljava/lang/String;)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    .line 15
    :goto_1
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    :try_start_1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "i"

    .line 18
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "v"

    .line 19
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v2, "m"

    .line 20
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 21
    new-instance v0, Lccsansan/br/removeDownloadListener$unifiedDownload$getDownloadingList;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lccsansan/br/removeDownloadListener$unifiedDownload$getDownloadingList;-><init>(Lccsansan/br/removeDownloadListener$unifiedDownload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    :cond_1
    move-object v0, v1

    :goto_2
    sget p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    packed-switch p1, :pswitch_data_1

    return-object v0

    :pswitch_1
    :try_start_2
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :cond_3
    :goto_4
    nop

    .line 23
    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;)V
    .locals 3

    .line 4
    sget v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 2
    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 3
    :goto_1
    iput-object p1, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lccsansan/br/removeDownloadListener$unifiedDownload;->addDownloadListener:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    .line 2
    iput v2, v0, Lccsanandroid/os/Message;->what:I

    goto :goto_1

    .line 4
    :goto_2
    sget p1, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x41

    goto :goto_3

    :cond_1
    const/16 p1, 0x4a

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-void

    :goto_4
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 2

    .line 6
    sget v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lccsansan/br/removeDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/br/removeDownloadListener;

    invoke-virtual {v0, p1}, Lccsansan/br/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    const/16 v0, 0x2a

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-direct {p0, p1}, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 6
    sget v0, Lccsansan/br/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/br/removeDownloadListener$unifiedDownload;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    goto :goto_1

    :cond_2
    const/16 v0, 0x51

    :goto_1
    :pswitch_0
    invoke-direct {p0, p1}, Lccsansan/br/removeDownloadListener$unifiedDownload;->getDownloadingList(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
