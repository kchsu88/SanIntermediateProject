.class public Lccsancom/vungle/warren/log/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_CRASH_COLLECT_ENABLED:Z = false

.field public static final DEFAULT_CRASH_SEND_BATCH_MAX:I = 0x5

.field public static final DEFAULT_LOGGING_ENABLED:Z = false

.field static final LOGGER_PREFS_FILENAME:Ljava/lang/String; = "com.vungle.sdk"

.field static final PREFS_CRASH_BATCH_MAX_KEY:Ljava/lang/String; = "crash_batch_max"

.field static final PREFS_CRASH_COLLECT_FILTER_KEY:Ljava/lang/String; = "crash_collect_filter"

.field static final PREFS_CRASH_REPORT_ENABLED_KEY:Ljava/lang/String; = "crash_report_enabled"

.field static final PREFS_LOGGING_ENABLED_KEY:Ljava/lang/String; = "logging_enabled"

.field private static final TAG:Ljava/lang/String;

.field public static sDefaultCollectFilter:Ljava/lang/String;


# instance fields
.field private final bundleID:Ljava/lang/String;

.field private crashBatchMax:Ljava/util/concurrent/atomic/AtomicInteger;

.field private crashCollectFilter:Ljava/lang/String;

.field private final crashReportEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final customDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gson:Lccsancom/google/gson/Gson;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private isCrashReportInit:Z

.field private jvmCrashCollector:Lccsancom/vungle/warren/log/JVMCrashCollector;

.field private final logPersister:Lccsancom/vungle/warren/log/LogPersister;

.field private final logSender:Lccsancom/vungle/warren/log/LogSender;

.field private final loggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

