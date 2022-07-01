.class Lccsanandroidx/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lccsanandroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiListener"
.end annotation


# instance fields
.field mSceneRoot:Lccsanandroid/view/ViewGroup;

.field mTransition:Lccsanandroidx/transition/Transition;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/Transition;Lccsanandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;
    .param p2, "sceneRoot"    # Lccsanandroid/view/ViewGroup;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mTransition:Lccsanandroidx/transition/Transition;

    .line 240
    iput-object p2, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    .line 241
    return-void
.end method

.method private removeListeners()V
    .locals 1

    .line 244
    iget-object v0, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 245
    iget-object v0, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewGroup;->removeOnAttachStateChangeListener(Lccsanandroid/view/View$OnAttachStateChangeListener;)V

    .line 246
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .line 268
    invoke-direct {p0}, Lccsanandroidx/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 271
    sget-object v0, Lccsanandroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    iget-object v1, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 272
    return v1

    .line 277
    :cond_0
    invoke-static {}, Lccsanandroidx/transition/TransitionManager;->getRunningTransitions()Lccsanandroidx/collection/ArrayMap;

    move-result-object v0

    .line 278
    .local v0, "runningTransitions":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Lccsanandroid/view/ViewGroup;Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;>;"
    iget-object v2, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 279
    .local v2, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;"
    const/4 v3, 0x0

    .line 280
    .local v3, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;"
    if-nez v2, :cond_1

    .line 281
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 282
    iget-object v4, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, v4, v2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 284
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    .line 286
    :cond_2
    :goto_0
    iget-object v4, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mTransition:Lccsanandroidx/transition/Transition;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v4, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mTransition:Lccsanandroidx/transition/Transition;

    new-instance v5, Lccsanandroidx/transition/TransitionManager$MultiListener$1;

    invoke-direct {v5, p0, v0}, Lccsanandroidx/transition/TransitionManager$MultiListener$1;-><init>(Lccsanandroidx/transition/TransitionManager$MultiListener;Lccsanandroidx/collection/ArrayMap;)V

    invoke-virtual {v4, v5}, Lccsanandroidx/transition/Transition;->addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 295
    iget-object v4, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mTransition:Lccsanandroidx/transition/Transition;

    iget-object v5, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lccsanandroidx/transition/Transition;->captureValues(Lccsanandroid/view/ViewGroup;Z)V

    .line 296
    if-eqz v3, :cond_3

    .line 297
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroidx/transition/Transition;

    .line 298
    .local v5, "runningTransition":Lccsanandroidx/transition/Transition;
    iget-object v6, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Lccsanandroidx/transition/Transition;->resume(Lccsanandroid/view/View;)V

    .line 299
    .end local v5    # "runningTransition":Lccsanandroidx/transition/Transition;
    goto :goto_1

    .line 301
    :cond_3
    iget-object v4, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mTransition:Lccsanandroidx/transition/Transition;

    iget-object v5, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Lccsanandroidx/transition/Transition;->playTransition(Lccsanandroid/view/ViewGroup;)V

    .line 303
    return v1
.end method

.method public onViewAttachedToWindow(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 250
    return-void
.end method

.method public onViewDetachedFromWindow(Lccsanandroid/view/View;)V
    .locals 4
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 254
    invoke-direct {p0}, Lccsanandroidx/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 256
    sget-object v0, Lccsanandroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    iget-object v1, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 257
    invoke-static {}, Lccsanandroidx/transition/TransitionManager;->getRunningTransitions()Lccsanandroidx/collection/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 258
    .local v0, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    .line 260
    .local v2, "runningTransition":Lccsanandroidx/transition/Transition;
    iget-object v3, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lccsanandroidx/transition/Transition;->resume(Lccsanandroid/view/View;)V

    .line 261
    .end local v2    # "runningTransition":Lccsanandroidx/transition/Transition;
    goto :goto_0

    .line 263
    :cond_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionManager$MultiListener;->mTransition:Lccsanandroidx/transition/Transition;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsanandroidx/transition/Transition;->clearValues(Z)V

    .line 264
    return-void
.end method
