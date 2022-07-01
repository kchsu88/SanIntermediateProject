.class public abstract Lccsanandroidx/lifecycle/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/lifecycle/Lifecycle$State;,
        Lccsanandroidx/lifecycle/Lifecycle$Event;
    }
.end annotation


# instance fields
.field mInternalScopeRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsanandroidx/lifecycle/Lifecycle;->mInternalScopeRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public abstract addObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V
.end method

.method public abstract getCurrentState()Lccsanandroidx/lifecycle/Lifecycle$State;
.end method

.method public abstract removeObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V
.end method
