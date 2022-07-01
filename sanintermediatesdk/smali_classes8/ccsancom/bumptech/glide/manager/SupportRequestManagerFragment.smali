.class public Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;
.super Lccsanandroidx/fragment/app/Fragment;
.source "SupportRequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SupportRMFragment"


# instance fields
.field private final childRequestManagerFragments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycle:Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

.field private requestManager:Lccsancom/bumptech/glide/RequestManager;

.field private final requestManagerTreeNode:Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;

.field private rootRequestManagerFragment:Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    new-instance v0, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-direct {v0}, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;-><init>()V

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>(Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
    .locals 2
    .param p1, "lifecycle"    # Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    .line 41
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;-><init>(Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment$1;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManagerTreeNode:Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    .line 42
    iput-object p1, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    .line 43
    return-void
.end method

.method private addChildRequestManagerFragment(Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .locals 1
    .param p1, "child"    # Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 74
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method private isDescendant(Lccsanandroidx/fragment/app/Fragment;)Z
    .locals 2
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 107
    invoke-virtual {p0}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->getParentFragment()Lccsanandroidx/fragment/app/Fragment;

    move-result-object v0

    .line 108
    .local v0, "root":Lccsanandroidx/fragment/app/Fragment;
    :goto_0
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getParentFragment()Lccsanandroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getParentFragment()Lccsanandroidx/fragment/app/Fragment;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 110
    const/4 v1, 0x1

    return v1

    .line 112
    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getParentFragment()Lccsanandroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private removeChildRequestManagerFragment(Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .locals 1
    .param p1, "child"    # Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 78
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method


# virtual methods
.method public getDescendantRequestManagerFragments()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    if-ne v0, p0, :cond_1

    .line 89
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 91
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 94
    .local v0, "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;>;"
    iget-object v1, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->getDescendantRequestManagerFragments()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 95
    .local v2, "fragment":Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;
    invoke-virtual {v2}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->getParentFragment()Lccsanandroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->isDescendant(Lccsanandroidx/fragment/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v2    # "fragment":Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;
    :cond_2
    goto :goto_0

    .line 99
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method getLifecycle()Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;
    .locals 1

    .line 55
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    return-object v0
.end method

.method public getRequestManager()Lccsancom/bumptech/glide/RequestManager;
    .locals 1

    .line 62
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lccsancom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method public getRequestManagerTreeNode()Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;
    .locals 1

    .line 70
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManagerTreeNode:Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;

    return-object v0
.end method

.method public onAttach(Lccsanandroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Lccsanandroid/app/Activity;

    .line 119
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onAttach(Lccsanandroid/app/Activity;)V

    .line 121
    :try_start_0
    invoke-static {}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get()Lccsancom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->getActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->getSupportRequestManagerFragment(Lccsanandroidx/fragment/app/FragmentManager;)Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 123
    if-eq v0, p0, :cond_0

    .line 124
    invoke-direct {v0, p0}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->addChildRequestManagerFragment(Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x5

    const-string v2, "SupportRMFragment"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const-string v1, "Unable to register fragment with root"

    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 158
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onDestroy()V

    .line 159
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->onDestroy()V

    .line 160
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 137
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onDetach()V

    .line 138
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {v0, p0}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->removeChildRequestManagerFragment(Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 142
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 164
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onLowMemory()V

    .line 167
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lccsancom/bumptech/glide/RequestManager;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lccsancom/bumptech/glide/RequestManager;->onLowMemory()V

    .line 170
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 146
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onStart()V

    .line 147
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStart()V

    .line 148
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 152
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onStop()V

    .line 153
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStop()V

    .line 154
    return-void
.end method

.method public setRequestManager(Lccsancom/bumptech/glide/RequestManager;)V
    .locals 0
    .param p1, "requestManager"    # Lccsancom/bumptech/glide/RequestManager;

    .line 51
    iput-object p1, p0, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lccsancom/bumptech/glide/RequestManager;

    .line 52
    return-void
.end method
