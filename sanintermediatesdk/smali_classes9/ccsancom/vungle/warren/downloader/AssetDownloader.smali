.class public Lccsancom/vungle/warren/downloader/AssetDownloader;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Lccsancom/vungle/warren/downloader/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/downloader/AssetDownloader$DownloadPriorityRunnable;,
        Lccsancom/vungle/warren/downloader/AssetDownloader$NetworkType;
    }
.end annotation


# static fields
.field private static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final ACCEPT_RANGES:Ljava/lang/String; = "Accept-Ranges"

.field private static final BYTES:Ljava/lang/String; = "bytes"

.field private static final CONNECTION_RETRY_TIMEOUT:I = 0x12c

.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final DOWNLOAD_CHUNK_SIZE:I = 0x800

.field static final DOWNLOAD_COMPLETE:Ljava/lang/String; = "DOWNLOAD_COMPLETE"

.field static final DOWNLOAD_URL:Ljava/lang/String; = "Download_URL"

.field static final ETAG:Ljava/lang/String; = "ETag"

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final IDENTITY:Ljava/lang/String; = "identity"

.field private static final IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field private static final IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field private static final IF_RANGE:Ljava/lang/String; = "If-Range"

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "template"

.field static final LAST_CACHE_VERIFICATION:Ljava/lang/String; = "Last-Cache-Verification"

.field static final LAST_DOWNLOAD:Ljava/lang/String; = "Last-Download"

.field static final LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field private static final LOAD_CONTEXT:Ljava/lang/String; = "AssetDownloader#load; loadAd sequence"

.field private static final MAX_PERCENT:J = 0x64L

.field private static final MAX_RECONNECT_ATTEMPTS:I = 0xa

.field private static final META_POSTFIX_EXT:Ljava/lang/String; = ".vng_meta"

.field private static final PROGRESS_STEP:I = 0x5

.field private static final RANGE:Ljava/lang/String; = "Range"

.field private static final RANGE_NOT_SATISFIABLE:I = 0x1a0

.field private static final RETRY_COUNT_ON_CONNECTION_LOST:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT:I = 0x1e

.field public static final VERIFICATION_WINDOW:J


# instance fields
.field private final addLock:Ljava/lang/Object;

.field private final cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

.field private final downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private isCacheEnabled:Z

.field maxReconnectAttempts:I

.field private mediators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/vungle/warren/downloader/DownloadRequestMediator;",
            ">;"
        }
    .end annotation
.end field

.field private final networkListener:Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;

.field private final networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

.field private final okHttpClient:Lccsanokhttp3/OkHttpClient;

.field private volatile progressStep:I

.field reconnectTimeout:I

.field retryCountOnConnectionLost:I

.field private final timeWindow:J

