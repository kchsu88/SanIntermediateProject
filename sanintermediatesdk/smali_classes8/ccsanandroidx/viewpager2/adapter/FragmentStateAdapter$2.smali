.class Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$2;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

.field final synthetic val$holder:Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 347
    iput-object p1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$2;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iput-object p2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$2;->val$holder:Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 351
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$2;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    return-void

    .line 354
    :cond_0
    invoke-interface {p1}, Lccsanandroidx/lifecycle/LifecycleOwner;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroidx/lifecycle/Lifecycle;->removeObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 355
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$2;->val$holder:Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;->getContainer()Lccsanandroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$2;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$2;->val$holder:Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {v0, v1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V

    .line 358
    :cond_1
    return-void
.end method
