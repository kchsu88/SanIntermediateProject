.class Lccsancom/bumptech/glide/load/engine/EngineRunnable;
.super Ljava/lang/Object;
.source "EngineRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lccsancom/bumptech/glide/load/engine/executor/Prioritized;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;,
        Lccsancom/bumptech/glide/load/engine/EngineRunnable$Stage;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EngineRunnable"


# instance fields
.field private final decodeJob:Lccsancom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/engine/DecodeJob<",
            "***>;"
        }
    .end annotation
.end field

.field private volatile isCancelled:Z

.field private final manager:Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

.field private final priority:Lccsancom/bumptech/glide/Priority;

.field private stage:Lccsancom/bumptech/glide/load/engine/EngineRunnable$Stage;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;Lccsancom/bumptech/glide/load/engine/DecodeJob;Lccsancom/bumptech/glide/Priority;)V
    .locals 1
    .param p1, "manager"    # Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;
    .param p3, "priority"    # Lccsancom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;",
            "Lccsancom/bumptech/glide/load/engine/DecodeJob<",
            "***>;",
            "Lccsancom/bumptech/glide/Priority;",
            ")V"
        }
    .end annotation

    .line 37
    .local p2, "decodeJob":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->manager:Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    .line 39
    iput-object p2, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lccsancom/bumptech/glide/load/engine/DecodeJob;

    .line 40
    sget-object v0, Lccsancom/bumptech/glide/load/engine/EngineRunnable$Stage;->CACHE:Lccsancom/bumptech/glide/load/engine/EngineRunnable$Stage;

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->stage:Lccsancom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 41
    iput-object p3, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->priority:Lccsancom/bumptech/glide/Priority;

    .line 42
    return-void
.end method

.method private decode()Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->isDecodingFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->decodeFromCache()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->decodeFromSource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method private decodeFromCache()Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<*>;"
    :try_start_0
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lccsancom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->decodeResultFromCache()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 118
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x3

    const-string v3, "EngineRunnable"

    invoke-static {v3, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception decoding result from cache: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 121
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lccsancom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->decodeSourceFromCache()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 123
    :cond_1
    return-object v0
.end method

.method private decodeFromSource()Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lccsancom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->decodeFromSource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method private isDecodingFromCache()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->stage:Lccsancom/bumptech/glide/load/engine/EngineRunnable$Stage;

    sget-object v1, Lccsancom/bumptech/glide/load/engine/EngineRunnable$Stage;->CACHE:Lccsancom/bumptech/glide/load/engine/EngineRunnable$Stage;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onLoadComplete(Lccsancom/bumptech/glide/load/engine/Resource;)V
    .locals 1
    .param p1, "resource"    # Lccsancom/bumptech/glide/load/engine/Resource;

    .line 90
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->manager:Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    invoke-interface {v0, p1}, Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;->onResourceReady(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 91
    return-void
.end method

.method private onLoadFailed(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 94
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->isDecodingFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lccsancom/bumptech/glide/load/engine/EngineRunnable$Stage;->SOURCE:Lccsancom/bumptech/glide/load/engine/EngineRunnable$Stage;

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->stage:Lccsancom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 96
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->manager:Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    invoke-interface {v0, p0}, Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;->submitForSource(Lccsancom/bumptech/glide/load/engine/EngineRunnable;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->manager:Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;

    invoke-interface {v0, p1}, Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;->onException(Ljava/lang/Exception;)V

    .line 100
    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->isCancelled:Z

    .line 46
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->decodeJob:Lccsancom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/DecodeJob;->cancel()V

    .line 47
    return-void
.end method

.method public getPriority()I
    .locals 1

    .line 132
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->priority:Lccsancom/bumptech/glide/Priority;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/Priority;->ordinal()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    .line 51
    const-string v0, "EngineRunnable"

    iget-boolean v1, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->isCancelled:Z

    if-eqz v1, :cond_0

    .line 52
    return-void

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 56
    .local v1, "exception":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 58
    .local v2, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<*>;"
    const/4 v3, 0x2

    :try_start_0
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->decode()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 69
    :goto_0
    goto :goto_1

    .line 64
    :catch_0
    move-exception v4

    .line 65
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v0, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    const-string v3, "Exception decoding"

    invoke-static {v0, v3, v4}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_1
    move-object v1, v4

    goto :goto_1

    .line 59
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 60
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v0, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    const-string v3, "Out Of Memory Error decoding"

    invoke-static {v0, v3, v4}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_2
    new-instance v0, Lccsancom/bumptech/glide/load/engine/ErrorWrappingGlideException;

    invoke-direct {v0, v4}, Lccsancom/bumptech/glide/load/engine/ErrorWrappingGlideException;-><init>(Ljava/lang/Error;)V

    move-object v1, v0

    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_0

    .line 71
    :goto_1
    iget-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->isCancelled:Z

    if-eqz v0, :cond_4

    .line 72
    if-eqz v2, :cond_3

    .line 73
    invoke-interface {v2}, Lccsancom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 75
    :cond_3
    return-void

    .line 78
    :cond_4
    if-nez v2, :cond_5

    .line 79
    invoke-direct {p0, v1}, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->onLoadFailed(Ljava/lang/Exception;)V

    goto :goto_2

    .line 81
    :cond_5
    invoke-direct {p0, v2}, Lccsancom/bumptech/glide/load/engine/EngineRunnable;->onLoadComplete(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 83
    :goto_2
    return-void
.end method
