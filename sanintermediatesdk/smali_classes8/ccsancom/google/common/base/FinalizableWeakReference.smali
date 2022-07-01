.class public abstract Lccsancom/google/common/base/FinalizableWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "FinalizableWeakReference.java"

# interfaces
.implements Lccsancom/google/common/base/FinalizableReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TT;>;",
        "Lccsancom/google/common/base/FinalizableReference;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lccsancom/google/common/base/FinalizableReferenceQueue;)V
    .locals 1
    .param p2, "queue"    # Lccsancom/google/common/base/FinalizableReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lccsancom/google/common/base/FinalizableReferenceQueue;",
            ")V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lccsancom/google/common/base/FinalizableWeakReference;, "Lccsancom/google/common/base/FinalizableWeakReference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    iget-object v0, p2, Lccsancom/google/common/base/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 40
    invoke-virtual {p2}, Lccsancom/google/common/base/FinalizableReferenceQueue;->cleanUp()V

    .line 41
    return-void
.end method
