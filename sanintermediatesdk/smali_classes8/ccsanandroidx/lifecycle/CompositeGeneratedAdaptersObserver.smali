.class Lccsanandroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private final mGeneratedAdapters:[Lccsanandroidx/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>([Lccsanandroidx/lifecycle/GeneratedAdapter;)V
    .locals 0
    .param p1, "generatedAdapters"    # [Lccsanandroidx/lifecycle/GeneratedAdapter;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lccsanandroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Lccsanandroidx/lifecycle/GeneratedAdapter;

    .line 26
    return-void
.end method


# virtual methods
.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 6
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 30
    new-instance v0, Lccsanandroidx/lifecycle/MethodCallsLogger;

    invoke-direct {v0}, Lccsanandroidx/lifecycle/MethodCallsLogger;-><init>()V

    .line 31
    .local v0, "logger":Lccsanandroidx/lifecycle/MethodCallsLogger;
    iget-object v1, p0, Lccsanandroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Lccsanandroidx/lifecycle/GeneratedAdapter;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 32
    .local v5, "mGenerated":Lccsanandroidx/lifecycle/GeneratedAdapter;
    invoke-interface {v5, p1, p2, v3, v0}, Lccsanandroidx/lifecycle/GeneratedAdapter;->callMethods(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;ZLccsanandroidx/lifecycle/MethodCallsLogger;)V

    .line 31
    .end local v5    # "mGenerated":Lccsanandroidx/lifecycle/GeneratedAdapter;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lccsanandroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Lccsanandroidx/lifecycle/GeneratedAdapter;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 35
    .local v4, "mGenerated":Lccsanandroidx/lifecycle/GeneratedAdapter;
    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5, v0}, Lccsanandroidx/lifecycle/GeneratedAdapter;->callMethods(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;ZLccsanandroidx/lifecycle/MethodCallsLogger;)V

    .line 34
    .end local v4    # "mGenerated":Lccsanandroidx/lifecycle/GeneratedAdapter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 37
    :cond_1
    return-void
.end method
