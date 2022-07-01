.class public Lccsanandroidx/transition/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/transition/TransitionManager$MultiListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TransitionManager"

.field private static sDefaultTransition:Lccsanandroidx/transition/Transition;

.field static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningTransitions:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroidx/collection/ArrayMap<",
            "Lccsanandroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/transition/Transition;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mScenePairTransitions:Lccsanandroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/ArrayMap<",
            "Lccsanandroidx/transition/Scene;",
            "Lccsanandroidx/collection/ArrayMap<",
            "Lccsanandroidx/transition/Scene;",
            "Lccsanandroidx/transition/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSceneTransitions:Lccsanandroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/ArrayMap<",
            "Lccsanandroidx/transition/Scene;",
            "Lccsanandroidx/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lccsanandroidx/transition/AutoTransition;

    invoke-direct {v0}, Lccsanandroidx/transition/AutoTransition;-><init>()V

    sput-object v0, Lccsanandroidx/transition/TransitionManager;->sDefaultTransition:Lccsanandroidx/transition/Transition;

    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lccsanandroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsanandroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/transition/TransitionManager;->mSceneTransitions:Lccsanandroidx/collection/ArrayMap;

    .line 86
    new-instance v0, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/transition/TransitionManager;->mScenePairTransitions:Lccsanandroidx/collection/ArrayMap;

    return-void
.end method

.method public static beginDelayedTransition(Lccsanandroid/view/ViewGroup;)V
    .locals 1
    .param p0, "sceneRoot"    # Lccsanandroid/view/ViewGroup;

    .line 380
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsanandroidx/transition/TransitionManager;->beginDelayedTransition(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/Transition;)V

    .line 381
    return-void
.end method

.method public static beginDelayedTransition(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p0, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 408
    sget-object v0, Lccsanandroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isLaidOut(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    sget-object v0, Lccsanandroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    if-nez p1, :cond_0

    .line 415
    sget-object p1, Lccsanandroidx/transition/TransitionManager;->sDefaultTransition:Lccsanandroidx/transition/Transition;

    .line 417
    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/transition/Transition;->clone()Lccsanandroidx/transition/Transition;

    move-result-object v0

    .line 418
    .local v0, "transitionClone":Lccsanandroidx/transition/Transition;
    invoke-static {p0, v0}, Lccsanandroidx/transition/TransitionManager;->sceneChangeSetup(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/Transition;)V

    .line 419
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lccsanandroidx/transition/Scene;->setCurrentScene(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/Scene;)V

    .line 420
    invoke-static {p0, v0}, Lccsanandroidx/transition/TransitionManager;->sceneChangeRunTransition(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/Transition;)V

    .line 422
    .end local v0    # "transitionClone":Lccsanandroidx/transition/Transition;
    :cond_1
    return-void
.end method

.method private static changeScene(Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Transition;)V
    .locals 4
    .param p0, "scene"    # Lccsanandroidx/transition/Scene;
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 169
    invoke-virtual {p0}, Lccsanandroidx/transition/Scene;->getSceneRoot()Lccsanandroid/view/ViewGroup;

    move-result-object v0

    .line 171
    .local v0, "sceneRoot":Lccsanandroid/view/ViewGroup;
    sget-object v1, Lccsanandroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    invoke-static {v0}, Lccsanandroidx/transition/Scene;->getCurrentScene(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/Scene;

    move-result-object v1

    .line 173
    .local v1, "oldScene":Lccsanandroidx/transition/Scene;
    if-nez p1, :cond_1

    .line 175
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1}, Lccsanandroidx/transition/Scene;->exit()V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/transition/Scene;->enter()V

    goto :goto_0

    .line 181
    :cond_1
    sget-object v2, Lccsanandroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p1}, Lccsanandroidx/transition/Transition;->clone()Lccsanandroidx/transition/Transition;

    move-result-object v2

    .line 184
    .local v2, "transitionClone":Lccsanandroidx/transition/Transition;
    invoke-virtual {v2, v0}, Lccsanandroidx/transition/Transition;->setSceneRoot(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/Transition;

    .line 186
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lccsanandroidx/transition/Scene;->isCreatedFromLayoutResource()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lccsanandroidx/transition/Transition;->setCanRemoveViews(Z)V

    .line 190
    :cond_2
    invoke-static {v0, v2}, Lccsanandroidx/transition/TransitionManager;->sceneChangeSetup(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/Transition;)V

    .line 192
    invoke-virtual {p0}, Lccsanandroidx/transition/Scene;->enter()V

    .line 194
    invoke-static {v0, v2}, Lccsanandroidx/transition/TransitionManager;->sceneChangeRunTransition(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/Transition;)V

    .line 197
    .end local v1    # "oldScene":Lccsanandroidx/transition/Scene;
    .end local v2    # "transitionClone":Lccsanandroidx/transition/Transition;
    :cond_3
    :goto_0
    return-void
.end method

.method public static endTransitions(Lccsanandroid/view/ViewGroup;)V
    .locals 4
    .param p0, "sceneRoot"    # Lccsanandroid/view/ViewGroup;

    .line 430
    sget-object v0, Lccsanandroidx/transition/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 431
    invoke-static {}, Lccsanandroidx/transition/TransitionManager;->getRunningTransitions()Lccsanandroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 432
    .local v0, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 435
    .local v1, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 436
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/transition/Transition;

    .line 437
    .local v3, "transition":Lccsanandroidx/transition/Transition;
    invoke-virtual {v3, p0}, Lccsanandroidx/transition/Transition;->forceToEnd(Lccsanandroid/view/ViewGroup;)V

    .line 435
    .end local v3    # "transition":Lccsanandroidx/transition/Transition;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 440
    .end local v1    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;"
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method static getRunningTransitions()Lccsanandroidx/collection/ArrayMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/collection/ArrayMap<",
            "Lccsanandroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/transition/Transition;",
            ">;>;"
        }
    .end annotation

    .line 200
    sget-object v0, Lccsanandroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    .line 201
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 202
    .local v0, "runningTransitions":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroidx/collection/ArrayMap<Lccsanandroid/view/ViewGroup;Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;>;>;"
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/collection/ArrayMap;

    .line 204
    .local v1, "transitions":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Lccsanandroid/view/ViewGroup;Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;>;"
    if-eqz v1, :cond_0

    .line 205
    return-object v1

    .line 208
    .end local v1    # "transitions":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Lccsanandroid/view/ViewGroup;Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;>;"
    :cond_0
    new-instance v1, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v1}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    .line 209
    .restart local v1    # "transitions":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Lccsanandroid/view/ViewGroup;Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;>;"
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 210
    sget-object v2, Lccsanandroidx/transition/TransitionManager;->sRunningTransitions:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 211
    return-object v1