.field private transitioning:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final uiExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->VERIFICATION_WINDOW:J

    .line 106
    const-class v0, Lccsancom/vungle/warren/downloader/AssetDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILccsancom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 7
    .param p1, "concurrentDownloads"    # I
    .param p2, "networkProvider"    # Lccsancom/vungle/warren/utility/NetworkProvider;
    .param p3, "uiExecutor"    # Ljava/util/concurrent/ExecutorService;

    .line 138
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lccsancom/vungle/warren/downloader/AssetDownloader;-><init>(Lccsancom/vungle/warren/downloader/DownloaderCache;JILccsancom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/downloader/DownloaderCache;JILccsancom/vungle/warren/utility/NetworkProvider;Ljava/util/concurrent/ExecutorService;)V
    .locals 14
    .param p1, "cache"    # Lccsancom/vungle/warren/downloader/DownloaderCache;
    .param p2, "timeWindow"    # J
    .param p4, "concurrentDownloads"    # I
    .param p5, "networkProvider"    # Lccsancom/vungle/warren/utility/NetworkProvider;
    .param p6, "uiExecutor"    # Ljava/util/concurrent/ExecutorService;

    .line 145
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v1, 0x5

    iput v1, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->retryCountOnConnectionLost:I

    .line 119
    const/16 v2, 0xa

    iput v2, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->maxReconnectAttempts:I

    .line 120
    const/16 v2, 0x12c

    iput v2, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->reconnectTimeout:I

    .line 128
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    .line 130
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->addLock:Ljava/lang/Object;

    .line 132
    iput v1, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->progressStep:I

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled:Z

    .line 1202
    new-instance v2, Lccsancom/vungle/warren/downloader/AssetDownloader$3;

    invoke-direct {v2, p0}, Lccsancom/vungle/warren/downloader/AssetDownloader$3;-><init>(Lccsancom/vungle/warren/downloader/AssetDownloader;)V

    iput-object v2, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->networkListener:Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;

    .line 146
    move-object v2, p1

    iput-object v2, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    .line 148
    move/from16 v3, p4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 149
    .local v11, "concurrentNum":I
    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    const-wide/16 v7, 0x1

    move-object v4, v12

    move v5, v11

    move v6, v11

    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 154
    .local v4, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 156
    move-wide/from16 v5, p2

    iput-wide v5, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->timeWindow:J

    .line 157
    iput-object v4, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 158
    move-object/from16 v7, p5

    iput-object v7, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

    .line 159
    move-object/from16 v8, p6

    iput-object v8, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 161
    new-instance v9, Lccsanokhttp3/OkHttpClient$Builder;

    invoke-direct {v9}, Lccsanokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 162
    const-wide/16 v12, 0x1e

    invoke-virtual {v9, v12, v13, v10}, Lccsanokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v9

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 163
    invoke-virtual {v9, v12, v13, v10}, Lccsanokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v9

    .line 164
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lccsanokhttp3/OkHttpClient$Builder;->cache(Lccsanokhttp3/Cache;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v9

    .line 165
    invoke-virtual {v9, v1}, Lccsanokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v9

    .line 166
    invoke-virtual {v9, v1}, Lccsanokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 168
    .local v1, "builder":Lccsanokhttp3/OkHttpClient$Builder;
    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient$Builder;->build()Lccsanokhttp3/OkHttpClient;

    move-result-object v9

    iput-object v9, v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->okHttpClient:Lccsanokhttp3/OkHttpClient;

    .line 169
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsancom/vungle/warren/downloader/DownloadRequest;
    .param p2, "x2"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->launchRequest(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V

    return-void
.end method

.method static synthetic access$1000(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsanokhttp3/Response;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsanokhttp3/Response;

    .line 74
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->getContentLength(Lccsanokhttp3/Response;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsanokhttp3/Response;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Lccsanokhttp3/Response;
    .param p3, "x3"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .param p4, "x4"    # Ljava/util/HashMap;

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->notModified(Ljava/io/File;Lccsanokhttp3/Response;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->useCacheOnFail(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/util/HashMap;

    .line 74
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->saveMeta(Ljava/io/File;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1400(Lccsancom/vungle/warren/downloader/AssetDownloader;JILccsanokhttp3/Response;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # Lccsanokhttp3/Response;
    .param p5, "x4"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 74
    invoke-direct/range {p0 .. p5}, Lccsancom/vungle/warren/downloader/AssetDownloader;->partialMalformed(JILccsanokhttp3/Response;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Z

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deleteFileAndMeta(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method static synthetic access$1600(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Ljava/io/File;Lccsanokhttp3/Headers;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Lccsanokhttp3/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->checkEncoding(Ljava/io/File;Ljava/io/File;Lccsanokhttp3/Headers;)V

    return-void
.end method

.method static synthetic access$1700(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsanokhttp3/Headers;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Lccsanokhttp3/Headers;
    .param p3, "x3"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->makeMeta(Ljava/io/File;Lccsanokhttp3/Headers;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsanokhttp3/Response;)Lccsanokhttp3/ResponseBody;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsanokhttp3/Response;

    .line 74
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->decodeGzipIfNeeded(Lccsanokhttp3/Response;)Lccsanokhttp3/ResponseBody;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .param p2, "x2"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;

    .line 74
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->onProgressMediator(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsancom/vungle/warren/downloader/DownloadRequest;
    .param p2, "x2"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    .param p3, "x3"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverError(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    return-void
.end method

.method static synthetic access$2000(Lccsancom/vungle/warren/downloader/AssetDownloader;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;

    .line 74
    iget v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->progressStep:I

    return v0
.end method

.method static synthetic access$2100(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/lang/Throwable;Z)I
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Z

    .line 74
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->mapExceptionToReason(Ljava/lang/Throwable;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lccsancom/vungle/warren/downloader/AssetDownloader;J)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # J

    .line 74
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->sleep(J)V

    return-void
.end method

.method static synthetic access$2300(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .param p2, "x2"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .param p3, "x3"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->pause(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 74
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->onSuccessMediator(Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method

.method static synthetic access$2500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .param p2, "x2"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 74
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->onErrorMediator(Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method

.method static synthetic access$2600(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 74
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->onCancelledMediator(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method

.method static synthetic access$2700(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 74
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    return-void
.end method

.method static synthetic access$2800(Lccsancom/vungle/warren/downloader/AssetDownloader;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;

    .line 74
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->removeNetworkListener()V

    return-void
.end method

.method static synthetic access$2900(Lccsancom/vungle/warren/downloader/AssetDownloader;I)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # I

    .line 74
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->onNetworkChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsancom/vungle/warren/downloader/DownloaderCache;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;

    .line 74
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 74
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->debugString(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 74
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isAnyConnected(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lccsancom/vungle/warren/downloader/AssetDownloader;Ljava/io/File;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Ljava/io/File;

    .line 74
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->extractMeta(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Ljava/util/Map;

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->useCacheWithoutVerification(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lccsancom/vungle/warren/downloader/AssetDownloader;JLjava/io/File;Ljava/util/HashMap;Lccsanokhttp3/Request$Builder;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/io/File;
    .param p4, "x3"    # Ljava/util/HashMap;
    .param p5, "x4"    # Lccsanokhttp3/Request$Builder;

    .line 74
    invoke-direct/range {p0 .. p5}, Lccsancom/vungle/warren/downloader/AssetDownloader;->appendHeaders(JLjava/io/File;Ljava/util/HashMap;Lccsanokhttp3/Request$Builder;)V

    return-void
.end method

.method static synthetic access$900(Lccsancom/vungle/warren/downloader/AssetDownloader;)Lccsanokhttp3/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/downloader/AssetDownloader;

    .line 74
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->okHttpClient:Lccsanokhttp3/OkHttpClient;

    return-object v0
.end method

.method private addNetworkListener()V
    .locals 2

    .line 715
    sget-object v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v1, "Adding network listner"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->networkListener:Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/utility/NetworkProvider;->addListener(Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    .line 717
    return-void
.end method

.method private appendHeaders(JLjava/io/File;Ljava/util/HashMap;Lccsanokhttp3/Request$Builder;)V
    .locals 5
    .param p1, "downloaded"    # J
    .param p3, "file"    # Ljava/io/File;
    .param p5, "requestBuilder"    # Lccsanokhttp3/Request$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsanokhttp3/Request$Builder;",
            ")V"
        }
    .end annotation

    .line 826
    .local p4, "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {p5, v0, v1}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 828
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 831
    :cond_0
    const-string v0, "ETag"

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 832
    .local v0, "eTag":Ljava/lang/String;
    const-string v2, "Last-Modified"

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 834
    .local v2, "lastModified":Ljava/lang/String;
    const-string v3, "DOWNLOAD_COMPLETE"

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 835
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 836
    const-string v1, "If-None-Match"

    invoke-virtual {p5, v1, v0}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 839
    :cond_1
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 840
    const-string v1, "If-Modified-Since"

    invoke-virtual {p5, v1, v2}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 843
    :cond_2
    return-void

    .line 846
    :cond_3
    const-string v3, "Accept-Ranges"

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "bytes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 847
    return-void

    .line 851
    :cond_4
    const-string v3, "Content-Encoding"

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 852
    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 853
    return-void

    .line 855
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Range"

    invoke-virtual {p5, v3, v1}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 857
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "If-Range"

    if-nez v1, :cond_6

    .line 858
    invoke-virtual {p5, v3, v0}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    goto :goto_0

    .line 859
    :cond_6
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 860
    invoke-virtual {p5, v3, v2}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    .line 862
    :cond_7
    :goto_0
    return-void

    .line 829
    .end local v0    # "eTag":Ljava/lang/String;
    .end local v2    # "lastModified":Ljava/lang/String;
    :cond_8
    :goto_1
    return-void
.end method

.method private checkEncoding(Ljava/io/File;Ljava/io/File;Lccsanokhttp3/Headers;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "metaFile"    # Ljava/io/File;
    .param p3, "headers"    # Lccsanokhttp3/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    const-string v0, "Content-Encoding"

    invoke-virtual {p3, v0}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "contentEncoding":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 783
    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 784
    const-string v2, "identity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 785
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deleteFileAndMeta(Ljava/io/File;Ljava/io/File;Z)V

    .line 786
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 787
    const-string v0, "unknown %1$s %2$s "

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 786
    const-string v2, "AssetDownloader#checkEncoding; loadAd sequence"

    invoke-static {v2, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unknown Content-Encoding"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_1
    :goto_0
    return-void
.end method

.method private copyToDestination(Ljava/io/File;Ljava/io/File;Lccsanandroidx/core/util/Pair;)V
    .locals 9
    .param p1, "from"    # Ljava/io/File;
    .param p2, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lccsanandroidx/core/util/Pair<",
            "Lccsancom/vungle/warren/downloader/DownloadRequest;",
            "Lccsancom/vungle/warren/downloader/AssetDownloadListener;",
            ">;)V"
        }
    .end annotation

    .line 1282
    .local p3, "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    const-string v0, " copying to "

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    invoke-static {p2}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 1285
    :cond_0
    const/4 v1, 0x0

    .line 1286
    .local v1, "inStream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 1288
    .local v2, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1289
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1293
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 1294
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 1295
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 1296
    .local v3, "inChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 1297
    .local v8, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 1298
    sget-object v4, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying: finished "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p3, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v6, v6, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    nop

    .end local v3    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v8    # "outChannel":Ljava/nio/channels/FileChannel;
    :goto_0
    invoke-static {v1}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1309
    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1310
    goto :goto_1

    .line 1308
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1299
    :catch_0
    move-exception v3

    .line 1300
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "AssetDownloader#copyToDestination; loadAd sequence"

    const-string v5, "cannot copy from %1$s(%2$s) to %3$s due to %4$s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1302
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p3, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v8, v8, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/4 v7, 0x3

    aput-object v3, v6, v7

    .line 1301
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1300
    invoke-static {v4, v5}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    iget-object v4, p3, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v5, p3, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    new-instance v6, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v3, v8}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, v4, v5, v6}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverError(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    .line 1306
    sget-object v4, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying: error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p3, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v6, v6, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1308
    nop

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1312
    :goto_1
    return-void

    .line 1308
    :goto_2
    invoke-static {v1}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1309
    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->closeQuietly(Ljava/io/Closeable;)V

    .line 1310
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private debugString(Lccsancom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .locals 2
    .param p1, "request"    # Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", single request url - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", th - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    return-object v0
.end method

.method private debugString(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;
    .locals 2
    .param p1, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mediator url - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", th - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1005
    return-object v0
.end method

.method private decodeGzipIfNeeded(Lccsanokhttp3/Response;)Lccsanokhttp3/ResponseBody;
    .locals 6
    .param p1, "networkResponse"    # Lccsanokhttp3/Response;

    .line 865
    const-string v0, "Content-Encoding"

    invoke-virtual {p1, v0}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-static {p1}, Lccsanokhttp3/internal/http/HttpHeaders;->hasBody(Lccsanokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {p1}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    new-instance v0, Lccsanokio/GzipSource;

    invoke-virtual {p1}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/ResponseBody;->source()Lccsanokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanokio/GzipSource;-><init>(Lccsanokio/Source;)V

    .line 869
    .local v0, "responseBody":Lccsanokio/GzipSource;
    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 870
    .local v1, "contentType":Ljava/lang/String;
    new-instance v2, Lccsanokhttp3/internal/http/RealResponseBody;

    const-wide/16 v3, -0x1

    invoke-static {v0}, Lccsanokio/Okio;->buffer(Lccsanokio/Source;)Lccsanokio/BufferedSource;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lccsanokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLccsanokio/BufferedSource;)V

    return-object v2

    .line 873
    .end local v0    # "responseBody":Lccsanokio/GzipSource;
    .end local v1    # "contentType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    return-object v0
.end method

.method private deleteFileAndMeta(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "metaFile"    # Ljava/io/File;
    .param p3, "removeFromCache"    # Z

    .line 1467
    if-nez p1, :cond_0

    .line 1468
    return-void

    .line 1470
    :cond_0
    invoke-static {p1}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 1472
    if-eqz p2, :cond_1

    .line 1473
    invoke-static {p2}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 1476
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1477
    if-eqz p3, :cond_2

    .line 1478
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v0, p1}, Lccsancom/vungle/warren/downloader/DownloaderCache;->deleteAndRemove(Ljava/io/File;)Z

    goto :goto_0

    .line 1480
    :cond_2
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v0, p1}, Lccsancom/vungle/warren/downloader/DownloaderCache;->deleteContents(Ljava/io/File;)Z

    .line 1483
    :cond_3
    :goto_0
    return-void
.end method

.method private deliverError(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
    .locals 3
    .param p1, "downloadRequest"    # Lccsancom/vungle/warren/downloader/DownloadRequest;
    .param p2, "downloadListener"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    .param p3, "error"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    .line 1420
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 1422
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->debugString(Lccsancom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1421
    const-string v1, "Delivering error %1$s; request %2$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1420
    const-string v1, "AssetDownloader#deliverError; loadAd sequence"

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    if-eqz p2, :cond_1

    .line 1424
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/downloader/AssetDownloader$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader$4;-><init>(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1431
    :cond_1
    return-void
.end method

.method private deliverProgress(Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V
    .locals 2
    .param p1, "copy"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .param p2, "downloadRequest"    # Lccsancom/vungle/warren/downloader/DownloadRequest;
    .param p3, "listener"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    .line 1455
    if-eqz p3, :cond_0

    .line 1456
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/vungle/warren/downloader/AssetDownloader$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader$5;-><init>(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1464
    :cond_0
    return-void
.end method

.method private deliverSuccess(Lccsanandroidx/core/util/Pair;Ljava/io/File;)V
    .locals 2
    .param p2, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/core/util/Pair<",
            "Lccsancom/vungle/warren/downloader/DownloadRequest;",
            "Lccsancom/vungle/warren/downloader/AssetDownloadListener;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1315
    .local p1, "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    iget-object v0, p1, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p1, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    iget-object v1, p1, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lccsancom/vungle/warren/downloader/DownloadRequest;

    invoke-interface {v0, p2, v1}, Lccsancom/vungle/warren/downloader/AssetDownloadListener;->onSuccess(Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    .line 1318
    :cond_0
    return-void
.end method

.method private extractMeta(Ljava/io/File;)Ljava/util/HashMap;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1247
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->readMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized findMediatorForCancellation(Lccsancom/vungle/warren/downloader/DownloadRequest;)Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .locals 6
    .param p1, "request"    # Lccsancom/vungle/warren/downloader/DownloadRequest;

    monitor-enter p0

    .line 916
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 917
    .local v0, "mediatorList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/downloader/DownloadRequestMediator;>;"
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->getCacheableKey(Lccsancom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->getNonCacheableKey(Lccsancom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 921
    .local v2, "candidate":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    if-nez v2, :cond_0

    .line 922
    goto :goto_0

    .line 924
    :cond_0
    invoke-virtual {v2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 925
    .local v4, "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 926
    monitor-exit p0

    return-object v2

    .line 927
    .end local v4    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    :cond_1
    goto :goto_1

    .line 928
    .end local v2    # "candidate":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    :cond_2
    goto :goto_0

    .line 930
    :cond_3
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 915
    .end local v0    # "mediatorList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/downloader/DownloadRequestMediator;>;"
    .end local p1    # "request":Lccsancom/vungle/warren/downloader/DownloadRequest;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private getCacheableKey(Lccsancom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1387
    iget-object v0, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method private getContentLength(Lccsanokhttp3/Response;)J
    .locals 4
    .param p1, "response"    # Lccsanokhttp3/Response;

    .line 958
    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    .line 959
    return-wide v0

    .line 961
    :cond_0
    invoke-virtual {p1}, Lccsanokhttp3/Response;->headers()Lccsanokhttp3/Headers;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 962
    .local v2, "header":Ljava/lang/String;
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 963
    return-wide v0

    .line 966
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 967
    :catchall_0
    move-exception v3

    .line 968
    .local v3, "t":Ljava/lang/Throwable;
    return-wide v0
.end method

.method private getNonCacheableKey(Lccsancom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .locals 2
    .param p1, "request"    # Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAnyConnected(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .locals 4
    .param p1, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 1019
    invoke-virtual {p1}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1021
    .local v1, "request":Lccsancom/vungle/warren/downloader/DownloadRequest;
    if-nez v1, :cond_0

    .line 1022
    sget-object v2, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v3, "Request is null"

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    goto :goto_0

    .line 1026
    :cond_0
    invoke-direct {p0, v1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isConnected(Lccsancom/vungle/warren/downloader/DownloadRequest;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1027
    const/4 v0, 0x1

    return v0

    .line 1028
    .end local v1    # "request":Lccsancom/vungle/warren/downloader/DownloadRequest;
    :cond_1
    goto :goto_0

    .line 1030
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isConnected(Lccsancom/vungle/warren/downloader/DownloadRequest;)Z
    .locals 6
    .param p1, "request"    # Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1035
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v0}, Lccsancom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result v0

    .line 1037
    .local v0, "conType":I
    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iget v2, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->networkType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1038
    return v1

    .line 1041
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 1054
    const/4 v2, -0x1

    .local v2, "mapped":I
    goto :goto_0

    .line 1045
    .end local v2    # "mapped":I
    :sswitch_0
    const/4 v2, 0x2

    .line 1046
    .restart local v2    # "mapped":I
    goto :goto_0

    .line 1051
    .end local v2    # "mapped":I
    :sswitch_1
    const/4 v2, 0x1

    .line 1052
    .restart local v2    # "mapped":I
    nop

    .line 1057
    :goto_0
    if-lez v2, :cond_1

    iget v3, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->networkType:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1059
    .local v1, "connected":Z
    :goto_1
    sget-object v3, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checking pause for type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " connected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1061
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->debugString(Lccsancom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1059
    invoke-static {v3, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
        0x11 -> :sswitch_1
    .end sparse-switch
.end method

.method private launchRequest(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V
    .locals 7
    .param p1, "downloadRequest"    # Lccsancom/vungle/warren/downloader/DownloadRequest;
    .param p2, "downloadListener"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->addLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 219
    :try_start_1
    invoke-virtual {p1}, Lccsancom/vungle/warren/downloader/DownloadRequest;->isCancelled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x3

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 221
    sget-object v1, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is cancelled before starting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v1, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {v1}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 223
    .local v1, "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    iput v4, v1, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 225
    new-instance v4, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Cancelled"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3, v5, v2}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, p1, p2, v4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverError(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    .line 230
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    return-void

    .line 233
    .end local v1    # "progress":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    :cond_0
    :try_start_3
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediatorKeyFromRequest(Lccsancom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 235
    .local v1, "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    if-nez v1, :cond_1

    .line 236
    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 237
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->makeNewMediator(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object v2

    move-object v1, v2

    .line 238
    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    iget-object v3, v1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-direct {p0, v1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->load(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 240
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-void

    .line 242
    :cond_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 245
    :try_start_6
    invoke-virtual {v1}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->lock()V

    .line 246
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 247
    :try_start_7
    iget-object v5, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 249
    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 250
    invoke-virtual {v1, v4}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lccsancom/vungle/warren/downloader/DownloadRequest;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 255
    :cond_2
    iget-boolean v4, v1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v4, :cond_3

    .line 256
    invoke-virtual {v1, p1, p2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->add(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V

    .line 258
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 259
    invoke-direct {p0, v1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->load(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    goto :goto_1

    .line 262
    :cond_3
    const-string v4, "AssetDownloader#launchRequest; loadAd sequence"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is already running"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsancom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v4, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "DownloadRequest is already running"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v3, v5, v2}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, p1, p2, v4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverError(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    goto :goto_1

    .line 251
    :cond_4
    :goto_0
    nop

    .line 252
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->makeNewMediator(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object v2

    .line 253
    .local v2, "mediatorNew":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    iget-object v3, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    iget-object v4, v1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-direct {p0, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->load(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 255
    .end local v2    # "mediatorNew":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    nop

    .line 274
    :cond_5
    :goto_1
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 276
    :try_start_8
    invoke-virtual {v1}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    .line 277
    nop

    .line 278
    .end local v1    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 279
    return-void

    .line 274
    .restart local v1    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    :catchall_0
    move-exception v2

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local v1    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .end local p1    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    .end local p2    # "downloadListener":Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 276
    .restart local v1    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .restart local p1    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    .restart local p2    # "downloadListener":Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    :catchall_1
    move-exception v2

    :try_start_b
    invoke-virtual {v1}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    .line 277
    nop

    .end local p1    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    .end local p2    # "downloadListener":Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 242
    .end local v1    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .restart local p1    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    .restart local p2    # "downloadListener":Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    :catchall_2
    move-exception v1

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .end local p1    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    .end local p2    # "downloadListener":Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    :try_start_d
    throw v1

    .line 278
    .restart local p1    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    .restart local p2    # "downloadListener":Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v1
.end method

.method private declared-synchronized load(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 2
    .param p1, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    monitor-enter p0

    .line 328
    :try_start_0
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->addNetworkListener()V

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 331
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lccsancom/vungle/warren/downloader/AssetDownloader$2;

    invoke-direct {v1, p0, p1, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader$2;-><init>(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 327
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    .end local p1    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private makeMeta(Ljava/io/File;Lccsanokhttp3/Headers;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .param p1, "metaFile"    # Ljava/io/File;
    .param p2, "headers"    # Lccsanokhttp3/Headers;
    .param p3, "URL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lccsanokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 771
    .local v0, "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Download_URL"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v1, "ETag"

    invoke-virtual {p2, v1}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v1, "Last-Modified"

    invoke-virtual {p2, v1}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v1, "Accept-Ranges"

    invoke-virtual {p2, v1}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v1, "Content-Encoding"

    invoke-virtual {p2, v1}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->saveMeta(Ljava/io/File;Ljava/util/HashMap;)V

    .line 777
    return-object v0
.end method

.method private makeNewMediator(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .locals 12
    .param p1, "downloadRequest"    # Lccsancom/vungle/warren/downloader/DownloadRequest;
    .param p2, "downloadListener"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "cacheable":Z
    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, "fileToSave":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".vng_meta"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v2, "metaFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "key":Ljava/lang/String;
    goto :goto_0

    .line 294
    .end local v1    # "fileToSave":Ljava/io/File;
    .end local v2    # "metaFile":Ljava/io/File;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    iget-object v2, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-interface {v1, v2}, Lccsancom/vungle/warren/downloader/DownloaderCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 295
    .restart local v1    # "fileToSave":Ljava/io/File;
    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v2, v1}, Lccsancom/vungle/warren/downloader/DownloaderCache;->getMetaFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 296
    .restart local v2    # "metaFile":Ljava/io/File;
    const/4 v0, 0x1

    .line 297
    iget-object v3, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    .line 300
    .restart local v3    # "key":Ljava/lang/String;
    :goto_0
    sget-object v4, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destination file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v11, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 305
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 306
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    move-object v4, v11

    move-object v5, p1

    move-object v6, p2

    move v9, v0

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;-><init>(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 302
    return-object v11
.end method

.method private mapExceptionToReason(Ljava/lang/Throwable;Z)I
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "connected"    # Z

    .line 942
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 943
    const/4 v0, 0x4

    .local v0, "reason":I
    goto :goto_2

    .line 944
    .end local v0    # "reason":I
    :cond_0
    if-eqz p2, :cond_4

    instance-of v0, p1, Ljava/net/SocketException;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 948
    :cond_1
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 952
    :cond_2
    const/4 v0, 0x2

    .restart local v0    # "reason":I
    goto :goto_2

    .line 950
    .end local v0    # "reason":I
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .restart local v0    # "reason":I
    goto :goto_2

    .line 947
    .end local v0    # "reason":I
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 954
    .restart local v0    # "reason":I
    :goto_2
    return v0
.end method

.method private mediatorKeyFromRequest(Lccsancom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1377
    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->getCacheableKey(Lccsancom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1379
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->getNonCacheableKey(Lccsancom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1377
    :goto_0
    return-object v0
.end method

.method private notModified(Ljava/io/File;Lccsanokhttp3/Response;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/util/HashMap;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "response"    # Lccsanokhttp3/Response;
    .param p3, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lccsanokhttp3/Response;",
            "Lccsancom/vungle/warren/downloader/DownloadRequestMediator;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 977
    .local p4, "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    iget-boolean v1, p3, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 981
    :cond_0
    invoke-virtual {p2}, Lccsanokhttp3/Response;->code()I

    move-result v1

    .line 982
    .local v1, "code":I
    const-string v2, "DOWNLOAD_COMPLETE"

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 984
    .local v2, "downloadComplete":Z
    if-eqz v2, :cond_1

    const/16 v3, 0x130

    if-ne v1, v3, :cond_1

    .line 985
    sget-object v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "304 code, data size matches file size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->debugString(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v0, 0x1

    return v0

    .line 989
    :cond_1
    return v0

    .line 978
    .end local v1    # "code":I
    .end local v2    # "downloadComplete":Z
    :cond_2
    :goto_0
    return v0
.end method

.method private onCancelled(Lccsancom/vungle/warren/downloader/DownloadRequest;)V
    .locals 6
    .param p1, "request"    # Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 885
    invoke-virtual {p1}, Lccsancom/vungle/warren/downloader/DownloadRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    return-void

    .line 888
    :cond_0
    invoke-virtual {p1}, Lccsancom/vungle/warren/downloader/DownloadRequest;->cancel()V

    .line 890
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->findMediatorForCancellation(Lccsancom/vungle/warren/downloader/DownloadRequest;)Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object v0

    .line 892
    .local v0, "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 894
    invoke-virtual {v0, p1}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->remove(Lccsancom/vungle/warren/downloader/DownloadRequest;)Lccsanandroidx/core/util/Pair;

    move-result-object v1

    .line 896
    .local v1, "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 897
    .local v4, "childRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    .line 899
    .local v3, "listener":Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    :goto_1
    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 900
    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 903
    :cond_3
    if-nez v4, :cond_4

    .line 904
    return-void

    .line 906
    :cond_4
    new-instance v5, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;

    invoke-direct {v5}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;-><init>()V

    .line 907
    .local v5, "progressEnd":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    iput v2, v5, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 908
    invoke-direct {p0, v5, v4, v3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverProgress(Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V

    .line 911
    .end local v1    # "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    .end local v3    # "listener":Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    .end local v4    # "childRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    .end local v5    # "progressEnd":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    :cond_5
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->removeNetworkListener()V

    .line 912
    return-void
.end method

.method private declared-synchronized onCancelledMediator(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 3
    .param p1, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    monitor-enter p0

    .line 878
    :try_start_0
    invoke-virtual {p1}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object v0

    .line 879
    .local v0, "all":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/downloader/DownloadRequest;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 880
    .local v2, "request":Lccsancom/vungle/warren/downloader/DownloadRequest;
    invoke-direct {p0, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->onCancelled(Lccsancom/vungle/warren/downloader/DownloadRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    .end local v2    # "request":Lccsancom/vungle/warren/downloader/DownloadRequest;
    goto :goto_0

    .line 882
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    :cond_0
    monitor-exit p0

    return-void

    .line 877
    .end local v0    # "all":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/vungle/warren/downloader/DownloadRequest;>;"
    .end local p1    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private onErrorMediator(Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 4
    .param p1, "downloadError"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    .param p2, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 1393
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1395
    invoke-direct {p0, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->debugString(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1394
    const-string v1, "Error %1$s occured; mediator %2$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1393
    const-string v1, "AssetDownloader#onErrorMediator; loadAd sequence"

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    if-nez p1, :cond_0

    .line 1397
    new-instance v0, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    move-object p1, v0

    .line 1404
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->lock()V

    .line 1406
    invoke-virtual {p2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/util/Pair;

    .line 1407
    .local v1, "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    iget-object v2, v1, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v3, v1, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, v2, v3, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverError(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    .line 1408
    .end local v1    # "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    goto :goto_0

    .line 1410
    :cond_1
    invoke-direct {p0, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 1411
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    invoke-virtual {p2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    .line 1414
    nop

    .line 1415
    return-void

    .line 1413
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    .line 1414
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private declared-synchronized onNetworkChanged(I)V
    .locals 6
    .param p1, "connectionType"    # I

    monitor-enter p0

    .line 1135
    :try_start_0
    sget-object v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num of connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 1138
    .local v1, "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1139
    sget-object v2, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v3, "Result cancelled"

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    goto :goto_0

    .line 1143
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    :cond_0
    invoke-direct {p0, v1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isAnyConnected(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v2

    .line 1145
    .local v2, "connected":Z
    sget-object v3, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->setConnected(Z)V

    .line 1149
    invoke-virtual {v1}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isPausable()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1150
    invoke-direct {p0, v1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->load(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 1151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    .end local v1    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .end local v2    # "connected":Z
    :cond_1
    goto :goto_0

    .line 1155
    :cond_2
    monitor-exit p0

    return-void

    .line 1134
    .end local p1    # "connectionType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private onProgressMediator(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;)V
    .locals 5
    .param p1, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .param p2, "progress"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;

    .line 1438
    if-nez p1, :cond_0

    .line 1439
    return-void

    .line 1441
    :cond_0
    invoke-static {p2}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->copy(Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;)Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;

    move-result-object v0

    .line 1442
    .local v0, "copy":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    sget-object v1, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Progress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->progressPercent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-virtual {p1}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/util/Pair;

    .line 1447
    .local v2, "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    iget-object v3, v2, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v4, v2, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, v0, v3, v4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverProgress(Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V

    .line 1448
    .end local v2    # "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    goto :goto_0

    .line 1450
    :cond_1
    return-void
.end method

.method private onSuccessMediator(Ljava/io/File;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 1323
    sget-object v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnComplete - Removing connections and listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :try_start_0
    invoke-virtual {p2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->lock()V

    .line 1329
    nop

    .line 1330
    invoke-virtual {p2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    .line 1332
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;>;"
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1333
    const-string v1, "AssetDownloader#onSuccessMediator; loadAd sequence"

    const-string v2, "File %1$s does not exist; mediator %2$s "

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1334
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 1335
    invoke-direct {p0, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->debugString(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1334
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1333
    invoke-static {v1, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    new-instance v1, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v2, -0x1

    new-instance v4, Ljava/io/IOException;

    const-string v5, "File is deleted"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v4, v3}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, v1, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->onErrorMediator(Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    invoke-virtual {p2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    .line 1344
    return-void

    .line 1347
    :cond_0
    :try_start_1
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v1, :cond_1

    .line 1348
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, p1, v2, v3}, Lccsancom/vungle/warren/downloader/DownloaderCache;->onCacheHit(Ljava/io/File;J)V

    .line 1349
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lccsancom/vungle/warren/downloader/DownloaderCache;->setCacheLastUpdateTimestamp(Ljava/io/File;J)V

    .line 1352
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/util/Pair;

    .line 1353
    .local v2, "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v4, v4, Lccsancom/vungle/warren/downloader/DownloadRequest;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1356
    .local v3, "destFile":Ljava/io/File;
    invoke-virtual {v3, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1357
    invoke-direct {p0, p1, v3, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->copyToDestination(Ljava/io/File;Ljava/io/File;Lccsanandroidx/core/util/Pair;)V

    goto :goto_1

    .line 1359
    :cond_2
    move-object v3, p1

    .line 1362
    :goto_1
    sget-object v4, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deliver success:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v6, v6, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dest file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1362
    invoke-static {v4, v5}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-direct {p0, v2, v3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverSuccess(Lccsanandroidx/core/util/Pair;Ljava/io/File;)V

    .line 1366
    .end local v2    # "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    .end local v3    # "destFile":Ljava/io/File;
    goto :goto_0

    .line 1368
    :cond_3
    invoke-direct {p0, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->removeMediator(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V

    .line 1369
    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 1370
    sget-object v1, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->debugString(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1372
    nop

    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;>;"
    invoke-virtual {p2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    .line 1373
    nop

    .line 1374
    return-void

    .line 1372
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->unlock()V

    .line 1373
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private partialMalformed(JILccsanokhttp3/Response;Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .locals 1
    .param p1, "downloaded"    # J
    .param p3, "code"    # I
    .param p4, "response"    # Lccsanokhttp3/Response;
    .param p5, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 816
    const/16 v0, 0xce

    if-ne p3, v0, :cond_0

    .line 817
    invoke-direct {p0, p4, p1, p2, p5}, Lccsancom/vungle/warren/downloader/AssetDownloader;->satisfiesPartialDownload(Lccsanokhttp3/Response;JLccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x1a0

    if-ne p3, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 816
    :goto_0
    return v0
.end method

.method private pause(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)Z
    .locals 10
    .param p1, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .param p2, "progress"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    .param p3, "error"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    .line 722
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->is(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->isAnyConnected(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 725
    :cond_0
    const/4 v0, 0x0

    .line 726
    .local v0, "anyPaused":Z
    const/4 v2, 0x2

    iput v2, p2, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->status:I

    .line 727
    invoke-static {p2}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;->copy(Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;)Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;

    move-result-object v3

    .line 729
    .local v3, "copy":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    invoke-virtual {p1}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroidx/core/util/Pair;

    .line 731
    .local v5, "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    iget-object v6, v5, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 733
    .local v6, "request":Lccsancom/vungle/warren/downloader/DownloadRequest;
    if-nez v6, :cond_1

    .line 734
    goto :goto_0

    .line 736
    :cond_1
    iget-boolean v7, v6, Lccsancom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    if-nez v7, :cond_2

    .line 737
    invoke-virtual {p1, v6}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->remove(Lccsancom/vungle/warren/downloader/DownloadRequest;)Lccsanandroidx/core/util/Pair;

    .line 738
    iget-object v7, v5, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, v6, v7, p3}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverError(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V

    .line 739
    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {p1, v2}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 743
    const/4 v0, 0x1

    .line 745
    sget-object v7, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pausing download "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lccsancom/vungle/warren/downloader/AssetDownloader;->debugString(Lccsancom/vungle/warren/downloader/DownloadRequest;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v7, v5, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-object v8, v5, Lccsanandroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    invoke-direct {p0, v3, v7, v8}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverProgress(Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V

    .line 748
    .end local v5    # "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    .end local v6    # "request":Lccsancom/vungle/warren/downloader/DownloadRequest;
    goto :goto_0

    .line 750
    :cond_3
    if-nez v0, :cond_4

    .line 751
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->set(I)V

    .line 753
    :cond_4
    sget-object v4, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to pause - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getStatus()I

    move-result v6

    if-ne v6, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return v0

    .line 723
    .end local v0    # "anyPaused":Z
    .end local v3    # "copy":Lccsancom/vungle/warren/downloader/AssetDownloadListener$Progress;
    :cond_6
    :goto_1
    return v1
.end method

.method private declared-synchronized removeMediator(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    .locals 2
    .param p1, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    monitor-enter p0

    .line 711
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    iget-object v1, p1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    monitor-exit p0

    return-void

    .line 710
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    .end local p1    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private removeNetworkListener()V
    .locals 2

    .line 934
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    sget-object v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v1, "Removing listener"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->networkListener:Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/utility/NetworkProvider;->removeListener(Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    .line 938
    :cond_0
    return-void
.end method

.method private responseVersionMatches(Lccsanokhttp3/Response;Ljava/util/HashMap;)Z
    .locals 8
    .param p1, "response"    # Lccsanokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/Response;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1160
    .local p2, "metaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lccsanokhttp3/Response;->headers()Lccsanokhttp3/Headers;

    move-result-object v0

    .line 1162
    .local v0, "headers":Lccsanokhttp3/Headers;
    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1163
    .local v2, "etag":Ljava/lang/String;
    const-string v3, "Last-Modified"

    invoke-virtual {v0, v3}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1164
    .local v4, "lastModified":Ljava/lang/String;
    sget-object v5, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "server etag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "server lastModified: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "etags miss match current: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return v6

    .line 1172
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastModified miss match current: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    return v6

    .line 1177
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private satisfiesPartialDownload(Lccsanokhttp3/Response;JLccsancom/vungle/warren/downloader/DownloadRequestMediator;)Z
    .locals 6
    .param p1, "response"    # Lccsanokhttp3/Response;
    .param p2, "bytesLoaded"    # J
    .param p4, "downloadRequest"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 995
    new-instance v0, Lccsancom/vungle/warren/downloader/RangeResponse;

    invoke-virtual {p1}, Lccsanokhttp3/Response;->headers()Lccsanokhttp3/Headers;

    move-result-object v1

    const-string v2, "Content-Range"

    invoke-virtual {v1, v2}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/downloader/RangeResponse;-><init>(Ljava/lang/String;)V

    .line 996
    .local v0, "rangeResponse":Lccsancom/vungle/warren/downloader/RangeResponse;
    invoke-virtual {p1}, Lccsanokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xce

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lccsancom/vungle/warren/downloader/RangeResponse;->dimension:Ljava/lang/String;

    .line 997
    const-string v2, "bytes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lccsancom/vungle/warren/downloader/RangeResponse;->rangeStart:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    iget-wide v1, v0, Lccsancom/vungle/warren/downloader/RangeResponse;->rangeStart:J

    cmp-long v3, p2, v1

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1000
    .local v1, "result":Z
    :goto_0
    sget-object v2, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "satisfies partial download: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lccsancom/vungle/warren/downloader/AssetDownloader;->debugString(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return v1
.end method

.method private saveMeta(Ljava/io/File;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "metaFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1251
    .local p2, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lccsancom/vungle/warren/utility/FileUtility;->writeMap(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1252
    return-void
.end method

.method private sleep(J)V
    .locals 3
    .param p1, "time"    # J

    .line 760
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    goto :goto_0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "ie":Ljava/lang/InterruptedException;
    sget-object v1, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v2, "InterruptedException "

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 765
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method private useCacheOnFail(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;I)Z
    .locals 5
    .param p1, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .param p2, "file"    # Ljava/io/File;
    .param p4, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/downloader/DownloadRequestMediator;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 700
    .local p3, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p4, v0, :cond_0

    const/16 v0, 0x1a0

    if-eq p4, v0, :cond_0

    const/16 v0, 0xce

    if-eq p4, v0, :cond_0

    .line 705
    const-string v0, "DOWNLOAD_COMPLETE"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 700
    :goto_0
    return v0
.end method

.method private useCacheWithoutVerification(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;Ljava/io/File;Ljava/util/Map;)Z
    .locals 9
    .param p1, "mediator"    # Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/downloader/DownloadRequestMediator;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 793
    .local p3, "meta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_5

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    if-eqz v1, :cond_5

    iget-boolean v1, p1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 796
    :cond_0
    const-string v1, "Last-Cache-Verification"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 797
    .local v1, "lastCheck":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 798
    const-string v2, "DOWNLOAD_COMPLETE"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 804
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .local v2, "timeStamp":J
    nop

    .line 809
    iget-wide v4, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->timeWindow:J

    const-wide v6, 0x7fffffffffffffffL

    sub-long/2addr v6, v2

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    add-long/2addr v4, v2

    .line 810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-ltz v8, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 809
    :cond_3
    return v0

    .line 805
    .end local v2    # "timeStamp":J
    :catch_0
    move-exception v2

    .line 806
    .local v2, "ex":Ljava/lang/NumberFormatException;
    return v0

    .line 799
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_0
    return v0

    .line 794
    .end local v1    # "lastCheck":Ljava/lang/String;
    :cond_5
    :goto_1
    return v0
.end method


# virtual methods
.method public declared-synchronized cancel(Lccsancom/vungle/warren/downloader/DownloadRequest;)V
    .locals 0
    .param p1, "request"    # Lccsancom/vungle/warren/downloader/DownloadRequest;

    monitor-enter p0

    .line 1092
    if-nez p1, :cond_0

    .line 1093
    monitor-exit p0

    return-void

    .line 1095
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->onCancelled(Lccsancom/vungle/warren/downloader/DownloadRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    monitor-exit p0

    return-void

    .line 1091
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    .end local p1    # "request":Lccsancom/vungle/warren/downloader/DownloadRequest;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancelAll()V
    .locals 5

    monitor-enter p0

    .line 1100
    :try_start_0
    sget-object v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v1, "Cancelling all"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1102
    .local v1, "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    sget-object v2, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel in transtiotion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-virtual {p0, v1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->cancel(Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    .line 1104
    .end local v1    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    goto :goto_0

    .line 1106
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel in mediator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 1108
    .local v1, "request":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    sget-object v2, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel in mediator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    invoke-direct {p0, v1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->onCancelledMediator(Lccsancom/vungle/warren/downloader/DownloadRequestMediator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    .end local v1    # "request":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    goto :goto_1

    .line 1111
    :cond_1
    monitor-exit p0

    return-void

    .line 1099
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public cancelAndAwait(Lccsancom/vungle/warren/downloader/DownloadRequest;J)Z
    .locals 6
    .param p1, "request"    # Lccsancom/vungle/warren/downloader/DownloadRequest;
    .param p2, "timeout"    # J

    .line 1068
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1069
    return v0

    .line 1071
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->cancel(Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    .line 1073
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 1075
    .local v1, "until":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-gez v5, :cond_3

    .line 1076
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->findMediatorForCancellation(Lccsancom/vungle/warren/downloader/DownloadRequest;)Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object v3

    .line 1077
    .local v3, "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    monitor-enter p0

    .line 1078
    :try_start_0
    iget-object v4, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    .line 1079
    invoke-virtual {v3}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1080
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1082
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    const-wide/16 v4, 0xa

    invoke-direct {p0, v4, v5}, Lccsancom/vungle/warren/downloader/AssetDownloader;->sleep(J)V

    .line 1085
    .end local v3    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    goto :goto_0

    .line 1082
    .restart local v3    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1087
    .end local v3    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    :cond_3
    return v0
.end method

.method public declared-synchronized clearCache()V
    .locals 1

    monitor-enter p0

    .line 1129
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_0

    .line 1130
    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    :cond_0
    monitor-exit p0

    return-void

    .line 1128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized download(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V
    .locals 8
    .param p1, "downloadRequest"    # Lccsancom/vungle/warren/downloader/DownloadRequest;
    .param p2, "downloadListener"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    monitor-enter p0

    .line 175
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 176
    :try_start_0
    const-string v1, "AssetDownloader#download; loadAd sequence"

    const-string v2, "downloadRequest is null"

    invoke-static {v1, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-eqz p2, :cond_0

    .line 178
    const/4 v1, 0x0

    new-instance v2, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;

    const/4 v3, -0x1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "DownloadRequest is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v0}, Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;-><init>(ILjava/lang/Throwable;I)V

    invoke-direct {p0, v1, p2, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->deliverError(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Lccsancom/vungle/warren/downloader/AssetDownloadListener$DownloadError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    :cond_0
    monitor-exit p0

    return-void

    .line 188
    :cond_1
    :try_start_1
    sget-object v1, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v2, "ttDownloadContext"

    const-string v3, "Waiting for download asset %1$s, at: %2$d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v0, v1, v2, v3}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lccsancom/vungle/warren/downloader/AssetDownloader$1;

    new-instance v2, Lccsancom/vungle/warren/downloader/AssetPriority;

    const v3, -0x7fffffff

    invoke-direct {v2, v3, v5}, Lccsancom/vungle/warren/downloader/AssetPriority;-><init>(II)V

    invoke-direct {v1, p0, v2, p1, p2}, Lccsancom/vungle/warren/downloader/AssetDownloader$1;-><init>(Lccsancom/vungle/warren/downloader/AssetDownloader;Lccsancom/vungle/warren/downloader/AssetPriority;Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 174
    .end local p1    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    .end local p2    # "downloadListener":Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dropCache(Ljava/lang/String;)Z
    .locals 5
    .param p1, "serverPath"    # Ljava/lang/String;

    .line 1487
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1489
    :try_start_0
    invoke-interface {v0, p1}, Lccsancom/vungle/warren/downloader/DownloaderCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1490
    .local v0, "file":Ljava/io/File;
    sget-object v2, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broken asset, deleting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    invoke-interface {v2, v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->deleteAndRemove(Ljava/io/File;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1492
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 1494
    const-string v3, "Error %1$s occured"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1493
    const-string v3, "AssetDownloader#dropCache; loadAd sequence"

    invoke-static {v3, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    sget-object v2, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v3, "There was an error to get file"

    invoke-static {v2, v3, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1499
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return v1
.end method

.method public declared-synchronized getAllRequests()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 315
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v0, "requests":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/downloader/DownloadRequest;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 318
    .local v1, "mediatorList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/downloader/DownloadRequestMediator;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    .line 319
    .local v3, "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    invoke-virtual {v3}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->requests()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    nop

    .end local v3    # "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    goto :goto_0

    .line 322
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    :cond_0
    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-object v0

    .line 314
    .end local v0    # "requests":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/downloader/DownloadRequest;>;"
    .end local v1    # "mediatorList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/downloader/DownloadRequestMediator;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    .line 1122
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_0

    .line 1123
    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/DownloaderCache;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    :cond_0
    monitor-exit p0

    return-void

    .line 1121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCacheEnabled()Z
    .locals 1

    monitor-enter p0

    .line 1504
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 1504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCacheEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    monitor-enter p0

    .line 1509
    :try_start_0
    iput-boolean p1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->isCacheEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1510
    monitor-exit p0

    return-void

    .line 1508
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    .end local p1    # "isEnabled":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setDownloadedForTests(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "downloaded"    # Z
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 1259
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1260
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->cache:Lccsancom/vungle/warren/downloader/DownloaderCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1262
    :try_start_1
    invoke-interface {v1, p2}, Lccsancom/vungle/warren/downloader/DownloaderCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Lccsancom/vungle/warren/downloader/DownloaderCache;->getMetaFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1266
    goto :goto_0

    .line 1263
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    :catch_0
    move-exception v1

    .line 1264
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v2, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v3, "Cannot add or get meta file"

    invoke-static {v2, v3, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1265
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to get file for request"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1269
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".vng_meta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 1272
    .local v2, "file":Ljava/io/File;
    invoke-direct {p0, v2}, Lccsancom/vungle/warren/downloader/AssetDownloader;->extractMeta(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v3

    .line 1273
    .local v3, "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "DOWNLOAD_COMPLETE"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    invoke-static {v2, v3}, Lccsancom/vungle/warren/utility/FileUtility;->writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1275
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "meta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 1276
    :cond_1
    monitor-exit p0

    return-void

    .line 1258
    .end local v0    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local p1    # "downloaded":Z
    .end local p2    # "url":Ljava/lang/String;
    .end local p3    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public setProgressStep(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1115
    if-eqz p1, :cond_0

    .line 1116
    iput p1, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->progressStep:I

    .line 1118
    :cond_0
    return-void
.end method

.method declared-synchronized shutdown()V
    .locals 4

    monitor-enter p0

    .line 1188
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/downloader/AssetDownloader;->cancel(Lccsancom/vungle/warren/downloader/DownloadRequest;)V

    .line 1189
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->transitioning:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1190
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->mediators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1191
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1192
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    :try_start_1
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 1195
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->uiExecutor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1199
    goto :goto_0

    .line 1196
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/AssetDownloader;
    :catch_0
    move-exception v0

    .line 1197
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v1, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    const-string v2, "InterruptedException "

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1198
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1200
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit p0

    return-void

    .line 1187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updatePriority(Lccsancom/vungle/warren/downloader/DownloadRequest;)V
    .locals 5
    .param p1, "request"    # Lccsancom/vungle/warren/downloader/DownloadRequest;

    .line 1514
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/downloader/AssetDownloader;->findMediatorForCancellation(Lccsancom/vungle/warren/downloader/DownloadRequest;)Lccsancom/vungle/warren/downloader/DownloadRequestMediator;

    move-result-object v0

    .line 1515
    .local v0, "mediator":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    .line 1517
    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1518
    sget-object v2, Lccsancom/vungle/warren/downloader/AssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prio: updated to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->getPriority()Lccsancom/vungle/warren/downloader/AssetPriority;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v2, p0, Lccsancom/vungle/warren/downloader/AssetDownloader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1522
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
