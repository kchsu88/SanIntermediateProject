.class public abstract Lccsanandroidx/fragment/app/FragmentTransitionImpl;
.super Ljava/lang/Object;
.source "FragmentTransitionImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static bfsAddViewChildren(Ljava/util/List;Lccsanandroid/view/View;)V
    .locals 8
    .param p1, "startView"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroid/view/View;",
            ")V"
        }
    .end annotation

    .line 315
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 316
    .local v0, "startIndex":I
    invoke-static {p0, p1, v0}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->containedBeforeIndex(Ljava/util/List;Lccsanandroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    return-void

    .line 319
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    move v1, v0

    .local v1, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 321
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    .line 322
    .local v2, "view":Lccsanandroid/view/View;
    instance-of v3, v2, Lccsanandroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 323
    move-object v3, v2

    check-cast v3, Lccsanandroid/view/ViewGroup;

    .line 324
    .local v3, "viewGroup":Lccsanandroid/view/ViewGroup;
    invoke-virtual {v3}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 325
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "childIndex":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 326
    invoke-virtual {v3, v5}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v6

    .line 327
    .local v6, "child":Lccsanandroid/view/View;
    invoke-static {p0, v6, v0}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->containedBeforeIndex(Ljava/util/List;Lccsanandroid/view/View;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 328
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v6    # "child":Lccsanandroid/view/View;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 320
    .end local v2    # "view":Lccsanandroid/view/View;
    .end local v3    # "viewGroup":Lccsanandroid/view/ViewGroup;
    .end local v4    # "childCount":I
    .end local v5    # "childIndex":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    .end local v1    # "index":I
    :cond_3
    return-void
.end method

.method private static containedBeforeIndex(Ljava/util/List;Lccsanandroid/view/View;I)Z
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroid/view/View;",
            "I)Z"
        }
    .end annotation

    .line 340
    .local p0, "views":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 341
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 342
    const/4 v1, 0x1

    return v1

    .line 340
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static findKeyForValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 360
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 361
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 364
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 352
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public abstract addTarget(Ljava/lang/Object;Lccsanandroid/view/View;)V
.end method

.method public abstract addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract beginDelayedTransition(Lccsanandroid/view/ViewGroup;Ljava/lang/Object;)V
.end method

.method public abstract canHandle(Ljava/lang/Object;)Z
.end method

.method captureTransitioningViews(Ljava/util/ArrayList;Lccsanandroid/view/View;)V
    .locals 4
    .param p2, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroid/view/View;",
            ")V"
        }
    .end annotation

    .line 193
    .local p1, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    invoke-virtual {p2}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 194
    instance-of v0, p2, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 195
    move-object v0, p2

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 196
    .local v0, "viewGroup":Lccsanandroid/view/ViewGroup;
    invoke-static {v0}, Lccsanandroidx/core/view/ViewGroupCompat;->isTransitionGroup(Lccsanandroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 200
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 201
    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 202
    .local v3, "child":Lccsanandroid/view/View;
    invoke-virtual {p0, p1, v3}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->captureTransitioningViews(Ljava/util/ArrayList;Lccsanandroid/view/View;)V

    .line 200
    .end local v3    # "child":Lccsanandroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "viewGroup":Lccsanandroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 206
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_3
    :goto_2
    return-void
.end method

.method public abstract cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method findNamedViews(Ljava/util/Map;Lccsanandroid/view/View;)V
    .locals 5
    .param p2, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroid/view/View;",
            ")V"
        }
    .end annotation

    .line 216
    .local p1, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsanandroid/view/View;>;"
    invoke-virtual {p2}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 217
    invoke-static {p2}, Lccsanandroidx/core/view/ViewCompat;->getTransitionName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "transitionName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 219
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_0
    instance-of v1, p2, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 222
    move-object v1, p2

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 223
    .local v1, "viewGroup":Lccsanandroid/view/ViewGroup;
    invoke-virtual {v1}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 224
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 225
    invoke-virtual {v1, v3}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v4

    .line 226
    .local v4, "child":Lccsanandroid/view/View;
    invoke-virtual {p0, p1, v4}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->findNamedViews(Ljava/util/Map;Lccsanandroid/view/View;)V

    .line 224
    .end local v4    # "child":Lccsanandroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "transitionName":Ljava/lang/String;
    .end local v1    # "viewGroup":Lccsanandroid/view/ViewGroup;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method protected getBoundsOnScreen(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V
    .locals 6
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "epicenter"    # Lccsanandroid/graphics/Rect;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 80
    .local v0, "loc":[I
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 81
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v1, v0, v1

    invoke-virtual {p1}, Lccsanandroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    aget v3, v0, v3

    invoke-virtual {p1}, Lccsanandroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p2, v2, v4, v1, v3}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 82
    return-void
