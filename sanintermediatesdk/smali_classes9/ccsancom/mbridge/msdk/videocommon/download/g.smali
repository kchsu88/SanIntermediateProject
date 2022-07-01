.class public Lccsancom/mbridge/msdk/videocommon/download/g;
.super Ljava/lang/Object;
.source "H5DownLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/videocommon/download/g$c;,
        Lccsancom/mbridge/msdk/videocommon/download/g$b;,
        Lccsancom/mbridge/msdk/videocommon/download/g$d;,
        Lccsancom/mbridge/msdk/videocommon/download/g$a;
    }
.end annotation


# static fields
.field private static c:Lccsancom/mbridge/msdk/videocommon/download/g;


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/download/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lccsancom/mbridge/msdk/videocommon/download/j;

.field private e:Lccsancom/mbridge/msdk/videocommon/download/h;

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->f:Z

    .line 53
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/j;->a()Lccsancom/mbridge/msdk/videocommon/download/j;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->d:Lccsancom/mbridge/msdk/videocommon/download/j;

    .line 54
    nop

    .line 1031
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/download/h$a;->a:Lccsancom/mbridge/msdk/videocommon/download/h;

    .line 54
    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->e:Lccsancom/mbridge/msdk/videocommon/download/h;

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 57
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/a;->c(I)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5DownLoadManager"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    :goto_0
    return-void
.end method

