.class final Lccsanandroidx/lifecycle/Lifecycling$1;
.super Ljava/lang/Object;
.source "Lifecycling.java"

# interfaces
.implements Lccsanandroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/lifecycle/Lifecycling;->getCallback(Ljava/lang/Object;)Lccsanandroidx/lifecycle/GenericLifecycleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$observer:Lccsanandroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method constructor <init>(Lccsanandroidx/lifecycle/LifecycleEventObserver;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lccsanandroidx/lifecycle/Lifecycling$1;->val$observer:Lccsanandroidx/lifecycle/LifecycleEventObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 60
    iget-object v0, p0, Lccsanandroidx/lifecycle/Lifecycling$1;->val$observer:Lccsanandroidx/lifecycle/LifecycleEventObserver;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/lifecycle/LifecycleEventObserver;->onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 61
    return-void
.end method
