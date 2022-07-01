.class public Lccsancom/vungle/warren/utility/SDKExecutors;
.super Ljava/lang/Object;
.source "SDKExecutors.java"

# interfaces
.implements Lccsancom/vungle/warren/utility/Executors;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;
    }
.end annotation


# static fields
.field private static final API_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final IO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final IO_KEEP_ALIVE_TIME_SECONDS:I = 0x5

.field private static final JOBS_KEEP_ALIVE_TIME_SECONDS:I = 0x1

.field private static final JOB_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final LOGGER_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static NUMBER_OF_CORES:I = 0x0

.field private static final SINGLE_CORE_POOL_SIZE:I = 0x1

.field private static final TASK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final UI_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final VUNGLE_KEEP_ALIVE_TIME_SECONDS:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 28
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lccsancom/vungle/warren/utility/SDKExecutors;->NUMBER_OF_CORES:I

    .line 63
    new-instance v0, Lccsancom/vungle/warren/utility/SDKExecutors$1;

    invoke-direct {v0}, Lccsancom/vungle/warren/utility/SDKExecutors$1;-><init>()V

    .line 100
    .local v0, "uiExecutor":Ljava/util/concurrent/ExecutorService;
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lccsancom/vungle/warren/utility/SDKExecutors;->NUMBER_OF_CORES:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v1, "vng_jr"

    invoke-direct {v8, v1}, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x1

    move-object v1, v9

    move v2, v3

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 108
    .local v1, "jobExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 110
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v10, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v3, "vng_io"

    invoke-direct {v10, v3}, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x5

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 118
    .local v3, "ioExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 120
    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v4, "vng_logger"

    invoke-direct {v11, v4}, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    const-wide/16 v7, 0x5

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 128
    .local v4, "loggerExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 130
    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v12, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v5, "vng_background"

    invoke-direct {v12, v5}, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    const-wide/16 v8, 0xa

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 138
    .local v5, "backgroundExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v5, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 140
    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v13, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v6, "vng_api"

    invoke-direct {v13, v6}, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    const-wide/16 v9, 0xa

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 148
    .local v6, "apiExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v6, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 150
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v13, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v13}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v14, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;

    const-string v7, "vng_task"

    invoke-direct {v14, v7}, Lccsancom/vungle/warren/utility/SDKExecutors$NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x14

    const-wide/16 v10, 0xa

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 159
    .local v2, "taskExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    sput-object v0, Lccsancom/vungle/warren/utility/SDKExecutors;->UI_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 160
    sput-object v1, Lccsancom/vungle/warren/utility/SDKExecutors;->JOB_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 161
    sput-object v3, Lccsancom/vungle/warren/utility/SDKExecutors;->IO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 162
    sput-object v5, Lccsancom/vungle/warren/utility/SDKExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 163
    sput-object v6, Lccsancom/vungle/warren/utility/SDKExecutors;->API_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 164
    sput-object v4, Lccsancom/vungle/warren/utility/SDKExecutors;->LOGGER_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 165
    sput-object v2, Lccsancom/vungle/warren/utility/SDKExecutors;->TASK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 166
    .end local v0    # "uiExecutor":Ljava/util/concurrent/ExecutorService;
    .end local v1    # "jobExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v2    # "taskExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v3    # "ioExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v4    # "loggerExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v5    # "backgroundExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v6    # "apiExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 190
    sget-object v0, Lccsancom/vungle/warren/utility/SDKExecutors;->API_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 175
    sget-object v0, Lccsancom/vungle/warren/utility/SDKExecutors;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIOExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 180
    sget-object v0, Lccsancom/vungle/warren/utility/SDKExecutors;->IO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getJobExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 185
    sget-object v0, Lccsancom/vungle/warren/utility/SDKExecutors;->JOB_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getLoggerExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 195
    sget-object v0, Lccsancom/vungle/warren/utility/SDKExecutors;->LOGGER_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getTaskExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 200
    sget-object v0, Lccsancom/vungle/warren/utility/SDKExecutors;->TASK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getUIExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 170
    sget-object v0, Lccsancom/vungle/warren/utility/SDKExecutors;->UI_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