.field private sdkLoggingEventListener:Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lccsancom/vungle/warren/log/LogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/log/LogManager;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "com.vungle"

    sput-object v0, Lccsancom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/log/LogPersister;Lccsancom/vungle/warren/log/LogSender;Ljava/util/concurrent/Executor;Lccsancom/vungle/warren/persistence/FilePreferences;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "logPersister"    # Lccsancom/vungle/warren/log/LogPersister;
    .param p3, "logSender"    # Lccsancom/vungle/warren/log/LogSender;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "prefs"    # Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->loggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lccsancom/vungle/warren/log/LogManager;->crashReportEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    sget-object v3, Lccsancom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    iput-object v3, p0, Lccsancom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    .line 50
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lccsancom/vungle/warren/log/LogManager;->crashBatchMax:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    iput-boolean v1, p0, Lccsancom/vungle/warren/log/LogManager;->isCrashReportInit:Z

    .line 55
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lccsancom/vungle/warren/log/LogManager;->customDataMap:Ljava/util/Map;

    .line 57
    new-instance v3, Lccsancom/google/gson/Gson;

    invoke-direct {v3}, Lccsancom/google/gson/Gson;-><init>()V

    iput-object v3, p0, Lccsancom/vungle/warren/log/LogManager;->gson:Lccsancom/google/gson/Gson;

    .line 253
    new-instance v3, Lccsancom/vungle/warren/log/LogManager$2;

    invoke-direct {v3, p0}, Lccsancom/vungle/warren/log/LogManager$2;-><init>(Lccsancom/vungle/warren/log/LogManager;)V

    iput-object v3, p0, Lccsancom/vungle/warren/log/LogManager;->sdkLoggingEventListener:Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    .line 69
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsancom/vungle/warren/log/LogManager;->bundleID:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lccsancom/vungle/warren/log/LogManager;->logSender:Lccsancom/vungle/warren/log/LogSender;

    .line 71
    iput-object p2, p0, Lccsancom/vungle/warren/log/LogManager;->logPersister:Lccsancom/vungle/warren/log/LogPersister;

    .line 72
    iput-object p4, p0, Lccsancom/vungle/warren/log/LogManager;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 73
    iput-object p5, p0, Lccsancom/vungle/warren/log/LogManager;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 75
    iget-object v3, p0, Lccsancom/vungle/warren/log/LogManager;->sdkLoggingEventListener:Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    invoke-virtual {p2, v3}, Lccsancom/vungle/warren/log/LogPersister;->setSdkLoggingEventListener(Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;)V

    .line 76
    const-class v3, Lccsancom/vungle/warren/Vungle;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    .line 77
    .local v3, "vungleSdkPackage":Ljava/lang/Package;
    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lccsancom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    .line 80
    :cond_0
    const-string v5, "logging_enabled"

    invoke-virtual {p5, v5, v1}, Lccsancom/vungle/warren/persistence/FilePreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    const-string v0, "crash_report_enabled"

    invoke-virtual {p5, v0, v1}, Lccsancom/vungle/warren/persistence/FilePreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    sget-object v0, Lccsancom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    const-string v1, "crash_collect_filter"

    invoke-virtual {p5, v1, v0}, Lccsancom/vungle/warren/persistence/FilePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->crashBatchMax:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "crash_batch_max"

    invoke-virtual {p5, v1, v4}, Lccsancom/vungle/warren/persistence/FilePreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 85
    invoke-virtual {p0}, Lccsancom/vungle/warren/log/LogManager;->initJvmCollector()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/persistence/CacheManager;Lccsancom/vungle/warren/VungleApiClient;Ljava/util/concurrent/Executor;Lccsancom/vungle/warren/persistence/FilePreferences;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "cacheManager"    # Lccsancom/vungle/warren/persistence/CacheManager;
    .param p3, "vungleApiClient"    # Lccsancom/vungle/warren/VungleApiClient;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "prefs"    # Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 62
    new-instance v2, Lccsancom/vungle/warren/log/LogPersister;

    invoke-virtual {p2}, Lccsancom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/log/LogPersister;-><init>(Ljava/io/File;)V

    new-instance v3, Lccsancom/vungle/warren/log/LogSender;

    invoke-direct {v3, p3, p5}, Lccsancom/vungle/warren/log/LogSender;-><init>(Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/persistence/FilePreferences;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lccsancom/vungle/warren/log/LogManager;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/log/LogPersister;Lccsancom/vungle/warren/log/LogSender;Ljava/util/concurrent/Executor;Lccsancom/vungle/warren/persistence/FilePreferences;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/log/LogManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/log/LogManager;

    .line 25
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->bundleID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/log/LogManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/log/LogManager;

    .line 25
    invoke-direct {p0}, Lccsancom/vungle/warren/log/LogManager;->getCustomData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/log/LogManager;)Lccsancom/vungle/warren/log/LogPersister;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/log/LogManager;

    .line 25
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->logPersister:Lccsancom/vungle/warren/log/LogPersister;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/log/LogManager;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/log/LogManager;

    .line 25
    invoke-direct {p0}, Lccsancom/vungle/warren/log/LogManager;->sendPendingLogs()V

    return-void
.end method

