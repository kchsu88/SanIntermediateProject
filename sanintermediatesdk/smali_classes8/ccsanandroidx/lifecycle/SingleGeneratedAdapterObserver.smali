.class Lccsanandroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private final mGeneratedAdapter:Lccsanandroidx/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>(Lccsanandroidx/lifecycle/GeneratedAdapter;)V
    .locals 0
    .param p1, "generatedAdapter"    # Lccsanandroidx/lifecycle/GeneratedAdapter;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lccsanandroidx/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Lccsanandroidx/lifecycle/GeneratedAdapter;

    .line 25
    return-void
.end method


# virtual methods
.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 29
    iget-object v0, p0, Lccsanandroidx/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Lccsanandroidx/lifecycle/GeneratedAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lccsanandroidx/lifecycle/GeneratedAdapter;->callMethods(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;ZLccsanandroidx/lifecycle/MethodCallsLogger;)V

    .line 30
    iget-object v0, p0, Lccsanandroidx/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Lccsanandroidx/lifecycle/GeneratedAdapter;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lccsanandroidx/lifecycle/GeneratedAdapter;->callMethods(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;ZLccsanandroidx/lifecycle/MethodCallsLogger;)V

    .line 31
    return-void
.end method
