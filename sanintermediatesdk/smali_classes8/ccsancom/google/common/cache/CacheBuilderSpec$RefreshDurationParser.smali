.class Lccsancom/google/common/cache/CacheBuilderSpec$RefreshDurationParser;
.super Lccsancom/google/common/cache/CacheBuilderSpec$DurationParser;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefreshDurationParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 469
    invoke-direct {p0}, Lccsancom/google/common/cache/CacheBuilderSpec$DurationParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseDuration(Lccsancom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "spec"    # Lccsancom/google/common/cache/CacheBuilderSpec;
    .param p2, "duration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 472
    iget-object v0, p1, Lccsancom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "refreshAfterWrite already set"

    invoke-static {v0, v1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 473
    iput-wide p2, p1, Lccsancom/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    .line 474
    iput-object p4, p1, Lccsancom/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 475
    return-void
.end method