.end method

.method public abstract mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    .local p1, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 136
    .local v1, "numSharedElements":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 137
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/view/View;

    .line 138
    .local v3, "view":Lccsanandroid/view/View;
    invoke-static {v3}, Lccsanandroidx/core/view/ViewCompat;->getTransitionName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lccsanandroidx/core/view/ViewCompat;->setTransitionName(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 136
    .end local v3    # "view":Lccsanandroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public abstract removeTarget(Ljava/lang/Object;Lccsanandroid/view/View;)V
.end method

.method public abstract replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scheduleHideFragmentView(Ljava/lang/Object;Lccsanandroid/view/View;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lccsanandroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method scheduleNameReset(Lccsanandroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 1
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p2, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p3, "nameOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$3;

    invoke-direct {v0, p0, p2, p3}, Lccsanandroidx/fragment/app/FragmentTransitionImpl$3;-><init>(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {p1, v0}, Lccsanandroidx/core/view/OneShotPreDrawListener;->add(Lccsanandroid/view/View;Ljava/lang/Runnable;)Lccsanandroidx/core/view/OneShotPreDrawListener;

    .line 308
    return-void
.end method

.method public abstract scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEpicenter(Ljava/lang/Object;Lccsanandroid/graphics/Rect;)V
.end method

.method public abstract setEpicenter(Ljava/lang/Object;Lccsanandroid/view/View;)V
.end method

.method setNameOverridesOrdered(Lccsanandroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 1
    .param p1, "sceneRoot"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 237
    .local p2, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p3, "nameOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lccsanandroidx/fragment/app/FragmentTransitionImpl$2;

    invoke-direct {v0, p0, p2, p3}, Lccsanandroidx/fragment/app/FragmentTransitionImpl$2;-><init>(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {p1, v0}, Lccsanandroidx/core/view/OneShotPreDrawListener;->add(Lccsanandroid/view/View;Ljava/lang/Runnable;)Lccsanandroidx/core/view/OneShotPreDrawListener;

    .line 251
    return-void
.end method

.method setNameOverridesReordered(Lccsanandroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 10
    .param p1, "sceneRoot"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p4, "inNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "nameOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 154
    .local v7, "numSharedElements":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 156
    .local v8, "outNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_3

    .line 157
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 158
    .local v1, "view":Lccsanandroid/view/View;
    invoke-static {v1}, Lccsanandroidx/core/view/ViewCompat;->getTransitionName(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    if-nez v2, :cond_0

    .line 161
    goto :goto_2

    .line 163
    :cond_0
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lccsanandroidx/core/view/ViewCompat;->setTransitionName(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 164
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 165
    .local v3, "inName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 166
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/view/View;

    invoke-static {v5, v2}, Lccsanandroidx/core/view/ViewCompat;->setTransitionName(Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 168
    goto :goto_2

    .line 165
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    .end local v1    # "view":Lccsanandroid/view/View;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "inName":Ljava/lang/String;
    .end local v4    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "i":I
    :cond_3
    new-instance v9, Lccsanandroidx/fragment/app/FragmentTransitionImpl$1;

    move-object v0, v9

    move-object v1, p0

    move v2, v7

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/fragment/app/FragmentTransitionImpl$1;-><init>(Lccsanandroidx/fragment/app/FragmentTransitionImpl;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p1, v9}, Lccsanandroidx/core/view/OneShotPreDrawListener;->add(Lccsanandroid/view/View;Ljava/lang/Runnable;)Lccsanandroidx/core/view/OneShotPreDrawListener;

    .line 182
    return-void
.end method

.method public abstract setSharedElementTargets(Ljava/lang/Object;Lccsanandroid/view/View;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lccsanandroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
.end method
