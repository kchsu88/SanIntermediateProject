.class Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$3;
.super Lccsanandroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->scheduleViewAttach(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

.field final synthetic val$container:Lccsanandroid/widget/FrameLayout;

.field final synthetic val$fragment:Lccsanandroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 369
    iput-object p1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$3;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iput-object p2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$3;->val$fragment:Lccsanandroidx/fragment/app/Fragment;

    iput-object p3, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$3;->val$container:Lccsanandroid/widget/FrameLayout;

    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentViewCreated(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;
    .param p3, "v"    # Lccsanandroid/view/View;
    .param p4, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 376
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$3;->val$fragment:Lccsanandroidx/fragment/app/Fragment;

    if-ne p2, v0, :cond_0

    .line 377
    invoke-virtual {p1, p0}, Lccsanandroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Lccsanandroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 378
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$3;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$3;->val$container:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, p3, v1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->addViewToContainer(Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;)V

    .line 380
    :cond_0
    return-void
.end method
