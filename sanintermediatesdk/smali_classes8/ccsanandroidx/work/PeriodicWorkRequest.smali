.class public final Lccsanandroidx/work/PeriodicWorkRequest;
.super Lccsanandroidx/work/WorkRequest;
.source "PeriodicWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/PeriodicWorkRequest$Builder;
    }
.end annotation


# static fields
.field public static final MIN_PERIODIC_FLEX_MILLIS:J = 0x493e0L

.field public static final MIN_PERIODIC_INTERVAL_MILLIS:J = 0xdbba0L


# direct methods
.method constructor <init>(Lccsanandroidx/work/PeriodicWorkRequest$Builder;)V
    .locals 3
    .param p1, "builder"    # Lccsanandroidx/work/PeriodicWorkRequest$Builder;

    .line 67
    iget-object v0, p1, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->mId:Ljava/util/UUID;

    iget-object v1, p1, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v2, p1, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->mTags:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lccsanandroidx/work/WorkRequest;-><init>(Ljava/util/UUID;Lccsanandroidx/work/impl/model/WorkSpec;Ljava/util/Set;)V

    .line 68
    return-void
.end method