.method public static declared-synchronized a()Lccsancom/mbridge/msdk/videocommon/download/g;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/videocommon/download/g;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/videocommon/download/g;->c:Lccsancom/mbridge/msdk/videocommon/download/g;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lccsancom/mbridge/msdk/videocommon/download/g;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/videocommon/download/g;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/videocommon/download/g;->c:Lccsancom/mbridge/msdk/videocommon/download/g;

    .line 70
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/videocommon/download/g;->c:Lccsancom/mbridge/msdk/videocommon/download/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/videocommon/download/g;)Lccsancom/mbridge/msdk/videocommon/download/h;
    .locals 0

    .line 35
    iget-object p0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->e:Lccsancom/mbridge/msdk/videocommon/download/h;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/videocommon/download/g;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->d:Lccsancom/mbridge/msdk/videocommon/download/j;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/videocommon/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V
    .locals 9

    .line 202
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->f:Z

    if-eqz v0, :cond_3

    .line 203
    nop

    .line 1297
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1298
    if-eqz p2, :cond_0

    .line 1299
    const-string v0, "zip url is null"

    invoke-interface {p2, v0, p1}, Lccsancom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :cond_0
    goto/16 :goto_0

    .line 1305
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    nop

    .line 1317
    nop

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/c;->g:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/b/e;->b(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1319
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1320
    new-instance v8, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".html"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x64

    sget-object v7, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_HTML:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    move-object v2, v8

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)V

    .line 1321
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->download(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object v1

    const-wide/16 v2, 0x7530

    .line 1322
    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withReadTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    .line 1323
    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withConnectTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object v1

    sget-object v2, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;->HIGH:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 1324
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withDownloadPriority(Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1325
    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withHttpRetryCounter(I)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v1

    .line 1326
    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withDirectoryPathInternal(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/videocommon/download/g$3;

    invoke-direct {v1, p0, p2, p1}, Lccsancom/mbridge/msdk/videocommon/download/g$3;-><init>(Lccsancom/mbridge/msdk/videocommon/download/g;Lccsancom/mbridge/msdk/videocommon/download/g$a;Ljava/lang/String;)V

    .line 1327
    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withDownloadStateListener(Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object p1

    .line 1346
    invoke-interface {p1}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->build()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->start()Ljava/lang/String;

    goto :goto_0

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    if-eqz p2, :cond_2

    .line 1314
    const-string v0, "zip url is unlawful"

    invoke-interface {p2, v0, p1}, Lccsancom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    :cond_2
    nop

    .line 203
    :goto_0
    goto :goto_1

    .line 205
    :cond_3
    nop

    .line 2211
    :try_start_1
    const-string v0, "H5DownLoadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2214
    goto :goto_1

    .line 2216
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3017
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/download/f$a;->a:Lccsancom/mbridge/msdk/videocommon/download/f;

    .line 2218
    new-instance v1, Lccsancom/mbridge/msdk/videocommon/download/g$2;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/videocommon/download/g$2;-><init>(Lccsancom/mbridge/msdk/videocommon/download/g;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/f;->a(Lccsancom/mbridge/msdk/foundation/same/e/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2292
    goto :goto_1

    .line 2288
    :catchall_0
    move-exception p1

    .line 2289
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_5

    .line 2290
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    :cond_5
    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 427
    :try_start_0
    sget-object v0, Lccsanandroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lccsanandroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 428
    :cond_0
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 431
    const-string v2, "urlDebug"

    invoke-virtual {v0, v2}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    return-object p1

    .line 433
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/videocommon/download/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 436
    :cond_2
    nop

    .line 5081
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->e:Lccsancom/mbridge/msdk/videocommon/download/h;

    if-eqz v0, :cond_3

    .line 5082
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/videocommon/download/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5084
    :cond_3
    nop

    .line 436
    :goto_0
    return-object p1

    .line 442
    :cond_4
    goto :goto_1

    .line 440
    :catch_0
    move-exception v0

    .line 441
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    :goto_1
    return-object p1
.end method

.method public final b(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V
    .locals 13

    .line 404
    const-string v0, "/"

    const-string v1, ".zip"

    :try_start_0
    sget-object v2, Lccsanandroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lccsanandroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 405
    :cond_0
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 408
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 409
    move-object v2, p2

    check-cast v2, Lccsancom/mbridge/msdk/videocommon/download/g$d;

    .line 3157
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->f:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 3158
    nop

    .line 4088
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4089
    if-eqz v2, :cond_1

    .line 4090
    const-string v0, "zip url is null"

    invoke-interface {v2, p1, v0}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4092
    :cond_1
    goto/16 :goto_0

    .line 4096
    :cond_2
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4097
    nop

    .line 4108
    nop

    .line 4109
    :try_start_2
    sget-object v3, Lccsancom/mbridge/msdk/foundation/same/b/c;->e:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/same/b/e;->b(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v3

    .line 4110
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4113
    new-instance v3, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x64

    sget-object v12, Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;->DOWNLOAD_RESOURCE_TYPE_ZIP:Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    move-object v7, v3

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)V

    .line 4114
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->download(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object v1

    const-wide/16 v7, 0x7530

    .line 4115
    invoke-virtual {v1, v7, v8}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withReadTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object v1

    const-wide/16 v7, 0x4e20

    .line 4116
    invoke-virtual {v1, v7, v8}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withConnectTimeout(J)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    move-result-object v1

    sget-object v3, Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;->HIGH:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 4117
    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->withDownloadPriority(Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v1

    .line 4118
    invoke-interface {v1, v4}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withHttpRetryCounter(I)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v1

    .line 4119
    invoke-interface {v1, v6}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withDirectoryPathInternal(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v1

    new-instance v3, Lccsancom/mbridge/msdk/videocommon/download/g$1;

    invoke-direct {v3, p0, v0, v2}, Lccsancom/mbridge/msdk/videocommon/download/g$1;-><init>(Lccsancom/mbridge/msdk/videocommon/download/g;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$d;)V

    .line 4120
    invoke-interface {v1, v3}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->withDownloadStateListener(Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;)Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;

    move-result-object v0

    .line 4153
    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/RequestBuilder;->build()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->start()Ljava/lang/String;

    goto :goto_0

    .line 4103
    :catch_0
    move-exception v0

    .line 4104
    if-eqz v2, :cond_3

    .line 4105
    const-string v0, "zip url is unlawful"

    invoke-interface {v2, p1, v0}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4107
    :cond_3
    nop

    .line 3159
    :goto_0
    goto :goto_2

    .line 3162
    :cond_4
    nop

    .line 4167
    :try_start_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->d:Lccsancom/mbridge/msdk/videocommon/download/j;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/videocommon/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4168
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4169
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/download/b;

    .line 4170
    if-eqz v0, :cond_5

    .line 4171
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/videocommon/download/b;->a(Lccsancom/mbridge/msdk/videocommon/download/g$d;)V

    .line 4173
    :cond_5
    goto :goto_2

    .line 4176
    :cond_6
    new-instance v0, Lccsancom/mbridge/msdk/videocommon/download/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->b:Ljava/util/concurrent/ConcurrentMap;

    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->d:Lccsancom/mbridge/msdk/videocommon/download/j;

    invoke-direct {v0, v1, v3, v2, p1}, Lccsancom/mbridge/msdk/videocommon/download/b;-><init>(Ljava/util/concurrent/ConcurrentMap;Lccsancom/mbridge/msdk/videocommon/download/j;Lccsancom/mbridge/msdk/videocommon/download/g$d;Ljava/lang/String;)V

    .line 4177
    nop

    .line 4178
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/g;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4180
    invoke-static {p1, v0, v4}, Lccsancom/mbridge/msdk/videocommon/download/e;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$c;Z)V

    .line 4182
    goto :goto_1

    .line 4183
    :cond_7
    if-eqz v2, :cond_8

    .line 4184
    invoke-interface {v2, p1}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 4194
    :cond_8
    :goto_1
    goto :goto_2

    .line 4187
    :catch_1
    move-exception v0

    .line 4188
    if-eqz v2, :cond_9

    .line 4189
    :try_start_4
    const-string v1, "downloadzip failed"

    invoke-interface {v2, p1, v1}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4191
    :cond_9
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 4192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    :cond_a
    :goto_2
    goto :goto_3

    .line 411
    :cond_b
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/videocommon/download/g;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 413
    :goto_3
    return-void

    .line 418
    :cond_c
    goto :goto_4

    .line 416
    :catch_2
    move-exception v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    :goto_4
    if-eqz p2, :cond_d

    .line 420
    const-string v0, "The URL does not contain a path "

    invoke-interface {p2, p1, v0}, Lccsancom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_d
    return-void
.end method
