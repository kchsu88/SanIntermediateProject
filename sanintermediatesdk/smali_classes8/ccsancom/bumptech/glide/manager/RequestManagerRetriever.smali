.class public Lccsancom/bumptech/glide/manager/RequestManagerRetriever;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# static fields
.field static final FRAGMENT_TAG:Ljava/lang/String; = "com.bumptech.glide.manager"

.field private static final ID_REMOVE_FRAGMENT_MANAGER:I = 0x1

.field private static final ID_REMOVE_SUPPORT_FRAGMENT_MANAGER:I = 0x2

.field private static final INSTANCE:Lccsancom/bumptech/glide/manager/RequestManagerRetriever;

.field private static final TAG:Ljava/lang/String; = "RMRetriever"


# instance fields
.field private volatile applicationManager:Lccsancom/bumptech/glide/RequestManager;

.field private final handler:Lccsanandroid/os/Handler;

.field final pendingRequestManagerFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsanandroid/app/FragmentManager;",
            "Lccsancom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field final pendingSupportRequestManagerFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsanandroidx/fragment/app/FragmentManager;",
            "Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;

    invoke-direct {v0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->INSTANCE:Lccsancom/bumptech/glide/manager/RequestManagerRetriever;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    .line 62
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->handler:Lccsanandroid/os/Handler;

    .line 63
    return-void
.end method

.method private static assertNotDestroyed(Lccsanandroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Lccsanandroid/app/Activity;

    .line 133
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lccsanandroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load for a destroyed activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    :goto_0
    return-void
.end method

.method public static get()Lccsancom/bumptech/glide/manager/RequestManagerRetriever;
    .locals 1

    .line 57
    sget-object v0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->INSTANCE:Lccsancom/bumptech/glide/manager/RequestManagerRetriever;

    return-object v0
.end method

.method private getApplicationManager(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 67
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lccsancom/bumptech/glide/RequestManager;

    if-nez v0, :cond_1

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lccsancom/bumptech/glide/RequestManager;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lccsancom/bumptech/glide/RequestManager;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    new-instance v2, Lccsancom/bumptech/glide/manager/ApplicationLifecycle;

    invoke-direct {v2}, Lccsancom/bumptech/glide/manager/ApplicationLifecycle;-><init>()V

    new-instance v3, Lccsancom/bumptech/glide/manager/EmptyRequestManagerTreeNode;

    invoke-direct {v3}, Lccsancom/bumptech/glide/manager/EmptyRequestManagerTreeNode;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lccsancom/bumptech/glide/RequestManager;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lccsancom/bumptech/glide/RequestManager;

    .line 76
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 79
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->applicationManager:Lccsancom/bumptech/glide/RequestManager;

    return-object v0
.end method


# virtual methods
.method fragmentGet(Lccsanandroid/content/Context;Lccsanandroid/app/FragmentManager;)Lccsancom/bumptech/glide/RequestManager;
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "fm"    # Lccsanandroid/app/FragmentManager;

    .line 168
    invoke-virtual {p0, p2}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Lccsanandroid/app/FragmentManager;)Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v0

    .line 169
    .local v0, "current":Lccsancom/bumptech/glide/manager/RequestManagerFragment;
    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->getRequestManager()Lccsancom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 170
    .local v1, "requestManager":Lccsancom/bumptech/glide/RequestManager;
    if-nez v1, :cond_0

    .line 171
    new-instance v2, Lccsancom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->getLifecycle()Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v3

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->getRequestManagerTreeNode()Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lccsancom/bumptech/glide/RequestManager;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;)V

    move-object v1, v2

    .line 172
    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;->setRequestManager(Lccsancom/bumptech/glide/RequestManager;)V

    .line 174
    :cond_0
    return-object v1
.end method

.method public get(Lccsanandroid/app/Activity;)Lccsancom/bumptech/glide/RequestManager;
    .locals 2
    .param p1, "activity"    # Lccsanandroid/app/Activity;

    .line 122
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p1}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->assertNotDestroyed(Lccsanandroid/app/Activity;)V

    .line 126
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getFragmentManager()Lccsanandroid/app/FragmentManager;

    move-result-object v0

    .line 127
    .local v0, "fm":Lccsanandroid/app/FragmentManager;
    invoke-virtual {p0, p1, v0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->fragmentGet(Lccsanandroid/content/Context;Lccsanandroid/app/FragmentManager;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1

    .line 123
    .end local v0    # "fm":Lccsanandroid/app/FragmentManager;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0
.end method

.method public get(Lccsanandroid/app/Fragment;)Lccsancom/bumptech/glide/RequestManager;
    .locals 2
    .param p1, "fragment"    # Lccsanandroid/app/Fragment;

    .line 140
    invoke-virtual {p1}, Lccsanandroid/app/Fragment;->getActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 143
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/app/Fragment;->getChildFragmentManager()Lccsanandroid/app/FragmentManager;

    move-result-object v0

    .line 147
    .local v0, "fm":Lccsanandroid/app/FragmentManager;
    invoke-virtual {p1}, Lccsanandroid/app/Fragment;->getActivity()Lccsanandroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->fragmentGet(Lccsanandroid/content/Context;Lccsanandroid/app/FragmentManager;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1

    .line 144
    .end local v0    # "fm":Lccsanandroid/app/FragmentManager;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lccsanandroid/app/Fragment;->getActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 141
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load on a fragment before it is attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 83
    if-eqz p1, :cond_3

    .line 85
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lccsanandroid/app/Application;

    if-nez v0, :cond_2

    .line 86
    instance-of v0, p1, Lccsanandroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 87
    move-object v0, p1

    check-cast v0, Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get(Lccsanandroidx/fragment/app/FragmentActivity;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    instance-of v0, p1, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_1

    .line 89
    move-object v0, p1

    check-cast v0, Lccsanandroid/app/Activity;

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get(Lccsanandroid/app/Activity;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 90
    :cond_1
    instance-of v0, p1, Lccsanandroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 91
    move-object v0, p1

    check-cast v0, Lccsanandroid/content/ContextWrapper;

    invoke-virtual {v0}, Lccsanandroid/content/ContextWrapper;->getBaseContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 95
    :cond_2
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->getApplicationManager(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load on a null Context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Lccsanandroidx/fragment/app/Fragment;)Lccsancom/bumptech/glide/RequestManager;
    .locals 2
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 109
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getChildFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 116
    .local v0, "fm":Lccsanandroidx/fragment/app/FragmentManager;
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->supportFragmentGet(Lccsanandroid/content/Context;Lccsanandroidx/fragment/app/FragmentManager;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1

    .line 110
    .end local v0    # "fm":Lccsanandroidx/fragment/app/FragmentManager;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot start a load on a fragment before it is attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Lccsanandroidx/fragment/app/FragmentActivity;)Lccsancom/bumptech/glide/RequestManager;
    .locals 2
    .param p1, "activity"    # Lccsanandroidx/fragment/app/FragmentActivity;

    .line 99
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    invoke-static {p1}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->assertNotDestroyed(Lccsanandroid/app/Activity;)V

    .line 103
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 104
    .local v0, "fm":Lccsanandroidx/fragment/app/FragmentManager;
    invoke-virtual {p0, p1, v0}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->supportFragmentGet(Lccsanandroid/content/Context;Lccsanandroidx/fragment/app/FragmentManager;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v1

    return-object v1
.end method

.method getRequestManagerFragment(Lccsanandroid/app/FragmentManager;)Lccsancom/bumptech/glide/manager/RequestManagerFragment;
    .locals 3
    .param p1, "fm"    # Lccsanandroid/app/FragmentManager;

    .line 153
    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Lccsanandroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lccsanandroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    .line 154
    .local v1, "current":Lccsancom/bumptech/glide/manager/RequestManagerFragment;
    if-nez v1, :cond_0

    .line 155
    iget-object v2, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    .line 156
    if-nez v1, :cond_0

    .line 157
    new-instance v2, Lccsancom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v2}, Lccsancom/bumptech/glide/manager/RequestManagerFragment;-><init>()V

    move-object v1, v2

    .line 158
    iget-object v2, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Lccsanandroid/app/FragmentManager;->beginTransaction()Lccsanandroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lccsanandroid/app/FragmentTransaction;->add(Lccsanandroid/app/Fragment;Ljava/lang/String;)Lccsanandroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 160
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->handler:Lccsanandroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 163
    :cond_0
    return-object v1
.end method

.method getSupportRequestManagerFragment(Lccsanandroidx/fragment/app/FragmentManager;)Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;
    .locals 3
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;

    .line 178
    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Lccsanandroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 182
    .local v1, "current":Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;
    if-nez v1, :cond_0

    .line 183
    iget-object v2, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 184
    if-nez v1, :cond_0

    .line 185
    new-instance v2, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-direct {v2}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>()V

    move-object v1, v2

    .line 186
    iget-object v2, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lccsanandroidx/fragment/app/FragmentTransaction;->add(Lccsanandroidx/fragment/app/Fragment;Ljava/lang/String;)Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 188
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->handler:Lccsanandroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 191
    :cond_0
    return-object v1
.end method

.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Lccsanandroid/os/Message;

    .line 206
    const/4 v0, 0x1

    .line 207
    .local v0, "handled":Z
    const/4 v1, 0x0

    .line 208
    .local v1, "removed":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 209
    .local v2, "key":Ljava/lang/Object;
    iget v3, p1, Lccsanandroid/os/Message;->what:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    move-object v3, v4

    .line 221
    .local v3, "supportFm":Lccsanandroidx/fragment/app/FragmentManager;
    .local v4, "fm":Lccsanandroid/app/FragmentManager;
    const/4 v0, 0x0

    goto :goto_0

    .line 209
    .end local v3    # "supportFm":Lccsanandroidx/fragment/app/FragmentManager;
    .end local v4    # "fm":Lccsanandroid/app/FragmentManager;
    :pswitch_0
    move-object v3, v4

    .line 216
    .local v3, "fm":Lccsanandroid/app/FragmentManager;
    iget-object v4, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lccsanandroidx/fragment/app/FragmentManager;

    .line 217
    .local v4, "supportFm":Lccsanandroidx/fragment/app/FragmentManager;
    move-object v2, v4

    .line 218
    iget-object v5, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->pendingSupportRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    goto :goto_0

    .line 211
    .end local v3    # "fm":Lccsanandroid/app/FragmentManager;
    .end local v4    # "supportFm":Lccsanandroidx/fragment/app/FragmentManager;
    :pswitch_1
    iget-object v3, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lccsanandroid/app/FragmentManager;

    .line 212
    .restart local v3    # "fm":Lccsanandroid/app/FragmentManager;
    move-object v2, v3

    .line 213
    iget-object v4, p0, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->pendingRequestManagerFragments:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 214
    nop

    .line 223
    .end local v3    # "fm":Lccsanandroid/app/FragmentManager;
    :goto_0
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v3, 0x5

    const-string v4, "RMRetriever"

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method supportFragmentGet(Lccsanandroid/content/Context;Lccsanandroidx/fragment/app/FragmentManager;)Lccsancom/bumptech/glide/RequestManager;
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;

    .line 195
    invoke-virtual {p0, p2}, Lccsancom/bumptech/glide/manager/RequestManagerRetriever;->getSupportRequestManagerFragment(Lccsanandroidx/fragment/app/FragmentManager;)Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object v0

    .line 196
    .local v0, "current":Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;
    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManager()Lccsancom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 197
    .local v1, "requestManager":Lccsancom/bumptech/glide/RequestManager;
    if-nez v1, :cond_0

    .line 198
    new-instance v2, Lccsancom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->getLifecycle()Lccsancom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-result-object v3

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManagerTreeNode()Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lccsancom/bumptech/glide/RequestManager;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;)V

    move-object v1, v2

    .line 199
    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/manager/SupportRequestManagerFragment;->setRequestManager(Lccsancom/bumptech/glide/RequestManager;)V

    .line 201
    :cond_0
    return-object v1
.end method
