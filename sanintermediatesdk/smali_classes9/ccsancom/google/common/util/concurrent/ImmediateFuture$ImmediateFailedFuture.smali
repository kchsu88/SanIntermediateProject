.class final Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;
.super Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "ImmediateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/ImmediateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImmediateFailedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .line 128
    .local p0, "this":Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;, "Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture<TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 129
    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;->setException(Ljava/lang/Throwable;)Z

    .line 130
    return-void
.end method
