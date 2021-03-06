.class public abstract Lccsanandroidx/work/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/Logger$LogcatLogger;
    }
.end annotation


# static fields
.field private static final MAX_PREFIXED_TAG_LENGTH:I

.field private static final MAX_TAG_LENGTH:I = 0x17

.field private static final TAG_PREFIX:Ljava/lang/String; = "WM-"

.field private static sLogger:Lccsanandroidx/work/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "WM-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x17

    sput v0, Lccsanandroidx/work/Logger;->MAX_PREFIXED_TAG_LENGTH:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "loggingLevel"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static declared-synchronized get()Lccsanandroidx/work/Logger;
    .locals 3

    const-class v0, Lccsanandroidx/work/Logger;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lccsanandroidx/work/Logger;->sLogger:Lccsanandroidx/work/Logger;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lccsanandroidx/work/Logger$LogcatLogger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lccsanandroidx/work/Logger$LogcatLogger;-><init>(I)V

    sput-object v1, Lccsanandroidx/work/Logger;->sLogger:Lccsanandroidx/work/Logger;

    .line 78
    :cond_0
    sget-object v1, Lccsanandroidx/work/Logger;->sLogger:Lccsanandroidx/work/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setLogger(Lccsanandroidx/work/Logger;)V
    .locals 1
    .param p0, "logger"    # Lccsanandroidx/work/Logger;

    const-class v0, Lccsanandroidx/work/Logger;

    monitor-enter v0

    .line 45
    :try_start_0
    sput-object p0, Lccsanandroidx/work/Logger;->sLogger:Lccsanandroidx/work/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    return-void

    .line 44
    .end local p0    # "logger":Lccsanandroidx/work/Logger;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 54
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .local v1, "withPrefix":Ljava/lang/StringBuilder;
    const-string v2, "WM-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    sget v2, Lccsanandroidx/work/Logger;->MAX_PREFIXED_TAG_LENGTH:I

    if-lt v0, v2, :cond_0

    .line 58
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public varargs abstract debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method