.method private getCustomData()Ljava/lang/String;
    .locals 2

    .line 153
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->customDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->gson:Lccsancom/google/gson/Gson;

    iget-object v1, p0, Lccsancom/vungle/warren/log/LogManager;->customDataMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lccsancom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private sendCrashLogs()V
    .locals 3

    .line 213
    invoke-virtual {p0}, Lccsancom/vungle/warren/log/LogManager;->isCrashReportEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lccsancom/vungle/warren/log/LogManager;->TAG:Ljava/lang/String;

    const-string v1, "Crash report disabled, no need to send crash log files."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->logPersister:Lccsancom/vungle/warren/log/LogPersister;

    iget-object v1, p0, Lccsancom/vungle/warren/log/LogManager;->crashBatchMax:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/log/LogPersister;->getCrashReportFiles(I)[Ljava/io/File;

    move-result-object v0

    .line 219
    .local v0, "crashReportFiles":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    iget-object v1, p0, Lccsancom/vungle/warren/log/LogManager;->logSender:Lccsancom/vungle/warren/log/LogSender;

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/log/LogSender;->sendLogs([Ljava/io/File;)V

    .line 225
    return-void

    .line 220
    :cond_2
    :goto_0
    sget-object v1, Lccsancom/vungle/warren/log/LogManager;->TAG:Ljava/lang/String;

    const-string v2, "No need to send empty crash log files."

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method private sendPendingLogs()V
    .locals 3

    .line 160
    invoke-virtual {p0}, Lccsancom/vungle/warren/log/LogManager;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    sget-object v0, Lccsancom/vungle/warren/log/LogManager;->TAG:Ljava/lang/String;

    const-string v1, "Logging disabled, no need to send log files."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->logPersister:Lccsancom/vungle/warren/log/LogPersister;

    invoke-virtual {v0}, Lccsancom/vungle/warren/log/LogPersister;->getPendingFiles()[Ljava/io/File;

    move-result-object v0

    .line 166
    .local v0, "pendingFiles":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lccsancom/vungle/warren/log/LogManager;->logSender:Lccsancom/vungle/warren/log/LogSender;

    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/log/LogSender;->sendLogs([Ljava/io/File;)V

    .line 172
    return-void

    .line 167
    :cond_2
    :goto_0
    sget-object v1, Lccsancom/vungle/warren/log/LogManager;->TAG:Ljava/lang/String;

    const-string v2, "No need to send empty files."

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method


# virtual methods
.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->customDataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method declared-synchronized initJvmCollector()V
    .locals 2

    monitor-enter p0

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lccsancom/vungle/warren/log/LogManager;->isCrashReportInit:Z

    if-nez v0, :cond_2

    .line 229
    invoke-virtual {p0}, Lccsancom/vungle/warren/log/LogManager;->isCrashReportEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    sget-object v0, Lccsancom/vungle/warren/log/LogManager;->TAG:Ljava/lang/String;

    const-string v1, "crash report is disabled."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 234
    .end local p0    # "this":Lccsancom/vungle/warren/log/LogManager;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->jvmCrashCollector:Lccsancom/vungle/warren/log/JVMCrashCollector;

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Lccsancom/vungle/warren/log/JVMCrashCollector;

    iget-object v1, p0, Lccsancom/vungle/warren/log/LogManager;->sdkLoggingEventListener:Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/log/JVMCrashCollector;-><init>(Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;)V

    iput-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->jvmCrashCollector:Lccsancom/vungle/warren/log/JVMCrashCollector;

    .line 238
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->jvmCrashCollector:Lccsancom/vungle/warren/log/JVMCrashCollector;

    iget-object v1, p0, Lccsancom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/log/JVMCrashCollector;->updateConfig(Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/log/LogManager;->isCrashReportInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :cond_2
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCrashReportEnabled()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->crashReportEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->loggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public removeCustomData(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->customDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public saveLog(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "level"    # Lccsancom/vungle/warren/VungleLogger$LoggerLevel;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "exClass"    # Ljava/lang/String;
    .param p5, "threadId"    # Ljava/lang/String;

    .line 126
    move-object/from16 v9, p0

    const-string v10, ""

    .line 127
    .local v10, "eventID":Ljava/lang/String;
    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v21

    .line 128
    .local v21, "userAgent":Ljava/lang/String;
    sget-object v0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->CRASH:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    move-object/from16 v8, p1

    if-ne v8, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lccsancom/vungle/warren/log/LogManager;->isCrashReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v11, v9, Lccsancom/vungle/warren/log/LogManager;->logPersister:Lccsancom/vungle/warren/log/LogPersister;

    invoke-virtual/range {p1 .. p1}, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, ""

    iget-object v0, v9, Lccsancom/vungle/warren/log/LogManager;->bundleID:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lccsancom/vungle/warren/log/LogManager;->getCustomData()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, p3

    move-object/from16 v14, p2

    move-object/from16 v16, v21

    move-object/from16 v17, v0

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    invoke-virtual/range {v11 .. v20}, Lccsancom/vungle/warren/log/LogPersister;->saveCrashLogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 133
    :cond_0
    iget-object v0, v9, Lccsancom/vungle/warren/log/LogManager;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v11, Lccsancom/vungle/warren/log/LogManager$1;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, v21

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lccsancom/vungle/warren/log/LogManager$1;-><init>(Lccsancom/vungle/warren/log/LogManager;Ljava/lang/String;Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 142
    :goto_0
    return-void
.end method

.method public sendSdkLogs()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lccsancom/vungle/warren/log/LogManager;->sendCrashLogs()V

    .line 149
    invoke-direct {p0}, Lccsancom/vungle/warren/log/LogManager;->sendPendingLogs()V

    .line 150
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 93
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->loggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    const-string v1, "logging_enabled"

    invoke-virtual {v0, v1, p1}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Z)Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 95
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 97
    :cond_0
    return-void
.end method

.method public setMaxEntries(I)V
    .locals 1
    .param p1, "maxEntries"    # I

    .line 89
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->logPersister:Lccsancom/vungle/warren/log/LogPersister;

    invoke-virtual {v0, p1}, Lccsancom/vungle/warren/log/LogPersister;->setMaximumEntries(I)V

    .line 90
    return-void
.end method

.method public declared-synchronized updateCrashReportConfig(ZLjava/lang/String;I)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "collectFilter"    # Ljava/lang/String;
    .param p3, "batchMax"    # I

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/log/LogManager;->crashReportEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    .local v0, "enableChanged":Z
    :goto_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lccsancom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .end local p0    # "this":Lccsancom/vungle/warren/log/LogManager;
    :cond_1
    const/4 v3, 0x0

    .line 177
    .local v3, "filterChanged":Z
    :goto_1
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move p3, v4

    .line 178
    iget-object v4, p0, Lccsancom/vungle/warren/log/LogManager;->crashBatchMax:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 179
    .local v1, "batchMaxChanged":Z
    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v1, :cond_9

    .line 180
    :cond_3
    if-eqz v0, :cond_4

    .line 181
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogManager;->crashReportEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogManager;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    const-string v4, "crash_report_enabled"

    invoke-virtual {v2, v4, p1}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Z)Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 184
    :cond_4
    if-eqz v3, :cond_6

    .line 185
    const-string v2, "*"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 187
    const-string v2, ""

    iput-object v2, p0, Lccsancom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    goto :goto_3

    .line 189
    :cond_5
    iput-object p2, p0, Lccsancom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    .line 191
    :goto_3
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogManager;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    const-string v4, "crash_collect_filter"

    iget-object v5, p0, Lccsancom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 193
    :cond_6
    if-eqz v1, :cond_7

    .line 194
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogManager;->crashBatchMax:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 195
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogManager;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    const-string v4, "crash_batch_max"

    invoke-virtual {v2, v4, p3}, Lccsancom/vungle/warren/persistence/FilePreferences;->put(Ljava/lang/String;I)Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 197
    :cond_7
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogManager;->prefs:Lccsancom/vungle/warren/persistence/FilePreferences;

    invoke-virtual {v2}, Lccsancom/vungle/warren/persistence/FilePreferences;->apply()V

    .line 199
    iget-object v2, p0, Lccsancom/vungle/warren/log/LogManager;->jvmCrashCollector:Lccsancom/vungle/warren/log/JVMCrashCollector;

    if-eqz v2, :cond_8

    .line 200
    iget-object v4, p0, Lccsancom/vungle/warren/log/LogManager;->crashCollectFilter:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lccsancom/vungle/warren/log/JVMCrashCollector;->updateConfig(Ljava/lang/String;)V

    .line 203
    :cond_8
    if-eqz p1, :cond_9

    .line 204
    invoke-virtual {p0}, Lccsancom/vungle/warren/log/LogManager;->initJvmCollector()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_9
    monitor-exit p0

    return-void

    .line 174
    .end local v0    # "enableChanged":Z
    .end local v1    # "batchMaxChanged":Z
    .end local v3    # "filterChanged":Z
    .end local p1    # "enabled":Z
    .end local p2    # "collectFilter":Ljava/lang/String;
    .end local p3    # "batchMax":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
