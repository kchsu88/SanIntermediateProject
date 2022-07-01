.class public final Lccsanandroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;,
        Lccsanandroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;
    }
.end annotation


# instance fields
.field private final mFallbackOnBackPressed:Ljava/lang/Runnable;

.field final mOnBackPressedCallbacks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lccsanandroidx/activity/OnBackPressedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "fallbackOnBackPressed"    # Ljava/lang/Runnable;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    .line 76
    iput-object p1, p0, Lccsanandroidx/activity/OnBackPressedDispatcher;->mFallbackOnBackPressed:Ljava/lang/Runnable;

    .line 77
    return-void
.end method


# virtual methods
.method public addCallback(Lccsanandroidx/activity/OnBackPressedCallback;)V
    .locals 0
    .param p1, "onBackPressedCallback"    # Lccsanandroidx/activity/OnBackPressedCallback;

    .line 95
    invoke-virtual {p0, p1}, Lccsanandroidx/activity/OnBackPressedDispatcher;->addCancellableCallback(Lccsanandroidx/activity/OnBackPressedCallback;)Lccsanandroidx/activity/Cancellable;

    .line 96
    return-void
.end method

.method public addCallback(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/activity/OnBackPressedCallback;)V
    .locals 3
    .param p1, "owner"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "onBackPressedCallback"    # Lccsanandroidx/activity/OnBackPressedCallback;

    .line 145
    invoke-interface {p1}, Lccsanandroidx/lifecycle/LifecycleOwner;->getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 146
    .local v0, "lifecycle":Lccsanandroidx/lifecycle/Lifecycle;
    invoke-virtual {v0}, Lccsanandroidx/lifecycle/Lifecycle;->getCurrentState()Lccsanandroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Lccsanandroidx/lifecycle/Lifecycle$State;->DESTROYED:Lccsanandroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_0

    .line 147
    return-void

    .line 150
    :cond_0
    new-instance v1, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v1, p0, v0, p2}, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Lccsanandroidx/activity/OnBackPressedDispatcher;Lccsanandroidx/lifecycle/Lifecycle;Lccsanandroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p2, v1}, Lccsanandroidx/activity/OnBackPressedCallback;->addCancellable(Lccsanandroidx/activity/Cancellable;)V

    .line 152
    return-void
.end method

.method addCancellableCallback(Lccsanandroidx/activity/OnBackPressedCallback;)Lccsanandroidx/activity/Cancellable;
    .locals 1
    .param p1, "onBackPressedCallback"    # Lccsanandroidx/activity/OnBackPressedCallback;

    .line 112
    iget-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v0, Lccsanandroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;-><init>(Lccsanandroidx/activity/OnBackPressedDispatcher;Lccsanandroidx/activity/OnBackPressedCallback;)V

    .line 114
    .local v0, "cancellable":Lccsanandroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;
    invoke-virtual {p1, v0}, Lccsanandroidx/activity/OnBackPressedCallback;->addCancellable(Lccsanandroidx/activity/Cancellable;)V

    .line 115
    return-object v0
.end method

.method public hasEnabledCallbacks()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsanandroidx/activity/OnBackPressedCallback;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Lccsanandroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x1

    return v1

    .line 169
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onBackPressed()V
    .locals 3

    .line 184
    iget-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    .line 185
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 186
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsanandroidx/activity/OnBackPressedCallback;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/activity/OnBackPressedCallback;

    .line 188
    .local v1, "callback":Lccsanandroidx/activity/OnBackPressedCallback;
    invoke-virtual {v1}, Lccsanandroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v1}, Lccsanandroidx/activity/OnBackPressedCallback;->handleOnBackPressed()V

    .line 190
    return-void

    .line 192
    .end local v1    # "callback":Lccsanandroidx/activity/OnBackPressedCallback;
    :cond_0
    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lccsanandroidx/activity/OnBackPressedDispatcher;->mFallbackOnBackPressed:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 194
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 196
    :cond_2
    return-void
.end method
