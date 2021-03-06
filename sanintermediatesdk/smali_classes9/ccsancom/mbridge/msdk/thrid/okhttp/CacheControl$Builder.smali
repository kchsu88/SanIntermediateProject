.class public final Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field immutable:Z

.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    .line 282
    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    .line 283
    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public build()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;
    .locals 1

    .line 370
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;)V

    return-object v0
.end method

.method public immutable()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;
    .locals 1

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->immutable:Z

    .line 366
    return-object p0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;
    .locals 5
    .param p1, "maxAge"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 308
    if-ltz p1, :cond_1

    .line 309
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 310
    .local v0, "maxAgeSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    :goto_0
    iput v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    .line 313
    return-object p0

    .line 308
    .end local v0    # "maxAgeSecondsLong":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxAge < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;
    .locals 5
    .param p1, "maxStale"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 324
    if-ltz p1, :cond_1

    .line 325
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 326
    .local v0, "maxStaleSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    :goto_0
    iput v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    .line 329
    return-object p0

    .line 324
    .end local v0    # "maxStaleSecondsLong":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxStale < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;
    .locals 5
    .param p1, "minFresh"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 341
    if-ltz p1, :cond_1

    .line 342
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 343
    .local v0, "minFreshSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    :goto_0
    iput v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->minFreshSeconds:I

    .line 346
    return-object p0

    .line 341
    .end local v0    # "minFreshSecondsLong":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minFresh < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public noCache()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;
    .locals 1

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->noCache:Z

    .line 291
    return-object p0
.end method

.method public noStore()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;
    .locals 1

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->noStore:Z

    .line 297
    return-object p0
.end method

.method public noTransform()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;
    .locals 1

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->noTransform:Z

    .line 361
    return-object p0
.end method

.method public onlyIfCached()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;
    .locals 1

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->onlyIfCached:Z

    .line 355
    return-object p0
.end method