.end method

.method private getTransition(Lccsanandroidx/transition/Scene;)Lccsanandroidx/transition/Transition;
    .locals 4
    .param p1, "scene"    # Lccsanandroidx/transition/Scene;

    .line 139
    invoke-virtual {p1}, Lccsanandroidx/transition/Scene;->getSceneRoot()Lccsanandroid/view/ViewGroup;

    move-result-object v0

    .line 140
    .local v0, "sceneRoot":Lccsanandroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 142
    invoke-static {v0}, Lccsanandroidx/transition/Scene;->getCurrentScene(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/Scene;

    move-result-object v1

    .line 143
    .local v1, "currScene":Lccsanandroidx/transition/Scene;
    if-eqz v1, :cond_0

    .line 144
    iget-object v2, p0, Lccsanandroidx/transition/TransitionManager;->mScenePairTransitions:Lccsanandroidx/collection/ArrayMap;

    .line 145
    invoke-virtual {v2, p1}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/collection/ArrayMap;

    .line 146
    .local v2, "sceneTransitionMap":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Transition;>;"
    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v2, v1}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/transition/Transition;

    .line 148
    .local v3, "transition":Lccsanandroidx/transition/Transition;
    if-eqz v3, :cond_0

    .line 149
    return-object v3

    .line 154
    .end local v1    # "currScene":Lccsanandroidx/transition/Scene;
    .end local v2    # "sceneTransitionMap":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Transition;>;"
    .end local v3    # "transition":Lccsanandroidx/transition/Transition;
    :cond_0
    iget-object v1, p0, Lccsanandroidx/transition/TransitionManager;->mSceneTransitions:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Transition;

    .line 155
    .local v1, "transition":Lccsanandroidx/transition/Transition;
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lccsanandroidx/transition/TransitionManager;->sDefaultTransition:Lccsanandroidx/transition/Transition;

    :goto_0
    return-object v2
.end method

