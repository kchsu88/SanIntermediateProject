.class public Lccsanandroidx/fragment/app/FragmentActivity;
.super Lccsanandroidx/activity/ComponentActivity;
.source "FragmentActivity.java"

# interfaces
.implements Lccsanandroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lccsanandroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

.field final mFragments:Lccsanandroidx/fragment/app/FragmentController;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/SparseArrayCompat<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mStartedActivityFromFragment:Z

.field mStartedIntentSenderFromFragment:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lccsanandroidx/activity/ComponentActivity;-><init>()V

    .line 82
    new-instance v0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;-><init>(Lccsanandroidx/fragment/app/FragmentActivity;)V

    invoke-static {v0}, Lccsanandroidx/fragment/app/FragmentController;->createController(Lccsanandroidx/fragment/app/FragmentHostCallback;)Lccsanandroidx/fragment/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    .line 89
    new-instance v0, Lccsanandroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Lccsanandroidx/lifecycle/LifecycleRegistry;-><init>(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 128
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "contentLayoutId"    # I

    .line 142
    invoke-direct {p0, p1}, Lccsanandroidx/activity/ComponentActivity;-><init>(I)V

    .line 82
    new-instance v0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;-><init>(Lccsanandroidx/fragment/app/FragmentActivity;)V

    invoke-static {v0}, Lccsanandroidx/fragment/app/FragmentController;->createController(Lccsanandroidx/fragment/app/FragmentHostCallback;)Lccsanandroidx/fragment/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    .line 89
    new-instance v0, Lccsanandroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Lccsanandroidx/lifecycle/LifecycleRegistry;-><init>(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 143
    return-void
.end method

.method private allocateRequestIndex(Lccsanandroidx/fragment/app/Fragment;)I
    .locals 4
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 830
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Lccsanandroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    const v1, 0xfffe

    if-ge v0, v1, :cond_1

    .line 835
    :goto_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    iget v2, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v0, v2}, Lccsanandroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 836
    iget v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_0

    .line 840
    :cond_0
    iget v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 841
    .local v0, "requestIndex":I
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    iget-object v3, p1, Lccsanandroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lccsanandroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 842
    iget v2, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v1

    iput v2, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 845
    return v0

    .line 831
    .end local v0    # "requestIndex":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many pending Fragment activity results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method static checkForValidRequestCode(I)V
    .locals 2
    .param p0, "requestCode"    # I

    .line 714
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 717
    return-void

    .line 715
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private markFragmentsCreated()V
    .locals 2

    .line 990
    :goto_0
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$State;->CREATED:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Lccsanandroidx/fragment/app/FragmentActivity;->markState(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    .line 991
    .local v0, "reiterate":Z
    if-nez v0, :cond_0

    .line 992
    return-void

    .line 991
    :cond_0
    goto :goto_0
.end method

.method private static markState(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/lifecycle/Lifecycle$State;)Z
    .locals 6
    .param p0, "manager"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p1, "state"    # Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, "hadNotMarked":Z
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 997
    .local v1, "fragments":Ljava/util/Collection;, "Ljava/util/Collection<Lccsanandroidx/fragment/app/Fragment;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/fragment/app/Fragment;

    .line 998
    .local v3, "fragment":Lccsanandroidx/fragment/app/Fragment;
    if-nez v3, :cond_0

    .line 999
    goto :goto_0

    .line 1001
    :cond_0
    invoke-virtual {v3}, Lccsanandroidx/fragment/app/Fragment;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroidx/lifecycle/Lifecycle;->getCurrentState()Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    sget-object v5, Lccsanandroidx/lifecycle/Lifecycle$State;->STARTED:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Lccsanandroidx/lifecycle/Lifecycle$State;->isAtLeast(Lccsanandroidx/lifecycle/Lifecycle$State;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1002
    iget-object v4, v3, Lccsanandroidx/fragment/app/Fragment;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v4, p1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->setCurrentState(Lccsanandroidx/lifecycle/Lifecycle$State;)V

    .line 1003
    const/4 v0, 0x1

    .line 1006
    :cond_1
    invoke-virtual {v3}, Lccsanandroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1007
    invoke-virtual {v3}, Lccsanandroidx/fragment/app/Fragment;->getChildFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 1008
    .local v4, "childFragmentManager":Lccsanandroidx/fragment/app/FragmentManager;
    invoke-static {v4, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->markState(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/lifecycle/Lifecycle$State;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1010
    .end local v3    # "fragment":Lccsanandroidx/fragment/app/Fragment;
    .end local v4    # "childFragmentManager":Lccsanandroidx/fragment/app/FragmentManager;
    :cond_2
    goto :goto_0

    .line 1011
    :cond_3
    return v0
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;
    .locals 1
    .param p1, "parent"    # Lccsanandroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Lccsanandroid/content/Context;
    .param p4, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 357
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroidx/fragment/app/FragmentController;->onCreateView(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 599
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroidx/activity/ComponentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 600
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 609
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getApplication()Lccsanandroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 610
    invoke-static {p0}, Lccsanandroidx/loader/app/LoaderManager;->getInstance(Lccsanandroidx/lifecycle/LifecycleOwner;)Lccsanandroidx/loader/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lccsanandroidx/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 612
    :cond_0
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentController;->getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lccsanandroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;
    .locals 1

    .line 636
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Lccsanandroidx/loader/app/LoaderManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 646
    invoke-static {p0}, Lccsanandroidx/loader/app/LoaderManager;->getInstance(Lccsanandroidx/lifecycle/LifecycleOwner;)Lccsanandroidx/loader/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILccsanandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Lccsanandroid/content/Intent;

    .line 155
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 156
    shr-int/lit8 v0, p1, 0x10

    .line 157
    .local v0, "requestIndex":I
    if-eqz v0, :cond_2

    .line 158
    add-int/lit8 v0, v0, -0x1

    .line 160
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Lccsanandroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    .local v1, "who":Ljava/lang/String;
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v0}, Lccsanandroidx/collection/SparseArrayCompat;->remove(I)V

    .line 162
    const-string v2, "FragmentActivity"

    if-nez v1, :cond_0

    .line 163
    const-string v3, "Activity result delivered for unknown Fragment."

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 166
    :cond_0
    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v3, v1}, Lccsanandroidx/fragment/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v3

    .line 167
    .local v3, "targetFragment":Lccsanandroidx/fragment/app/Fragment;
    if-nez v3, :cond_1

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_1
    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-virtual {v3, v2, p2, p3}, Lccsanandroidx/fragment/app/Fragment;->onActivityResult(IILccsanandroid/content/Intent;)V

    .line 172
    :goto_0
    return-void

    .line 175
    .end local v1    # "who":Ljava/lang/String;
    .end local v3    # "targetFragment":Lccsanandroidx/fragment/app/Fragment;
    :cond_2
    invoke-static {}, Lccsanandroidx/core/app/ActivityCompat;->getPermissionCompatDelegate()Lccsanandroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    move-result-object v1

    .line 176
    .local v1, "delegate":Lccsanandroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    if-eqz v1, :cond_3

    invoke-interface {v1, p0, p1, p2, p3}, Lccsanandroidx/core/app/ActivityCompat$PermissionCompatDelegate;->onActivityResult(Lccsanandroid/app/Activity;IILccsanandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    return-void

    .line 181
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/activity/ComponentActivity;->onActivityResult(IILccsanandroid/content/Intent;)V

    .line 182
    return-void
.end method

.method public onAttachFragment(Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 628
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Lccsanandroid/content/res/Configuration;

    .line 273
    invoke-super {p0, p1}, Lccsanandroidx/activity/ComponentActivity;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 274
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 275
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentController;->dispatchConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 276
    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 284
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/FragmentController;->attachHost(Lccsanandroidx/fragment/app/Fragment;)V

    .line 286
    if-eqz p1, :cond_2

    .line 287
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 288
    .local v0, "p":Lccsanandroid/os/Parcelable;
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v1, v0}, Lccsanandroidx/fragment/app/FragmentController;->restoreSaveState(Lccsanandroid/os/Parcelable;)V

    .line 291
    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    nop

    .line 293
    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 294
    const-string v1, "android:support:request_indicies"

    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 295
    .local v1, "requestCodes":[I
    const-string v2, "android:support:request_fragment_who"

    invoke-virtual {p1, v2}, Lccsanandroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "fragmentWhos":[Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    new-instance v3, Lccsanandroidx/collection/SparseArrayCompat;

    array-length v4, v1

    invoke-direct {v3, v4}, Lccsanandroidx/collection/SparseArrayCompat;-><init>(I)V

    iput-object v3, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    .line 301
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 302
    iget-object v4, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Lccsanandroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    .end local v3    # "i":I
    :cond_1
    :goto_1
    const-string v3, "FragmentActivity"

    const-string v4, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0    # "p":Lccsanandroid/os/Parcelable;
    .end local v1    # "requestCodes":[I
    .end local v2    # "fragmentWhos":[Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_3

    .line 309
    new-instance v0, Lccsanandroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Lccsanandroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    .line 313
    :cond_3
    invoke-super {p0, p1}, Lccsanandroidx/activity/ComponentActivity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 315
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 316
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->dispatchCreate()V

    .line 317
    return-void
.end method

.method public onCreatePanelMenu(ILccsanandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Lccsanandroid/view/Menu;

    .line 324
    if-nez p1, :cond_0

    .line 325
    invoke-super {p0, p1, p2}, Lccsanandroidx/activity/ComponentActivity;->onCreatePanelMenu(ILccsanandroid/view/Menu;)Z

    move-result v0

    .line 326
    .local v0, "show":Z
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getMenuInflater()Lccsanandroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lccsanandroidx/fragment/app/FragmentController;->dispatchCreateOptionsMenu(Lccsanandroid/view/Menu;Lccsanandroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 327
    return v0

    .line 329
    .end local v0    # "show":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/activity/ComponentActivity;->onCreatePanelMenu(ILccsanandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateView(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;
    .locals 2
    .param p1, "parent"    # Lccsanandroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Lccsanandroid/content/Context;
    .param p4, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 336
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;

    move-result-object v0

    .line 337
    .local v0, "v":Lccsanandroid/view/View;
    if-nez v0, :cond_0

    .line 338
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroidx/activity/ComponentActivity;->onCreateView(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;

    move-result-object v1

    return-object v1

    .line 340
    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lccsanandroidx/fragment/app/FragmentActivity;->dispatchFragmentsOnCreateView(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;

    move-result-object v0

    .line 348
    .local v0, "v":Lccsanandroid/view/View;
    if-nez v0, :cond_0

    .line 349
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/activity/ComponentActivity;->onCreateView(Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/View;

    move-result-object v1

    return-object v1

    .line 351
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 365
    invoke-super {p0}, Lccsanandroidx/activity/ComponentActivity;->onDestroy()V

    .line 366
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->dispatchDestroy()V

    .line 367
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 368
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 375
    invoke-super {p0}, Lccsanandroidx/activity/ComponentActivity;->onLowMemory()V

    .line 376
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->dispatchLowMemory()V

    .line 377
    return-void
.end method

.method public onMenuItemSelected(ILccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 384
    invoke-super {p0, p1, p2}, Lccsanandroidx/activity/ComponentActivity;->onMenuItemSelected(ILccsanandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x1

    return v0

    .line 388
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 396
    const/4 v0, 0x0

    return v0

    .line 393
    :sswitch_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p2}, Lccsanandroidx/fragment/app/FragmentController;->dispatchContextItemSelected(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 390
    :sswitch_1
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p2}, Lccsanandroidx/fragment/app/FragmentController;->dispatchOptionsItemSelected(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .line 250
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    .line 251
    return-void
.end method

.method protected onNewIntent(Lccsanandroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 437
    invoke-super {p0, p1}, Lccsanandroidx/activity/ComponentActivity;->onNewIntent(Lccsanandroid/content/Intent;)V

    .line 438
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 439
    return-void
.end method

.method public onPanelClosed(ILccsanandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Lccsanandroid/view/Menu;

    .line 405
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 407
    :pswitch_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p2}, Lccsanandroidx/fragment/app/FragmentController;->dispatchOptionsMenuClosed(Lccsanandroid/view/Menu;)V

    .line 410
    :goto_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/activity/ComponentActivity;->onPanelClosed(ILccsanandroid/view/Menu;)V

    .line 411
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .line 418
    invoke-super {p0}, Lccsanandroidx/activity/ComponentActivity;->onPause()V

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mResumed:Z

    .line 420
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->dispatchPause()V

    .line 421
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 422
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .line 265
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    .line 266
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .line 467
    invoke-super {p0}, Lccsanandroidx/activity/ComponentActivity;->onPostResume()V

    .line 468
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onResumeFragments()V

    .line 469
    return-void
.end method

.method protected onPrepareOptionsPanel(Lccsanandroid/view/View;Lccsanandroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "menu"    # Lccsanandroid/view/Menu;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Lccsanandroidx/activity/ComponentActivity;->onPreparePanel(ILccsanandroid/view/View;Lccsanandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILccsanandroid/view/View;Lccsanandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "menu"    # Lccsanandroid/view/Menu;

    .line 487
    if-nez p1, :cond_0

    .line 488
    invoke-virtual {p0, p2, p3}, Lccsanandroidx/fragment/app/FragmentActivity;->onPrepareOptionsPanel(Lccsanandroid/view/View;Lccsanandroid/view/Menu;)Z

    move-result v0

    .line 489
    .local v0, "goforit":Z
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v1, p3}, Lccsanandroidx/fragment/app/FragmentController;->dispatchPrepareOptionsMenu(Lccsanandroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 490
    return v0

    .line 492
    .end local v0    # "goforit":Z
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/activity/ComponentActivity;->onPreparePanel(ILccsanandroid/view/View;Lccsanandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 754
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 755
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 756
    .local v0, "index":I
    if-eqz v0, :cond_2

    .line 757
    add-int/lit8 v0, v0, -0x1

    .line 759
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v0}, Lccsanandroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 760
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v0}, Lccsanandroidx/collection/SparseArrayCompat;->remove(I)V

    .line 761
    const-string v3, "FragmentActivity"

    if-nez v2, :cond_0

    .line 762
    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v3, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void

    .line 765
    :cond_0
    iget-object v4, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v4, v2}, Lccsanandroidx/fragment/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v4

    .line 766
    .local v4, "frag":Lccsanandroidx/fragment/app/Fragment;
    if-nez v4, :cond_1

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result no fragment exists for who: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 769
    :cond_1
    and-int/2addr v1, p1

    invoke-virtual {v4, v1, p2, p3}, Lccsanandroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 772
    .end local v2    # "who":Ljava/lang/String;
    .end local v4    # "frag":Lccsanandroidx/fragment/app/Fragment;
    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 456
    invoke-super {p0}, Lccsanandroidx/activity/ComponentActivity;->onResume()V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mResumed:Z

    .line 458
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 459
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->execPendingActions()Z

    .line 460
    return-void
.end method

.method protected onResumeFragments()V
    .locals 2

    .line 478
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 479
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->dispatchResume()V

    .line 480
    return-void
.end method

.method protected onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Lccsanandroid/os/Bundle;

    .line 510
    invoke-super {p0, p1}, Lccsanandroidx/activity/ComponentActivity;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 511
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    .line 512
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 513
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->saveAllState()Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 514
    .local v0, "p":Lccsanandroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 515
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 517
    :cond_0
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Lccsanandroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 518
    iget v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mNextCandidateRequestIndex:I

    const-string v2, "android:support:next_request_index"

    invoke-virtual {p1, v2, v1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Lccsanandroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 521
    .local v1, "requestCodes":[I
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v2}, Lccsanandroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 522
    .local v2, "fragmentWhos":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v4}, Lccsanandroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 523
    iget-object v4, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v3}, Lccsanandroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 524
    iget-object v4, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mPendingFragmentActivityResults:Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v3}, Lccsanandroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 522
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 526
    .end local v3    # "i":I
    :cond_1
    const-string v3, "android:support:request_indicies"

    invoke-virtual {p1, v3, v1}, Lccsanandroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 527
    const-string v3, "android:support:request_fragment_who"

    invoke-virtual {p1, v3, v2}, Lccsanandroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 529
    .end local v1    # "requestCodes":[I
    .end local v2    # "fragmentWhos":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 536
    invoke-super {p0}, Lccsanandroidx/activity/ComponentActivity;->onStart()V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 540
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_0

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mCreated:Z

    .line 542
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->dispatchActivityCreated()V

    .line 545
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 546
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->execPendingActions()Z

    .line 550
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_START:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 551
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->dispatchStart()V

    .line 552
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 446
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->noteStateNotSaved()V

    .line 447
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 559
    invoke-super {p0}, Lccsanandroidx/activity/ComponentActivity;->onStop()V

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStopped:Z

    .line 562
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->markFragmentsCreated()V

    .line 564
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragments:Lccsanandroidx/fragment/app/FragmentController;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentController;->dispatchStop()V

    .line 565
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 566
    return-void
.end method

.method requestPermissionsFromFragment(Lccsanandroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 853
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 854
    invoke-static {p0, p2, p3}, Lccsanandroidx/core/app/ActivityCompat;->requestPermissions(Lccsanandroid/app/Activity;[Ljava/lang/String;I)V

    .line 855
    return-void

    .line 857
    :cond_0
    invoke-static {p3}, Lccsanandroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 859
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 860
    invoke-direct {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->allocateRequestIndex(Lccsanandroidx/fragment/app/Fragment;)I

    move-result v1

    .line 861
    .local v1, "requestIndex":I
    add-int/lit8 v2, v1, 0x1

    shl-int/lit8 v2, v2, 0x10

    const v3, 0xffff

    and-int/2addr v3, p3

    add-int/2addr v2, v3

    invoke-static {p0, p2, v2}, Lccsanandroidx/core/app/ActivityCompat;->requestPermissions(Lccsanandroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    .end local v1    # "requestIndex":I
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 865
    nop

    .line 866
    return-void

    .line 864
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 865
    throw v1
.end method

.method public setEnterSharedElementCallback(Lccsanandroidx/core/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Lccsanandroidx/core/app/SharedElementCallback;

    .line 206
    invoke-static {p0, p1}, Lccsanandroidx/core/app/ActivityCompat;->setEnterSharedElementCallback(Lccsanandroid/app/Activity;Lccsanandroidx/core/app/SharedElementCallback;)V

    .line 207
    return-void
.end method

.method public setExitSharedElementCallback(Lccsanandroidx/core/app/SharedElementCallback;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroidx/core/app/SharedElementCallback;

    .line 219
    invoke-static {p0, p1}, Lccsanandroidx/core/app/ActivityCompat;->setExitSharedElementCallback(Lccsanandroid/app/Activity;Lccsanandroidx/core/app/SharedElementCallback;)V

    .line 220
    return-void
.end method

.method public startActivityForResult(Lccsanandroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 658
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 659
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 660
    invoke-static {p2}, Lccsanandroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 663
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/activity/ComponentActivity;->startActivityForResult(Lccsanandroid/content/Intent;I)V

    .line 664
    return-void
.end method

.method public startActivityForResult(Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Lccsanandroid/os/Bundle;

    .line 671
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 672
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 673
    invoke-static {p2}, Lccsanandroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 676
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/activity/ComponentActivity;->startActivityForResult(Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V

    .line 677
    return-void
.end method

.method public startActivityFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "intent"    # Lccsanandroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V

    .line 780
    return-void
.end method

.method public startActivityFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V
    .locals 4
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "intent"    # Lccsanandroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Lccsanandroid/os/Bundle;

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 790
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 791
    :try_start_0
    invoke-static {p0, p2, v0, p4}, Lccsanandroidx/core/app/ActivityCompat;->startActivityForResult(Lccsanandroid/app/Activity;Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    iput-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 792
    return-void

    .line 794
    :cond_0
    :try_start_1
    invoke-static {p3}, Lccsanandroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 795
    invoke-direct {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->allocateRequestIndex(Lccsanandroidx/fragment/app/Fragment;)I

    move-result v0

    .line 796
    .local v0, "requestIndex":I
    add-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x10

    const v3, 0xffff

    and-int/2addr v3, p3

    add-int/2addr v2, v3

    invoke-static {p0, p2, v2, p4}, Lccsanandroidx/core/app/ActivityCompat;->startActivityForResult(Lccsanandroid/app/Activity;Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    .end local v0    # "requestIndex":I
    iput-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 800
    nop

    .line 801
    return-void

    .line 799
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStartedActivityFromFragment:Z

    .line 800
    throw v0
.end method

.method public startIntentSenderForResult(Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;III)V
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Lccsanandroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 685
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    .line 686
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 687
    invoke-static {p2}, Lccsanandroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 690
    :cond_0
    invoke-super/range {p0 .. p6}, Lccsanandroidx/activity/ComponentActivity;->startIntentSenderForResult(Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;III)V

    .line 692
    return-void
.end method

.method public startIntentSenderForResult(Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;IIILccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Lccsanandroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 700
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    .line 701
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 702
    invoke-static {p2}, Lccsanandroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 705
    :cond_0
    invoke-super/range {p0 .. p7}, Lccsanandroidx/activity/ComponentActivity;->startIntentSenderForResult(Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;IIILccsanandroid/os/Bundle;)V

    .line 707
    return-void
.end method

.method public startIntentSenderFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;IIILccsanandroid/os/Bundle;)V
    .locals 12
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "intent"    # Lccsanandroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Lccsanandroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 810
    move-object v9, p0

    move v10, p3

    const/4 v0, 0x1

    iput-boolean v0, v9, Lccsanandroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 812
    const/4 v0, -0x1

    const/4 v11, 0x0

    if-ne v10, v0, :cond_0

    .line 813
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    :try_start_0
    invoke-static/range {v1 .. v8}, Lccsanandroidx/core/app/ActivityCompat;->startIntentSenderForResult(Lccsanandroid/app/Activity;Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;IIILccsanandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    iput-boolean v11, v9, Lccsanandroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 815
    return-void

    .line 817
    :cond_0
    :try_start_1
    invoke-static {p3}, Lccsanandroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 818
    invoke-direct {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->allocateRequestIndex(Lccsanandroidx/fragment/app/Fragment;)I

    move-result v0

    .line 819
    .local v0, "requestIndex":I
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, v10

    add-int v3, v1, v2

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lccsanandroidx/core/app/ActivityCompat;->startIntentSenderForResult(Lccsanandroid/app/Activity;Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;IIILccsanandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    .end local v0    # "requestIndex":I
    iput-boolean v11, v9, Lccsanandroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 824
    nop

    .line 825
    return-void

    .line 823
    :catchall_0
    move-exception v0

    iput-boolean v11, v9, Lccsanandroidx/fragment/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 824
    throw v0
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    .line 194
    invoke-static {p0}, Lccsanandroidx/core/app/ActivityCompat;->finishAfterTransition(Lccsanandroid/app/Activity;)V

    .line 195
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 584
    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    .line 227
    invoke-static {p0}, Lccsanandroidx/core/app/ActivityCompat;->postponeEnterTransition(Lccsanandroid/app/Activity;)V

    .line 228
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    .line 235
    invoke-static {p0}, Lccsanandroidx/core/app/ActivityCompat;->startPostponedEnterTransition(Lccsanandroid/app/Activity;)V

    .line 236
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .line 728
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 730
    invoke-static {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->checkForValidRequestCode(I)V

    .line 732
    :cond_0
    return-void
.end method
