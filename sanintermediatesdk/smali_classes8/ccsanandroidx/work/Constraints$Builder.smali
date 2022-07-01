.class public final Lccsanandroidx/work/Constraints$Builder;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mContentUriTriggers:Lccsanandroidx/work/ContentUriTriggers;

.field mRequiredNetworkType:Lccsanandroidx/work/NetworkType;

.field mRequiresBatteryNotLow:Z

.field mRequiresCharging:Z

.field mRequiresDeviceIdle:Z

.field mRequiresStorageNotLow:Z

.field mTriggerContentMaxDelay:J

.field mTriggerContentUpdateDelay:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/work/Constraints$Builder;->mRequiresCharging:Z

    .line 284
    iput-boolean v0, p0, Lccsanandroidx/work/Constraints$Builder;->mRequiresDeviceIdle:Z

    .line 285
    sget-object v1, Lccsanandroidx/work/NetworkType;->NOT_REQUIRED:Lccsanandroidx/work/NetworkType;

    iput-object v1, p0, Lccsanandroidx/work/Constraints$Builder;->mRequiredNetworkType:Lccsanandroidx/work/NetworkType;

    .line 286
    iput-boolean v0, p0, Lccsanandroidx/work/Constraints$Builder;->mRequiresBatteryNotLow:Z

    .line 287
    iput-boolean v0, p0, Lccsanandroidx/work/Constraints$Builder;->mRequiresStorageNotLow:Z

    .line 289
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsanandroidx/work/Constraints$Builder;->mTriggerContentUpdateDelay:J

    .line 290
    iput-wide v0, p0, Lccsanandroidx/work/Constraints$Builder;->mTriggerContentMaxDelay:J

    .line 291
    new-instance v0, Lccsanandroidx/work/ContentUriTriggers;

    invoke-direct {v0}, Lccsanandroidx/work/ContentUriTriggers;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/Constraints$Builder;->mContentUriTriggers:Lccsanandroidx/work/ContentUriTriggers;

    return-void
.end method


# virtual methods
.method public addContentUriTrigger(Lccsanandroid/net/Uri;Z)Lccsanandroidx/work/Constraints$Builder;
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "triggerForDescendants"    # Z

    .line 371
    iget-object v0, p0, Lccsanandroidx/work/Constraints$Builder;->mContentUriTriggers:Lccsanandroidx/work/ContentUriTriggers;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/work/ContentUriTriggers;->add(Lccsanandroid/net/Uri;Z)V

    .line 372
    return-object p0
.end method

.method public build()Lccsanandroidx/work/Constraints;
    .locals 1

    .line 453
    new-instance v0, Lccsanandroidx/work/Constraints;

    invoke-direct {v0, p0}, Lccsanandroidx/work/Constraints;-><init>(Lccsanandroidx/work/Constraints$Builder;)V

    return-object v0
.end method

.method public setRequiredNetworkType(Lccsanandroidx/work/NetworkType;)Lccsanandroidx/work/Constraints$Builder;
    .locals 0
    .param p1, "networkType"    # Lccsanandroidx/work/NetworkType;

    .line 326
    iput-object p1, p0, Lccsanandroidx/work/Constraints$Builder;->mRequiredNetworkType:Lccsanandroidx/work/NetworkType;

    .line 327
    return-object p0
.end method

.method public setRequiresBatteryNotLow(Z)Lccsanandroidx/work/Constraints$Builder;
    .locals 0
    .param p1, "requiresBatteryNotLow"    # Z

    .line 339
    iput-boolean p1, p0, Lccsanandroidx/work/Constraints$Builder;->mRequiresBatteryNotLow:Z

    .line 340
    return-object p0
.end method

.method public setRequiresCharging(Z)Lccsanandroidx/work/Constraints$Builder;
    .locals 0
    .param p1, "requiresCharging"    # Z

    .line 301
    iput-boolean p1, p0, Lccsanandroidx/work/Constraints$Builder;->mRequiresCharging:Z

    .line 302
    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Lccsanandroidx/work/Constraints$Builder;
    .locals 0
    .param p1, "requiresDeviceIdle"    # Z

    .line 314
    iput-boolean p1, p0, Lccsanandroidx/work/Constraints$Builder;->mRequiresDeviceIdle:Z

    .line 315
    return-object p0
.end method

.method public setRequiresStorageNotLow(Z)Lccsanandroidx/work/Constraints$Builder;
    .locals 0
    .param p1, "requiresStorageNotLow"    # Z

    .line 352
    iput-boolean p1, p0, Lccsanandroidx/work/Constraints$Builder;->mRequiresStorageNotLow:Z

    .line 353
    return-object p0
.end method

.method public setTriggerContentMaxDelay(JLjava/util/concurrent/TimeUnit;)Lccsanandroidx/work/Constraints$Builder;
    .locals 2
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 427
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsanandroidx/work/Constraints$Builder;->mTriggerContentMaxDelay:J

    .line 428
    return-object p0
.end method

.method public setTriggerContentMaxDelay(Ljava/time/Duration;)Lccsanandroidx/work/Constraints$Builder;
    .locals 2
    .param p1, "duration"    # Ljava/time/Duration;

    .line 443
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsanandroidx/work/Constraints$Builder;->mTriggerContentMaxDelay:J

    .line 444
    return-object p0
.end method

.method public setTriggerContentUpdateDelay(JLjava/util/concurrent/TimeUnit;)Lccsanandroidx/work/Constraints$Builder;
    .locals 2
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 391
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsanandroidx/work/Constraints$Builder;->mTriggerContentUpdateDelay:J

    .line 392
    return-object p0
.end method

.method public setTriggerContentUpdateDelay(Ljava/time/Duration;)Lccsanandroidx/work/Constraints$Builder;
    .locals 2
    .param p1, "duration"    # Ljava/time/Duration;

    .line 408
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsanandroidx/work/Constraints$Builder;->mTriggerContentUpdateDelay:J

    .line 409
    return-object p0
.end method
