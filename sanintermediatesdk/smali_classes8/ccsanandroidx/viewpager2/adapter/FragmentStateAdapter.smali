.class public abstract Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FragmentStateAdapter.java"

# interfaces
.implements Lccsanandroidx/viewpager2/adapter/StatefulAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver;,
        Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;",
        ">;",
        "Lccsanandroidx/viewpager2/adapter/StatefulAdapter;"
    }
.end annotation


# static fields
.field private static final GRACE_WINDOW_TIME_MS:J = 0x2710L

.field private static final KEY_PREFIX_FRAGMENT:Ljava/lang/String; = "f#"

.field private static final KEY_PREFIX_STATE:Ljava/lang/String; = "s#"


# instance fields
.field final mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

.field private mFragmentMaxLifecycleEnforcer:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

.field final mFragments:Lccsanandroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/LongSparseArray<",
            "Lccsanandroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHasStaleFragments:Z

.field mIsInGracePeriod:Z

.field private final mItemIdToViewHolder:Lccsanandroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mLifecycle:Lccsanandroidx/lifecycle/Lifecycle;

.field private final mSavedStates:Lccsanandroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/LongSparseArray<",
            "Lccsanandroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 112
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getChildFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/lifecycle/Lifecycle;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/fragment/app/FragmentActivity;)V
    .locals 2
    .param p1, "fragmentActivity"    # Lccsanandroidx/fragment/app/FragmentActivity;

    .line 102
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/lifecycle/Lifecycle;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "fragmentManager"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "lifecycle"    # Lccsanandroidx/lifecycle/Lifecycle;

    .line 123
    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 82
    new-instance v0, Lccsanandroidx/collection/LongSparseArray;

    invoke-direct {v0}, Lccsanandroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    .line 84
    new-instance v0, Lccsanandroidx/collection/LongSparseArray;

    invoke-direct {v0}, Lccsanandroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Lccsanandroidx/collection/LongSparseArray;

    .line 85
    new-instance v0, Lccsanandroidx/collection/LongSparseArray;

    invoke-direct {v0}, Lccsanandroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Lccsanandroidx/collection/LongSparseArray;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    .line 92
    iput-boolean v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    .line 124
    iput-object p1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    .line 125
    iput-object p2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Lccsanandroidx/lifecycle/Lifecycle;

    .line 126
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 127
    return-void
.end method

.method private static createKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "id"    # J

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ensureFragment(I)V
    .locals 4
    .param p1, "position"    # I

    .line 265
    invoke-virtual {p0, p1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->getItemId(I)J

    move-result-wide v0

    .line 266
    .local v0, "itemId":J
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Lccsanandroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->createFragment(I)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v2

    .line 269
    .local v2, "newFragment":Lccsanandroidx/fragment/app/Fragment;
    iget-object v3, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Lccsanandroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {v2, v3}, Lccsanandroidx/fragment/app/Fragment;->setInitialSavedState(Lccsanandroidx/fragment/app/Fragment$SavedState;)V

    .line 270
    iget-object v3, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v3, v0, v1, v2}, Lccsanandroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 272
    .end local v2    # "newFragment":Lccsanandroidx/fragment/app/Fragment;
    :cond_0
    return-void
.end method

.method private isFragmentViewBound(J)Z
    .locals 5
    .param p1, "itemId"    # J

    .line 233
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 234
    return v1

    .line 237
    :cond_0
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/fragment/app/Fragment;

    .line 238
    .local v0, "fragment":Lccsanandroidx/fragment/app/Fragment;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 239
    return v2

    .line 242
    :cond_1
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getView()Lccsanandroid/view/View;

    move-result-object v3

    .line 243
    .local v3, "view":Lccsanandroid/view/View;
    if-nez v3, :cond_2

    .line 244
    return v2

    .line 247
    :cond_2
    invoke-virtual {v3}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isValidKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 605
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private itemForViewHolder(I)Ljava/lang/Long;
    .locals 4
    .param p1, "viewHolderId"    # I

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "boundItemId":Ljava/lang/Long;
    const/4 v1, 0x0

    .local v1, "ix":I
    :goto_0
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Lccsanandroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 253
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Lccsanandroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 254
    if-nez v0, :cond_0

    .line 258
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Lccsanandroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 255
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Design assumption violated: a ViewHolder can only be bound to one item at a time."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v1    # "ix":I
    :cond_2
    return-object v0
.end method

