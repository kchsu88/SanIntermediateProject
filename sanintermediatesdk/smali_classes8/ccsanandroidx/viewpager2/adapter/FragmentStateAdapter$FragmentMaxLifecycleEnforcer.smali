.class Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentMaxLifecycleEnforcer"
.end annotation


# instance fields
.field private mDataObserver:Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mLifecycleObserver:Lccsanandroidx/lifecycle/LifecycleEventObserver;

.field private mPageChangeCallback:Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private mPrimaryItemId:J

.field private mViewPager:Lccsanandroidx/viewpager2/widget/ViewPager2;

.field final synthetic this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;)V
    .locals 2
    .param p1, "this$0"    # Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 617
    iput-object p1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    return-void
.end method

.method private inferViewPager(Lccsanandroidx/recyclerview/widget/RecyclerView;)Lccsanandroidx/viewpager2/widget/ViewPager2;
    .locals 4
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 732
    invoke-virtual {p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 733
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_0

    .line 734
    move-object v1, v0

    check-cast v1, Lccsanandroidx/viewpager2/widget/ViewPager2;

    return-object v1

    .line 736
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected ViewPager2 instance. Got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method register(Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 626
    invoke-direct {p0, p1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->inferViewPager(Lccsanandroidx/recyclerview/widget/RecyclerView;)Lccsanandroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Lccsanandroidx/viewpager2/widget/ViewPager2;

    .line 629
    new-instance v0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$1;

    invoke-direct {v0, p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$1;-><init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPageChangeCallback:Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 640
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 643
    new-instance v0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;

    invoke-direct {v0, p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2;-><init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mDataObserver:Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 649
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    invoke-virtual {v1, v0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->registerAdapterDataObserver(Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 653
    new-instance v0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    invoke-direct {v0, p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;-><init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mLifecycleObserver:Lccsanandroidx/lifecycle/LifecycleEventObserver;

    .line 660
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v0, v0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Lccsanandroidx/lifecycle/Lifecycle;

    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mLifecycleObserver:Lccsanandroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/Lifecycle;->addObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 661
    return-void
.end method

.method unregister(Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 664
    invoke-direct {p0, p1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->inferViewPager(Lccsanandroidx/recyclerview/widget/RecyclerView;)Lccsanandroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    .line 665
    .local v0, "viewPager":Lccsanandroidx/viewpager2/widget/ViewPager2;
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPageChangeCallback:Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Lccsanandroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 666
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mDataObserver:Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, v2}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->unregisterAdapterDataObserver(Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 667
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v1, v1, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Lccsanandroidx/lifecycle/Lifecycle;

    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mLifecycleObserver:Lccsanandroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v1, v2}, Lccsanandroidx/lifecycle/Lifecycle;->removeObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 668
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Lccsanandroidx/viewpager2/widget/ViewPager2;

    .line 669
    return-void
.end method

.method updateFragmentMaxLifecycle(Z)V
    .locals 13
    .param p1, "dataSetChanged"    # Z

    .line 672
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v0, v0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lccsanandroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 684
    :cond_2
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mViewPager:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 685
    .local v0, "currentItem":I
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    invoke-virtual {v1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 688
    return-void

    .line 691
    :cond_3
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    invoke-virtual {v1, v0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->getItemId(I)J

    move-result-wide v1

    .line 692
    .local v1, "currentItemId":J
    iget-wide v3, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    if-nez p1, :cond_4

    .line 693
    return-void

    .line 696
    :cond_4
    iget-object v3, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v3, v3, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Lccsanandroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/fragment/app/Fragment;

    .line 697
    .local v3, "currentItemFragment":Lccsanandroidx/fragment/app/Fragment;
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    .line 701
    :cond_5
    iput-wide v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    .line 702
    iget-object v4, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v4, v4, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v4}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 704
    .local v4, "transaction":Lccsanandroidx/fragment/app/FragmentTransaction;
    const/4 v5, 0x0

    .line 705
    .local v5, "toResume":Lccsanandroidx/fragment/app/Fragment;
    const/4 v6, 0x0

    .local v6, "ix":I
    :goto_0
    iget-object v7, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v7, v7, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v7}, Lccsanandroidx/collection/LongSparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 706
    iget-object v7, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v7, v7, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v7, v6}, Lccsanandroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 707
    .local v7, "itemId":J
    iget-object v9, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->this$0:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v9, v9, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v9, v6}, Lccsanandroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsanandroidx/fragment/app/Fragment;

    .line 709
    .local v9, "fragment":Lccsanandroidx/fragment/app/Fragment;
    invoke-virtual {v9}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v10

    if-nez v10, :cond_6

    .line 710
    goto :goto_3

    .line 713
    :cond_6
    iget-wide v10, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    cmp-long v12, v7, v10

    if-eqz v12, :cond_7

    .line 714
    sget-object v10, Lccsanandroidx/lifecycle/Lifecycle$State;->STARTED:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v9, v10}, Lccsanandroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 716
    :cond_7
    move-object v5, v9

    .line 719
    :goto_1
    iget-wide v10, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->mPrimaryItemId:J

    cmp-long v12, v7, v10

    if-nez v12, :cond_8

    const/4 v10, 0x1

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9, v10}, Lccsanandroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 705
    .end local v7    # "itemId":J
    .end local v9    # "fragment":Lccsanandroidx/fragment/app/Fragment;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 721
    .end local v6    # "ix":I
    :cond_9
    if-eqz v5, :cond_a

    .line 722
    sget-object v6, Lccsanandroidx/lifecycle/Lifecycle$State;->RESUMED:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5, v6}, Lccsanandroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 725
    :cond_a
    invoke-virtual {v4}, Lccsanandroidx/fragment/app/FragmentTransaction;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 726
    invoke-virtual {v4}, Lccsanandroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 728
    :cond_b
    return-void

    .line 698
    .end local v4    # "transaction":Lccsanandroidx/fragment/app/FragmentTransaction;
    .end local v5    # "toResume":Lccsanandroidx/fragment/app/Fragment;
    :cond_c
    :goto_4
    return-void

    .line 681
    .end local v0    # "currentItem":I
    .end local v1    # "currentItemId":J
    .end local v3    # "currentItemFragment":Lccsanandroidx/fragment/app/Fragment;
    :cond_d
    :goto_5
    return-void
.end method