.method public static go(Lccsanandroidx/transition/Scene;)V
    .locals 1
    .param p0, "scene"    # Lccsanandroidx/transition/Scene;

    .line 349
    sget-object v0, Lccsanandroidx/transition/TransitionManager;->sDefaultTransition:Lccsanandroidx/transition/Transition;

    invoke-static {p0, v0}, Lccsanandroidx/transition/TransitionManager;->changeScene(Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Transition;)V

    .line 350
    return-void
.end method

.method public static go(Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p0, "scene"    # Lccsanandroidx/transition/Scene;
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 367
    invoke-static {p0, p1}, Lccsanandroidx/transition/TransitionManager;->changeScene(Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Transition;)V

    .line 368
    return-void
.end method

.method private static sceneChangeRunTransition(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p0, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 216
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 217
    new-instance v0, Lccsanandroidx/transition/TransitionManager$MultiListener;

    invoke-direct {v0, p1, p0}, Lccsanandroidx/transition/TransitionManager$MultiListener;-><init>(Lccsanandroidx/transition/Transition;Lccsanandroid/view/ViewGroup;)V

    .line 218
    .local v0, "listener":Lccsanandroidx/transition/TransitionManager$MultiListener;
    invoke-virtual {p0, v0}, Lccsanandroid/view/ViewGroup;->addOnAttachStateChangeListener(Lccsanandroid/view/View$OnAttachStateChangeListener;)V

    .line 219
    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/view/ViewTreeObserver;->addOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 221
    .end local v0    # "listener":Lccsanandroidx/transition/TransitionManager$MultiListener;
    :cond_0
    return-void
.end method

.method private static sceneChangeSetup(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/Transition;)V
    .locals 3
    .param p0, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 309
    invoke-static {}, Lccsanandroidx/transition/TransitionManager;->getRunningTransitions()Lccsanandroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 311
    .local v0, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/transition/Transition;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 312
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/transition/Transition;

    .line 313
    .local v2, "runningTransition":Lccsanandroidx/transition/Transition;
    invoke-virtual {v2, p0}, Lccsanandroidx/transition/Transition;->pause(Lccsanandroid/view/View;)V

    .line 314
    .end local v2    # "runningTransition":Lccsanandroidx/transition/Transition;
    goto :goto_0

    .line 317
    :cond_0
    if-eqz p1, :cond_1

    .line 318
    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Lccsanandroidx/transition/Transition;->captureValues(Lccsanandroid/view/ViewGroup;Z)V

    .line 322
    :cond_1
    invoke-static {p0}, Lccsanandroidx/transition/Scene;->getCurrentScene(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/Scene;

    move-result-object v1

    .line 323
    .local v1, "previousScene":Lccsanandroidx/transition/Scene;
    if-eqz v1, :cond_2

    .line 324
    invoke-virtual {v1}, Lccsanandroidx/transition/Scene;->exit()V

    .line 326
    :cond_2
    return-void
.end method


# virtual methods
.method public setTransition(Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "fromScene"    # Lccsanandroidx/transition/Scene;
    .param p2, "toScene"    # Lccsanandroidx/transition/Scene;
    .param p3, "transition"    # Lccsanandroidx/transition/Transition;

    .line 119
    iget-object v0, p0, Lccsanandroidx/transition/TransitionManager;->mScenePairTransitions:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p2}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/collection/ArrayMap;

    .line 120
    .local v0, "sceneTransitionMap":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Transition;>;"
    if-nez v0, :cond_0

    .line 121
    new-instance v1, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v1}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    move-object v0, v1

    .line 122
    iget-object v1, p0, Lccsanandroidx/transition/TransitionManager;->mScenePairTransitions:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v1, p2, v0}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    invoke-virtual {v0, p1, p3}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public setTransition(Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Transition;)V
    .locals 1
    .param p1, "scene"    # Lccsanandroidx/transition/Scene;
    .param p2, "transition"    # Lccsanandroidx/transition/Transition;

    .line 102
    iget-object v0, p0, Lccsanandroidx/transition/TransitionManager;->mSceneTransitions:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public transitionTo(Lccsanandroidx/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Lccsanandroidx/transition/Scene;

    .line 339
    invoke-direct {p0, p1}, Lccsanandroidx/transition/TransitionManager;->getTransition(Lccsanandroidx/transition/Scene;)Lccsanandroidx/transition/Transition;

    move-result-object v0

    invoke-static {p1, v0}, Lccsanandroidx/transition/TransitionManager;->changeScene(Lccsanandroidx/transition/Scene;Lccsanandroidx/transition/Transition;)V

    .line 340
    return-void
.end method