.method private static parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private removeFragment(J)V
    .locals 3
    .param p1, "itemId"    # J

    .line 434
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/fragment/app/Fragment;

    .line 436
    .local v0, "fragment":Lccsanandroidx/fragment/app/Fragment;
    if-nez v0, :cond_0

    .line 437
    return-void

    .line 440
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getView()Lccsanandroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 441
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getView()Lccsanandroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    .line 442
    .local v1, "viewParent":Lccsanandroid/view/ViewParent;
    if-eqz v1, :cond_1

    .line 443
    move-object v2, v1

    check-cast v2, Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v2}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 447
    .end local v1    # "viewParent":Lccsanandroid/view/ViewParent;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 448
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Lccsanandroidx/collection/LongSparseArray;->remove(J)V

    .line 451
    :cond_2
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 452
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Lccsanandroidx/collection/LongSparseArray;->remove(J)V

    .line 453
    return-void

    .line 456
    :cond_3
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 457
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    .line 458
    return-void

    .line 461
    :cond_4
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 462
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Lccsanandroidx/collection/LongSparseArray;

    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v0}, Lccsanandroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/Fragment$SavedState;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lccsanandroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 464
    :cond_5
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroidx/fragment/app/FragmentTransaction;->remove(Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 465
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Lccsanandroidx/collection/LongSparseArray;->remove(J)V

    .line 466
    return-void
.end method

.method private scheduleGracePeriodEnd()V
    .locals 4

    .line 575
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 576
    .local v0, "handler":Lccsanandroid/os/Handler;
    new-instance v1, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$4;

    invoke-direct {v1, p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$4;-><init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;)V

    .line 584
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Lccsanandroidx/lifecycle/Lifecycle;

    new-instance v3, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$5;

    invoke-direct {v3, p0, v0, v1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$5;-><init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;Lccsanandroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lccsanandroidx/lifecycle/Lifecycle;->addObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 595
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 596
    return-void
.end method

.method private scheduleViewAttach(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/widget/FrameLayout;)V
    .locals 3
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "container"    # Lccsanandroid/widget/FrameLayout;

    .line 368
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    new-instance v1, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$3;

    invoke-direct {v1, p0, p1, p2}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$3;-><init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/widget/FrameLayout;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/fragment/app/FragmentManager;->registerFragmentLifecycleCallbacks(Lccsanandroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 382
    return-void
.end method


# virtual methods
.method addViewToContainer(Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "container"    # Lccsanandroid/widget/FrameLayout;

    .line 386
    invoke-virtual {p2}, Lccsanandroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    .line 390
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 391
    return-void

    .line 394
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 395
    invoke-virtual {p2}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 398
    :cond_1
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 399
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 402
    :cond_2
    invoke-virtual {p2, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 403
    return-void

    .line 387
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsItem(J)Z
    .locals 3
    .param p1, "itemId"    # J

    .line 496
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->getItemCount()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract createFragment(I)Lccsanandroidx/fragment/app/Fragment;
.end method

.method gcFragments()V
    .locals 5

    .line 201
    iget-boolean v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 206
    :cond_0
    new-instance v0, Lccsanandroidx/collection/ArraySet;

    invoke-direct {v0}, Lccsanandroidx/collection/ArraySet;-><init>()V

    .line 207
    .local v0, "toRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "ix":I
    :goto_0
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Lccsanandroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 208
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Lccsanandroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 209
    .local v2, "itemId":J
    invoke-virtual {p0, v2, v3}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 210
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v4, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Lccsanandroidx/collection/LongSparseArray;->remove(J)V

    .line 207
    .end local v2    # "itemId":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v1    # "ix":I
    :cond_2
    iget-boolean v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    if-nez v1, :cond_4

    .line 217
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    .line 219
    const/4 v1, 0x0

    .restart local v1    # "ix":I
    :goto_1
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Lccsanandroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 220
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Lccsanandroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 221
    .restart local v2    # "itemId":J
    invoke-direct {p0, v2, v3}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->isFragmentViewBound(J)Z

    move-result v4

    if-nez v4, :cond_3

    .line 222
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v2    # "itemId":J
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    .end local v1    # "ix":I
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 228
    .local v2, "itemId":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->removeFragment(J)V

    .line 229
    .end local v2    # "itemId":Ljava/lang/Long;
    goto :goto_2

    .line 230
    :cond_5
    return-void

    .line 202
    .end local v0    # "toRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_6
    :goto_3
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 486
    int-to-long v0, p1

    return-wide v0
.end method

.method public onAttachedToRecyclerView(Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 132
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsanandroidx/core/util/Preconditions;->checkArgument(Z)V

    .line 133
    new-instance v0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-direct {v0, p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;-><init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 134
    invoke-virtual {v0, p1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->register(Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    .line 135
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 67
    check-cast p1, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->onBindViewHolder(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;
    .param p2, "position"    # I

    .line 166
    invoke-virtual {p1}, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;->getItemId()J

    move-result-wide v0

    .line 167
    .local v0, "itemId":J
    invoke-virtual {p1}, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;->getContainer()Lccsanandroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/widget/FrameLayout;->getId()I

    move-result v2

    .line 168
    .local v2, "viewHolderId":I
    invoke-direct {p0, v2}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object v3

    .line 169
    .local v3, "boundItemId":Ljava/lang/Long;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_0

    .line 170
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->removeFragment(J)V

    .line 171
    iget-object v4, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lccsanandroidx/collection/LongSparseArray;->remove(J)V

    .line 174
    :cond_0
    iget-object v4, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Lccsanandroidx/collection/LongSparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lccsanandroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 175
    invoke-direct {p0, p2}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->ensureFragment(I)V

    .line 179
    invoke-virtual {p1}, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;->getContainer()Lccsanandroid/widget/FrameLayout;

    move-result-object v4

    .line 180
    .local v4, "container":Lccsanandroid/widget/FrameLayout;
    invoke-static {v4}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 181
    invoke-virtual {v4}, Lccsanandroid/widget/FrameLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_1

    .line 184
    new-instance v5, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$1;

    invoke-direct {v5, p0, v4, p1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$1;-><init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;Lccsanandroid/widget/FrameLayout;Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V

    invoke-virtual {v4, v5}, Lccsanandroid/widget/FrameLayout;->addOnLayoutChangeListener(Lccsanandroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .line 182
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Design assumption violated."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    .line 197
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;
    .locals 1
    .param p1, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 161
    invoke-static {p1}, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;->create(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 140
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    invoke-virtual {v0, p1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->unregister(Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    .line 142
    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 67
    check-cast p1, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->onFailedToRecycleView(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)Z

    move-result p1

    return p1
.end method

.method public final onFailedToRecycleView(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onViewAttachedToWindow(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 67
    check-cast p1, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->onViewAttachedToWindow(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    .line 276
    invoke-virtual {p0, p1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->placeFragmentInViewHolder(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V

    .line 277
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    .line 278
    return-void
.end method

.method public bridge synthetic onViewRecycled(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 67
    check-cast p1, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-virtual {p0, p1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->onViewRecycled(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V

    return-void
.end method

.method public final onViewRecycled(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V
    .locals 5
    .param p1, "holder"    # Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    .line 407
    invoke-virtual {p1}, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;->getContainer()Lccsanandroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->getId()I

    move-result v0

    .line 408
    .local v0, "viewHolderId":I
    invoke-direct {p0, v0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->itemForViewHolder(I)Ljava/lang/Long;

    move-result-object v1

    .line 409
    .local v1, "boundItemId":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->removeFragment(J)V

    .line 411
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mItemIdToViewHolder:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsanandroidx/collection/LongSparseArray;->remove(J)V

    .line 413
    :cond_0
    return-void
.end method

.method placeFragmentInViewHolder(Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V
    .locals 7
    .param p1, "holder"    # Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    .line 285
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;->getItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/fragment/app/Fragment;

    .line 286
    .local v0, "fragment":Lccsanandroidx/fragment/app/Fragment;
    const-string v1, "Design assumption violated."

    if-eqz v0, :cond_8

    .line 289
    invoke-virtual {p1}, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;->getContainer()Lccsanandroid/widget/FrameLayout;

    move-result-object v2

    .line 290
    .local v2, "container":Lccsanandroid/widget/FrameLayout;
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getView()Lccsanandroid/view/View;

    move-result-object v3

    .line 311
    .local v3, "view":Lccsanandroid/view/View;
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    .line 317
    invoke-direct {p0, v0, v2}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->scheduleViewAttach(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/widget/FrameLayout;)V

    .line 318
    return-void

    .line 322
    :cond_2
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 323
    invoke-virtual {v3}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v2, :cond_3

    .line 324
    invoke-virtual {p0, v3, v2}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->addViewToContainer(Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;)V

    .line 326
    :cond_3
    return-void

    .line 330
    :cond_4
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    invoke-virtual {p0, v3, v2}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->addViewToContainer(Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;)V

    .line 332
    return-void

    .line 336
    :cond_5
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v1

    if-nez v1, :cond_6

    .line 337
    invoke-direct {p0, v0, v2}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->scheduleViewAttach(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/widget/FrameLayout;)V

    .line 338
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p1}, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;->getItemId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lccsanandroidx/fragment/app/FragmentTransaction;->add(Lccsanandroidx/fragment/app/Fragment;Ljava/lang/String;)Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget-object v4, Lccsanandroidx/lifecycle/Lifecycle$State;->STARTED:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 340
    invoke-virtual {v1, v0, v4}, Lccsanandroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 342
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentMaxLifecycleEnforcer:Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer;->updateFragmentMaxLifecycle(Z)V

    goto :goto_1

    .line 344
    :cond_6
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 345
    return-void

    .line 347
    :cond_7
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mLifecycle:Lccsanandroidx/lifecycle/Lifecycle;

    new-instance v4, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$2;

    invoke-direct {v4, p0, p1}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter$2;-><init>(Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;)V

    invoke-virtual {v1, v4}, Lccsanandroidx/lifecycle/Lifecycle;->addObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 361
    :goto_1
    return-void

    .line 287
    .end local v2    # "container":Lccsanandroid/widget/FrameLayout;
    .end local v3    # "view":Lccsanandroid/view/View;
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final restoreState(Lccsanandroid/os/Parcelable;)V
    .locals 7
    .param p1, "savedState"    # Lccsanandroid/os/Parcelable;

    .line 535
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lccsanandroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lccsanandroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 540
    move-object v0, p1

    check-cast v0, Lccsanandroid/os/Bundle;

    .line 541
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    invoke-virtual {v0}, Lccsanandroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 546
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 547
    .local v2, "key":Ljava/lang/String;
    const-string v3, "f#"

    invoke-static {v2, v3}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->isValidKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 548
    invoke-static {v2, v3}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 549
    .local v3, "itemId":J
    iget-object v5, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v0, v2}, Lccsanandroidx/fragment/app/FragmentManager;->getFragment(Lccsanandroid/os/Bundle;Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v5

    .line 550
    .local v5, "fragment":Lccsanandroidx/fragment/app/Fragment;
    iget-object v6, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v6, v3, v4, v5}, Lccsanandroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 551
    goto :goto_0

    .line 554
    .end local v3    # "itemId":J
    .end local v5    # "fragment":Lccsanandroidx/fragment/app/Fragment;
    :cond_2
    const-string/jumbo v3, "s#"

    invoke-static {v2, v3}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->isValidKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 555
    invoke-static {v2, v3}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->parseIdFromKey(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 556
    .restart local v3    # "itemId":J
    invoke-virtual {v0, v2}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lccsanandroidx/fragment/app/Fragment$SavedState;

    .line 557
    .local v5, "state":Lccsanandroidx/fragment/app/Fragment$SavedState;
    invoke-virtual {p0, v3, v4}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 558
    iget-object v6, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v6, v3, v4, v5}, Lccsanandroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 563
    .end local v3    # "itemId":J
    .end local v5    # "state":Lccsanandroidx/fragment/app/Fragment$SavedState;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected key in savedState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    .end local v2    # "key":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Lccsanandroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 567
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mHasStaleFragments:Z

    .line 568
    iput-boolean v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mIsInGracePeriod:Z

    .line 569
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->gcFragments()V

    .line 570
    invoke-direct {p0}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->scheduleGracePeriodEnd()V

    .line 572
    :cond_5
    return-void

    .line 536
    .end local v0    # "bundle":Lccsanandroid/os/Bundle;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected the adapter to be \'fresh\' while restoring state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final saveState()Lccsanandroid/os/Parcelable;
    .locals 7

    .line 509
    new-instance v0, Lccsanandroid/os/Bundle;

    iget-object v1, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Lccsanandroidx/collection/LongSparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Lccsanandroidx/collection/LongSparseArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lccsanandroid/os/Bundle;-><init>(I)V

    .line 512
    .local v0, "savedState":Lccsanandroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "ix":I
    :goto_0
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Lccsanandroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 513
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Lccsanandroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 514
    .local v2, "itemId":J
    iget-object v4, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Lccsanandroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/fragment/app/Fragment;

    .line 515
    .local v4, "fragment":Lccsanandroidx/fragment/app/Fragment;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 516
    const-string v5, "f#"

    invoke-static {v5, v2, v3}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v0, v5, v4}, Lccsanandroidx/fragment/app/FragmentManager;->putFragment(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroidx/fragment/app/Fragment;)V

    .line 512
    .end local v2    # "itemId":J
    .end local v4    # "fragment":Lccsanandroidx/fragment/app/Fragment;
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    .end local v1    # "ix":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "ix":I
    :goto_1
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Lccsanandroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 523
    iget-object v2, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v2, v1}, Lccsanandroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 524
    .restart local v2    # "itemId":J
    invoke-virtual {p0, v2, v3}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->containsItem(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 525
    const-string/jumbo v4, "s#"

    invoke-static {v4, v2, v3}, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->createKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mSavedStates:Lccsanandroidx/collection/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Lccsanandroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/os/Parcelable;

    invoke-virtual {v0, v4, v5}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 522
    .end local v2    # "itemId":J
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 530
    .end local v1    # "ix":I
    :cond_3
    return-object v0
.end method

.method public final setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .line 501
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method shouldDelayFragmentTransactions()Z
    .locals 1

    .line 470
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    return v0
.end method
