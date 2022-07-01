.class public abstract Lccsancom/google/android/gms/common/api/ResolvingResultCallbacks;
.super Lccsancom/google/android/gms/common/api/ResultCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lccsancom/google/android/gms/common/api/Result;",
        ">",
        "Lccsancom/google/android/gms/common/api/ResultCallbacks<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final mActivity:Lccsanandroid/app/Activity;

.field private final zzan:I


# direct methods
.method protected constructor <init>(Lccsanandroid/app/Activity;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/google/android/gms/common/api/ResultCallbacks;-><init>()V

    .line 2
    const-string v0, "Activity must not be null"

    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/Activity;

    iput-object p1, p0, Lccsancom/google/android/gms/common/api/ResolvingResultCallbacks;->mActivity:Lccsanandroid/app/Activity;

    .line 3
    iput p2, p0, Lccsancom/google/android/gms/common/api/ResolvingResultCallbacks;->zzan:I

    .line 4
    return-void
.end method


# virtual methods
.method public final onFailure(Lccsancom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Lccsancom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/ResolvingResultCallbacks;->mActivity:Lccsanandroid/app/Activity;

    iget v1, p0, Lccsancom/google/android/gms/common/api/ResolvingResultCallbacks;->zzan:I

    invoke-virtual {p1, v0, v1}, Lccsancom/google/android/gms/common/api/Status;->startResolutionForResult(Lccsanandroid/app/Activity;I)V
    :try_end_0
    .catch Lccsanandroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-void

    .line 8
    :catch_0
    move-exception p1

    .line 9
    const-string v0, "ResolvingResultCallback"

    const-string v1, "Failed to start resolution"

    invoke-static {v0, v1, p1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    new-instance p1, Lccsancom/google/android/gms/common/api/Status;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lccsancom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, p1}, Lccsancom/google/android/gms/common/api/ResolvingResultCallbacks;->onUnresolvableFailure(Lccsancom/google/android/gms/common/api/Status;)V

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/android/gms/common/api/ResolvingResultCallbacks;->onUnresolvableFailure(Lccsancom/google/android/gms/common/api/Status;)V

    .line 13
    return-void
.end method

.method public abstract onSuccess(Lccsancom/google/android/gms/common/api/Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method

.method public abstract onUnresolvableFailure(Lccsancom/google/android/gms/common/api/Status;)V
.end method
