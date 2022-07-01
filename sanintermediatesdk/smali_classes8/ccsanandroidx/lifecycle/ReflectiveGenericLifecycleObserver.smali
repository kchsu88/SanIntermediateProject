.class Lccsanandroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private final mInfo:Lccsanandroidx/lifecycle/ClassesInfoCache$CallbackInfo;

.field private final mWrapped:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "wrapped"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lccsanandroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    .line 31
    sget-object v0, Lccsanandroidx/lifecycle/ClassesInfoCache;->sInstance:Lccsanandroidx/lifecycle/ClassesInfoCache;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/ClassesInfoCache;->getInfo(Ljava/lang/Class;)Lccsanandroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Lccsanandroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 36
    iget-object v0, p0, Lccsanandroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Lccsanandroidx/lifecycle/ClassesInfoCache$CallbackInfo;

    iget-object v1, p0, Lccsanandroidx/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, Lccsanandroidx/lifecycle/ClassesInfoCache$CallbackInfo;->invokeCallbacks(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 37
    return-void
.end method
