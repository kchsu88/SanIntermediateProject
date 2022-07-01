.class Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$5;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->scheduleGracePeriodEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

.field final synthetic val$handler:Lccsanandroid/os/Handler;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;Lccsanandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 584
    iput-object p1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$5;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iput-object p2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$5;->val$handler:Lccsanandroid/os/Handler;

    iput-object p3, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$5;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 588
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Lccsanandroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 589
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$5;->val$handler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$5;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 590
    invoke-interface {p1}, Lccsanandroidx/lifecycle/LifecycleOwner;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroidx/lifecycle/Lifecycle;->removeObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 592
    :cond_0
    return-void
.end method
