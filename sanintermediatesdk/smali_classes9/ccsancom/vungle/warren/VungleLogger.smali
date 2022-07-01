.class public Lccsancom/vungle/warren/VungleLogger;
.super Ljava/lang/Object;
.source "VungleLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/VungleLogger$LoggerLevel;
    }
.end annotation


# static fields
.field public static final LOGGER_MAX_ENTRIES:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final _instance:Lccsancom/vungle/warren/VungleLogger;


# instance fields
.field private logManager:Lccsancom/vungle/warren/log/LogManager;

.field private loggingLevel:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lccsancom/vungle/warren/VungleLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/VungleLogger;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Lccsancom/vungle/warren/VungleLogger;

    invoke-direct {v0}, Lccsancom/vungle/warren/VungleLogger;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/VungleLogger;->_instance:Lccsancom/vungle/warren/VungleLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->DEBUG:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    iput-object v0, p0, Lccsancom/vungle/warren/VungleLogger;->loggingLevel:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    .line 28
    return-void
.end method

.method public static addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 104
    sget-object v0, Lccsancom/vungle/warren/VungleLogger;->_instance:Lccsancom/vungle/warren/VungleLogger;

    iget-object v0, v0, Lccsancom/vungle/warren/VungleLogger;->logManager:Lccsancom/vungle/warren/log/LogManager;

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lccsancom/vungle/warren/VungleLogger;->TAG:Ljava/lang/String;

    const-string v1, "Please setup Logger first."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 109
    :cond_0
    invoke-virtual {v0, p0, p1}, Lccsancom/vungle/warren/log/LogManager;->addCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 68
    sget-object v0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->DEBUG:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0, p1}, Lccsancom/vungle/warren/VungleLogger;->log(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static debug(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "withConsoleLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 72
    if-eqz p0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    invoke-static {p2, p3}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 92
    sget-object v0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->ERROR:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0, p1}, Lccsancom/vungle/warren/VungleLogger;->log(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static error(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "withConsoleLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 96
    if-eqz p0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-static {p2, p3}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 56
    sget-object v0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->INFO:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0, p1}, Lccsancom/vungle/warren/VungleLogger;->log(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static info(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "withConsoleLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 60
    if-eqz p0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    invoke-static {p2, p3}, Lccsancom/vungle/warren/VungleLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private static isLoggable(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;)Z
    .locals 2
    .param p0, "level"    # Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    .line 122
    invoke-static {p0}, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->access$000(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;)I

    move-result v0

    sget-object v1, Lccsancom/vungle/warren/VungleLogger;->_instance:Lccsancom/vungle/warren/VungleLogger;

    iget-object v1, v1, Lccsancom/vungle/warren/VungleLogger;->loggingLevel:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v1}, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->access$000(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static log(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "level"    # Lccsancom/vungle/warren/VungleLogger$LoggerLevel;
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 133
    sget-object v0, Lccsancom/vungle/warren/VungleLogger;->_instance:Lccsancom/vungle/warren/VungleLogger;

    iget-object v1, v0, Lccsancom/vungle/warren/VungleLogger;->logManager:Lccsancom/vungle/warren/log/LogManager;

    if-nez v1, :cond_0

    .line 134
    sget-object v0, Lccsancom/vungle/warren/VungleLogger;->TAG:Ljava/lang/String;

    const-string v1, "Please setup Logger first."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 138
    :cond_0
    invoke-virtual {v1}, Lccsancom/vungle/warren/log/LogManager;->isLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    return-void

    .line 142
    :cond_1
    invoke-static {p0}, Lccsancom/vungle/warren/VungleLogger;->isLoggable(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    return-void

    .line 146
    :cond_2
    iget-object v2, v0, Lccsancom/vungle/warren/VungleLogger;->logManager:Lccsancom/vungle/warren/log/LogManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lccsancom/vungle/warren/log/LogManager;->saveLog(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static removeCustomData(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .line 113
    sget-object v0, Lccsancom/vungle/warren/VungleLogger;->_instance:Lccsancom/vungle/warren/VungleLogger;

    iget-object v0, v0, Lccsancom/vungle/warren/VungleLogger;->logManager:Lccsancom/vungle/warren/log/LogManager;

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Lccsancom/vungle/warren/VungleLogger;->TAG:Ljava/lang/String;

    const-string v1, "Please setup Logger first."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 118
    :cond_0
    invoke-virtual {v0, p0}, Lccsancom/vungle/warren/log/LogManager;->removeCustomData(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method static setupLoggerWithLogLevel(Lccsancom/vungle/warren/log/LogManager;Lccsancom/vungle/warren/VungleLogger$LoggerLevel;I)V
    .locals 1
    .param p0, "logManager"    # Lccsancom/vungle/warren/log/LogManager;
    .param p1, "level"    # Lccsancom/vungle/warren/VungleLogger$LoggerLevel;
    .param p2, "maxEntries"    # I

    .line 38
    sget-object v0, Lccsancom/vungle/warren/VungleLogger;->_instance:Lccsancom/vungle/warren/VungleLogger;

    iput-object p1, v0, Lccsancom/vungle/warren/VungleLogger;->loggingLevel:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    .line 39
    iput-object p0, v0, Lccsancom/vungle/warren/VungleLogger;->logManager:Lccsancom/vungle/warren/log/LogManager;

    .line 40
    invoke-virtual {p0, p2}, Lccsancom/vungle/warren/log/LogManager;->setMaxEntries(I)V

    .line 41
    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->VERBOSE:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0, p1}, Lccsancom/vungle/warren/VungleLogger;->log(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "withConsoleLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 48
    if-eqz p0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-static {p2, p3}, Lccsancom/vungle/warren/VungleLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 80
    sget-object v0, Lccsancom/vungle/warren/VungleLogger$LoggerLevel;->WARNING:Lccsancom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0, p1}, Lccsancom/vungle/warren/VungleLogger;->log(Lccsancom/vungle/warren/VungleLogger$LoggerLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static warn(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "withConsoleLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 84
    if-eqz p0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-static {p2, p3}, Lccsancom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
