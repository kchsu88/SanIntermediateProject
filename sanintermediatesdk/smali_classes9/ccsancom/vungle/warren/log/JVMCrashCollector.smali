.class Lccsancom/vungle/warren/log/JVMCrashCollector;
.super Ljava/lang/Object;
.source "JVMCrashCollector.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private collectFilter:Ljava/lang/String;

.field private final defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private sdkLoggingEventListener:Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;)V
    .locals 1
    .param p1, "sdkLoggingEventListener"    # Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lccsancom/vungle/warren/log/LogManager;->sDefaultCollectFilter:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/vungle/warren/log/JVMCrashCollector;->collectFilter:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lccsancom/vungle/warren/log/JVMCrashCollector;->sdkLoggingEventListener:Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    .line 17
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/log/JVMCrashCollector;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 18
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 19
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 23
    iget-object v0, p0, Lccsancom/vungle/warren/log/JVMCrashCollector;->sdkLoggingEventListener:Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    invoke-interface {v0}, Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;->isCrashReportEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "crashIsOurConcerned":Z
    move-object v1, p2

    .line 26
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_2

    .line 27
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 28
    .local v2, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 29
    .local v5, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lccsancom/vungle/warren/log/JVMCrashCollector;->collectFilter:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_2

    .line 28
    .end local v5    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 34
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 35
    .end local v2    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    goto :goto_0

    .line 37
    :cond_2
    if-eqz v0, :cond_3

    .line 38
    invoke-static {p2}, Lccsanandroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, "message":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v9

    .line 40
    .local v9, "exClass":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 41
    .local v10, "threadId":Ljava/lang/String;
    iget-object v2, p0, Lccsancom/vungle/warren/log/JVMCrashCollector;->sdkLoggingEventListener:Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;

    sget-object v3, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->CRASH:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v4, "crash"

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-interface/range {v2 .. v7}, Lccsancom/vungle/warren/log/LogManager$SdkLoggingEventListener;->saveLog(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v0    # "crashIsOurConcerned":Z
    .end local v1    # "cause":Ljava/lang/Throwable;
    .end local v8    # "message":Ljava/lang/String;
    .end local v9    # "exClass":Ljava/lang/String;
    .end local v10    # "threadId":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lccsancom/vungle/warren/log/JVMCrashCollector;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4

    .line 46
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 49
    :cond_4
    return-void
.end method

.method updateConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "filter"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lccsancom/vungle/warren/log/JVMCrashCollector;->collectFilter:Ljava/lang/String;

    .line 53
    return-void
.end method
