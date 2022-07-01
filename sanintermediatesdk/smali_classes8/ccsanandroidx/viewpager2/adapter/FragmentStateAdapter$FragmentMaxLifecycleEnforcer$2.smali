.class Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;
.super Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->register(Lccsanandroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V
    .locals 1
    .param p1, "this$1"    # Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 643
    iput-object p1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;->this$1:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver;-><init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$1;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 646
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;->this$1:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->updateFragmentMaxLifecycle(Z)V

    .line 647
    return-void
.end method
