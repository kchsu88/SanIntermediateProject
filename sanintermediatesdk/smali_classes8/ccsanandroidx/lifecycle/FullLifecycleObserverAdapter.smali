.class Lccsanandroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "FullLifecycleObserverAdapter.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private final mFullLifecycleObserver:Lccsanandroidx/lifecycle/FullLifecycleObserver;

.field private final mLifecycleEventObserver:Lccsanandroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method constructor <init>(Lccsanandroidx/lifecycle/FullLifecycleObserver;Lccsanandroidx/lifecycle/LifecycleEventObserver;)V
    .locals 0
    .param p1, "fullLifecycleObserver"    # Lccsanandroidx/lifecycle/FullLifecycleObserver;
    .param p2, "lifecycleEventObserver"    # Lccsanandroidx/lifecycle/LifecycleEventObserver;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lccsanandroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Lccsanandroidx/lifecycle/FullLifecycleObserver;

    .line 27
    iput-object p2, p0, Lccsanandroidx/lifecycle/FullLifecycleObserverAdapter;->mLifecycleEventObserver:Lccsanandroidx/lifecycle/LifecycleEventObserver;

    .line 28
    return-void
.end method


# virtual methods
.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 32
    sget-object v0, Lccsanandroidx/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Lccsanandroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ON_ANY must not been send by anybody"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lccsanandroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Lccsanandroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Lccsanandroidx/lifecycle/FullLifecycleObserver;->onDestroy(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    .line 50
    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v0, p0, Lccsanandroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Lccsanandroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Lccsanandroidx/lifecycle/FullLifecycleObserver;->onStop(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    .line 47
    goto :goto_0

    .line 43
    :pswitch_3
    iget-object v0, p0, Lccsanandroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Lccsanandroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Lccsanandroidx/lifecycle/FullLifecycleObserver;->onPause(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    .line 44
    goto :goto_0

    .line 40
    :pswitch_4
    iget-object v0, p0, Lccsanandroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Lccsanandroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Lccsanandroidx/lifecycle/FullLifecycleObserver;->onResume(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    .line 41
    goto :goto_0

    .line 37
    :pswitch_5
    iget-object v0, p0, Lccsanandroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Lccsanandroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Lccsanandroidx/lifecycle/FullLifecycleObserver;->onStart(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    .line 38
    goto :goto_0

    .line 34
    :pswitch_6
    iget-object v0, p0, Lccsanandroidx/lifecycle/FullLifecycleObserverAdapter;->mFullLifecycleObserver:Lccsanandroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Lccsanandroidx/lifecycle/FullLifecycleObserver;->onCreate(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    .line 35
    nop

    .line 54
    :goto_0
    iget-object v0, p0, Lccsanandroidx/lifecycle/FullLifecycleObserverAdapter;->mLifecycleEventObserver:Lccsanandroidx/lifecycle/LifecycleEventObserver;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1, p2}, Lccsanandroidx/lifecycle/LifecycleEventObserver;->onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 57
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
