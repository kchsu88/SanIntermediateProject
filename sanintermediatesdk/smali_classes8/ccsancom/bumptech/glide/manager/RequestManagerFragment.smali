.class public Lccsancom/bumptech/glide/manager/RequestManagerFragment;
.super Lccsanandroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RMFragment"


# instance fields
.field private final childRequestManagerFragments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lccsancom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycle:Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

.field private requestManager:Lccsancom/bumptech/glide/RequestManager;

.field private final requestManagerTreeNode:Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;

.field private rootRequestManagerFragment:Lccsancom/bumptech/glide/manager/RequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    new-instance v0, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-direct {v0}, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;-><init>()V

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;-><init>(Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
    .locals 2
    .param p1, "lifecycle"    # Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    .line 43
    invoke-direct {p0}, Lccsanandroid/app/Fragment;-><init>()V

    .line 31
    new-instance v0, Lccsancom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;-><init>(Lccsancom/bumptech/glide/manager/RequestManagerFragment;Lccsancom/bumptech/glide/manager/RequestManagerFragment$1;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->requestManagerTreeNode:Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    .line 44
    iput-object p1, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    .line 45
    return-void
.end method

.method private addChildRequestManagerFragment(Lccsancom/bumptech/glide/manager/RequestManagerFragment;)V
    .locals 1
    .param p1, "child"    # Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    .line 72
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method private isDescendant(Lccsanandroid/app/Fragment;)Z
    .locals 2
    .param p1, "fragment"    # Lccsanandroid/app/Fragment;

    .line 108
    invoke-virtual {p0}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->getParentFragment()Lccsanandroid/app/Fragment;

    move-result-object v0

    .line 109
    .local v0, "root":Lccsanandroid/app/Fragment;
    :goto_0
    invoke-virtual {p1}, Lccsanandroid/app/Fragment;->getParentFragment()Lccsanandroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p1}, Lccsanandroid/app/Fragment;->getParentFragment()Lccsanandroid/app/Fragment;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 111
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/app/Fragment;->getParentFragment()Lccsanandroid/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 115
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private removeChildRequestManagerFragment(Lccsancom/bumptech/glide/manager/RequestManagerFragment;)V
    .locals 1
    .param p1, "child"    # Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    .line 76
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method


# virtual methods
.method public getDescendantRequestManagerFragments()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    if-ne v0, p0, :cond_0

    .line 86
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    if-eqz v0, :cond_4

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 94
    .local v0, "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsancom/bumptech/glide/manager/RequestManagerFragment;>;"
    iget-object v1, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->getDescendantRequestManagerFragments()Ljava/util/Set;

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

    check-cast v2, Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    .line 95
    .local v2, "fragment":Lccsancom/bumptech/glide/manager/RequestManagerFragment;
    invoke-virtual {v2}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->getParentFragment()Lccsanandroid/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->isDescendant(Lccsanandroid/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v2    # "fragment":Lccsancom/bumptech/glide/manager/RequestManagerFragment;
    :cond_2
    goto :goto_0

    .line 99
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 90
    .end local v0    # "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lccsancom/bumptech/glide/manager/RequestManagerFragment;>;"
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getLifecycle()Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;
    .locals 1

    .line 57
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    return-object v0
.end method

.method public getRequestManager()Lccsancom/bumptech/glide/RequestManager;
    .locals 1

    .line 64
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lccsancom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method public getRequestManagerTreeNode()Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;
    .locals 1

    .line 68
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->requestManagerTreeNode:Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;

    return-object v0
.end method

.method public onAttach(Lccsanandroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Lccsanandroid/app/Activity;

    .line 120
    invoke-super {p0, p1}, Lccsanandroid/app/Fragment;->onAttach(Lccsanandroid/app/Activity;)V

    .line 122
    :try_start_0
    invoke-static {}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get()Lccsancom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->getActivity()Lccsanandroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/app/Activity;->getFragmentManager()Lccsanandroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Lccsanandroid/app/FragmentManager;)Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    .line 124
    if-eq v0, p0, :cond_0

    .line 125
    invoke-direct {v0, p0}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->addChildRequestManagerFragment(Lccsancom/bumptech/glide/manager/RequestManagerFragment;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x5

    const-string v2, "RMFragment"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const-string v1, "Unable to register fragment with root"

    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 159
    invoke-super {p0}, Lccsanandroid/app/Fragment;->onDestroy()V

    .line 160
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->onDestroy()V

    .line 161
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 138
    invoke-super {p0}, Lccsanandroid/app/Fragment;->onDetach()V

    .line 139
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {v0, p0}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->removeChildRequestManagerFragment(Lccsancom/bumptech/glide/manager/RequestManagerFragment;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    .line 143
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 176
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lccsancom/bumptech/glide/RequestManager;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lccsancom/bumptech/glide/RequestManager;->onLowMemory()V

    .line 179
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 147
    invoke-super {p0}, Lccsanandroid/app/Fragment;->onStart()V

    .line 148
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStart()V

    .line 149
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 153
    invoke-super {p0}, Lccsanandroid/app/Fragment;->onStop()V

    .line 154
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStop()V

    .line 155
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 167
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lccsancom/bumptech/glide/RequestManager;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/RequestManager;->onTrimMemory(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public setRequestManager(Lccsancom/bumptech/glide/RequestManager;)V
    .locals 0
    .param p1, "requestManager"    # Lccsancom/bumptech/glide/RequestManager;

    .line 53
    iput-object p1, p0, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lccsancom/bumptech/glide/RequestManager;

    .line 54
    return-void
.end method
