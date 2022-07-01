.class Lccsanandroidx/fragment/app/FragmentTransitionCompat21;
.super Lccsanandroidx/fragment/app/FragmentTransitionImpl;
.source "FragmentTransitionCompat21.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;-><init>()V

    return-void
.end method

.method private static hasSimpleTarget(Lccsanandroid/transition/Transition;)Z
    .locals 1
    .param p0, "transition"    # Lccsanandroid/transition/Transition;

    .line 119
    invoke-virtual {p0}, Lccsanandroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lccsanandroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lccsanandroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 119
    :goto_1
    return v0
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 288
    if-eqz p1, :cond_0

    .line 289
    move-object v0, p1

    check-cast v0, Lccsanandroid/transition/Transition;

    .line 290
    .local v0, "transition":Lccsanandroid/transition/Transition;
    invoke-virtual {v0, p2}, Lccsanandroid/transition/Transition;->addTarget(Lccsanandroid/view/View;)Lccsanandroid/transition/Transition;

    .line 292
    .end local v0    # "transition":Lccsanandroid/transition/Transition;
    :cond_0
    return-void
.end method

.method public addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroid/transition/Transition;

    .line 93
    .local v0, "transition":Lccsanandroid/transition/Transition;
    if-nez v0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    instance-of v1, v0, Lccsanandroid/transition/TransitionSet;

    if-eqz v1, :cond_2

    .line 97
    move-object v1, v0

    check-cast v1, Lccsanandroid/transition/TransitionSet;

    .line 98
    .local v1, "set":Lccsanandroid/transition/TransitionSet;
    invoke-virtual {v1}, Lccsanandroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 99
    .local v2, "numTransitions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 100
    invoke-virtual {v1, v3}, Lccsanandroid/transition/TransitionSet;->getTransitionAt(I)Lccsanandroid/transition/Transition;

    move-result-object v4

    .line 101
    .local v4, "child":Lccsanandroid/transition/Transition;
    invoke-virtual {p0, v4, p2}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 99
    .end local v4    # "child":Lccsanandroid/transition/Transition;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "set":Lccsanandroid/transition/TransitionSet;
    .end local v2    # "numTransitions":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 103
    :cond_2
    invoke-static {v0}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->hasSimpleTarget(Lccsanandroid/transition/Transition;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 104
    invoke-virtual {v0}, Lccsanandroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, "targets":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    invoke-static {v1}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 108
    .local v2, "numViews":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 109
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    invoke-virtual {v0, v4}, Lccsanandroid/transition/Transition;->addTarget(Lccsanandroid/view/View;)Lccsanandroid/transition/Transition;

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    .end local v1    # "targets":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    .end local v2    # "numViews":I
    .end local v3    # "i":I
    :cond_3
    :goto_2
    nop

    .line 113
    :cond_4
    return-void
.end method

.method public beginDelayedTransition(Lccsanandroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "transition"    # Ljava/lang/Object;

    .line 206
    move-object v0, p2

    check-cast v0, Lccsanandroid/transition/Transition;

    invoke-static {p1, v0}, Lccsanandroid/transition/TransitionManager;->beginDelayedTransition(Lccsanandroid/view/ViewGroup;Lccsanandroid/transition/Transition;)V

    .line 207
    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 36
    instance-of v0, p1, Lccsanandroid/transition/Transition;

    return v0
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "transition"    # Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "copy":Lccsanandroid/transition/Transition;
    if-eqz p1, :cond_0

    .line 43
    move-object v1, p1

    check-cast v1, Lccsanandroid/transition/Transition;

    invoke-virtual {v1}, Lccsanandroid/transition/Transition;->clone()Lccsanandroid/transition/Transition;

    move-result-object v0

    .line 45
    :cond_0
    return-object v0
.end method

.method public mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "exitTransitionObj"    # Ljava/lang/Object;
    .param p2, "enterTransitionObj"    # Ljava/lang/Object;
    .param p3, "sharedElementTransitionObj"    # Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "staggered":Lccsanandroid/transition/Transition;
    move-object v1, p1

    check-cast v1, Lccsanandroid/transition/Transition;

    .line 180
    .local v1, "exitTransition":Lccsanandroid/transition/Transition;
    move-object v2, p2

    check-cast v2, Lccsanandroid/transition/Transition;

    .line 181
    .local v2, "enterTransition":Lccsanandroid/transition/Transition;
    move-object v3, p3

    check-cast v3, Lccsanandroid/transition/Transition;

    .line 182
    .local v3, "sharedElementTransition":Lccsanandroid/transition/Transition;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 183
    new-instance v4, Lccsanandroid/transition/TransitionSet;

    invoke-direct {v4}, Lccsanandroid/transition/TransitionSet;-><init>()V

    .line 184
    invoke-virtual {v4, v1}, Lccsanandroid/transition/TransitionSet;->addTransition(Lccsanandroid/transition/Transition;)Lccsanandroid/transition/TransitionSet;

    move-result-object v4

    .line 185
    invoke-virtual {v4, v2}, Lccsanandroid/transition/TransitionSet;->addTransition(Lccsanandroid/transition/Transition;)Lccsanandroid/transition/TransitionSet;

    move-result-object v4

    const/4 v5, 0x1

    .line 186
    invoke-virtual {v4, v5}, Lccsanandroid/transition/TransitionSet;->setOrdering(I)Lccsanandroid/transition/TransitionSet;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_0
    if-eqz v1, :cond_1

    .line 188
    move-object v0, v1

    goto :goto_0

    .line 189
    :cond_1
    if-eqz v2, :cond_2

    .line 190
    move-object v0, v2

    .line 192
    :cond_2
    :goto_0
    if-eqz v3, :cond_4

    .line 193
    new-instance v4, Lccsanandroid/transition/TransitionSet;

    invoke-direct {v4}, Lccsanandroid/transition/TransitionSet;-><init>()V

    .line 194
    .local v4, "together":Lccsanandroid/transition/TransitionSet;
    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {v4, v0}, Lccsanandroid/transition/TransitionSet;->addTransition(Lccsanandroid/transition/Transition;)Lccsanandroid/transition/TransitionSet;

    .line 197
    :cond_3
    invoke-virtual {v4, v3}, Lccsanandroid/transition/TransitionSet;->addTransition(Lccsanandroid/transition/Transition;)Lccsanandroid/transition/TransitionSet;

    .line 198
    return-object v4

    .line 200
    .end local v4    # "together":Lccsanandroid/transition/TransitionSet;
    :cond_4
    return-object v0
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "transition1"    # Ljava/lang/Object;
    .param p2, "transition2"    # Ljava/lang/Object;
    .param p3, "transition3"    # Ljava/lang/Object;

    .line 127
    new-instance v0, Lccsanandroid/transition/TransitionSet;

    invoke-direct {v0}, Lccsanandroid/transition/TransitionSet;-><init>()V

    .line 128
    .local v0, "transitionSet":Lccsanandroid/transition/TransitionSet;
    if-eqz p1, :cond_0

    .line 129
    move-object v1, p1

    check-cast v1, Lccsanandroid/transition/Transition;

    invoke-virtual {v0, v1}, Lccsanandroid/transition/TransitionSet;->addTransition(Lccsanandroid/transition/Transition;)Lccsanandroid/transition/TransitionSet;

    .line 131
    :cond_0
    if-eqz p2, :cond_1

    .line 132
    move-object v1, p2

    check-cast v1, Lccsanandroid/transition/Transition;

    invoke-virtual {v0, v1}, Lccsanandroid/transition/TransitionSet;->addTransition(Lccsanandroid/transition/Transition;)Lccsanandroid/transition/TransitionSet;

    .line 134
    :cond_1
    if-eqz p3, :cond_2

    .line 135
    move-object v1, p3

    check-cast v1, Lccsanandroid/transition/Transition;

    invoke-virtual {v0, v1}, Lccsanandroid/transition/TransitionSet;->addTransition(Lccsanandroid/transition/Transition;)Lccsanandroid/transition/TransitionSet;

    .line 137
    :cond_2
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 296
    if-eqz p1, :cond_0

    .line 297
    move-object v0, p1

    check-cast v0, Lccsanandroid/transition/Transition;

    .line 298
    .local v0, "transition":Lccsanandroid/transition/Transition;
    invoke-virtual {v0, p2}, Lccsanandroid/transition/Transition;->removeTarget(Lccsanandroid/view/View;)Lccsanandroid/transition/Transition;

    .line 300
    .end local v0    # "transition":Lccsanandroid/transition/Transition;
    :cond_0
    return-void
.end method

.method public replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "transitionObj"    # Ljava/lang/Object;
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

    .line 262
    .local p2, "oldTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p3, "newTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroid/transition/Transition;

    .line 263
    .local v0, "transition":Lccsanandroid/transition/Transition;
    instance-of v1, v0, Lccsanandroid/transition/TransitionSet;

    if-eqz v1, :cond_1

    .line 264
    move-object v1, v0

    check-cast v1, Lccsanandroid/transition/TransitionSet;

    .line 265
    .local v1, "set":Lccsanandroid/transition/TransitionSet;
    invoke-virtual {v1}, Lccsanandroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 266
    .local v2, "numTransitions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 267
    invoke-virtual {v1, v3}, Lccsanandroid/transition/TransitionSet;->getTransitionAt(I)Lccsanandroid/transition/Transition;

    move-result-object v4

    .line 268
    .local v4, "child":Lccsanandroid/transition/Transition;
    invoke-virtual {p0, v4, p2, p3}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 266
    .end local v4    # "child":Lccsanandroid/transition/Transition;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "set":Lccsanandroid/transition/TransitionSet;
    .end local v2    # "numTransitions":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_4

    .line 270
    :cond_1
    invoke-static {v0}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->hasSimpleTarget(Lccsanandroid/transition/Transition;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 271
    invoke-virtual {v0}, Lccsanandroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 272
    .local v1, "targets":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 273
    invoke-interface {v1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 275
    if-nez p3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 276
    .local v2, "targetCount":I
    :goto_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 277
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    invoke-virtual {v0, v4}, Lccsanandroid/transition/Transition;->addTarget(Lccsanandroid/view/View;)Lccsanandroid/transition/Transition;

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 279
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_3
    if-ltz v3, :cond_5

    .line 280
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    invoke-virtual {v0, v4}, Lccsanandroid/transition/Transition;->removeTarget(Lccsanandroid/view/View;)Lccsanandroid/transition/Transition;

    .line 279
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 270
    .end local v1    # "targets":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    .end local v2    # "targetCount":I
    .end local v3    # "i":I
    :cond_4
    :goto_4
    nop

    .line 284
    :cond_5
    return-void
.end method

.method public scheduleHideFragmentView(Ljava/lang/Object;Lccsanandroid/view/View;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "exitTransitionObj"    # Ljava/lang/Object;
    .param p2, "fragmentView"    # Lccsanandroid/view/View;
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

    .line 143
    .local p3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroid/transition/Transition;

    .line 144
    .local v0, "exitTransition":Lccsanandroid/transition/Transition;
    new-instance v1, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$2;

    invoke-direct {v1, p0, p2, p3}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$2;-><init>(Lccsanandroidx/fragment/app/FragmentTransitionCompat21;Lccsanandroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lccsanandroid/transition/Transition;->addListener(Lccsanandroid/transition/Transition$TransitionListener;)Lccsanandroid/transition/Transition;

    .line 171
    return-void
.end method

.method public scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "overallTransitionObj"    # Ljava/lang/Object;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p4, "exitTransition"    # Ljava/lang/Object;
    .param p6, "sharedElementTransition"    # Ljava/lang/Object;
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

    .line 214
    .local p3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroid/transition/Transition;

    .line 215
    .local v0, "overallTransition":Lccsanandroid/transition/Transition;
    new-instance v9, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$3;-><init>(Lccsanandroidx/fragment/app/FragmentTransitionCompat21;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lccsanandroid/transition/Transition;->addListener(Lccsanandroid/transition/Transition$TransitionListener;)Lccsanandroid/transition/Transition;

    .line 246
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Lccsanandroid/graphics/Rect;)V
    .locals 2
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "epicenter"    # Lccsanandroid/graphics/Rect;

    .line 304
    if-eqz p1, :cond_0

    .line 305
    move-object v0, p1

    check-cast v0, Lccsanandroid/transition/Transition;

    .line 306
    .local v0, "transition":Lccsanandroid/transition/Transition;
    new-instance v1, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$4;

    invoke-direct {v1, p0, p2}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$4;-><init>(Lccsanandroidx/fragment/app/FragmentTransitionCompat21;Lccsanandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lccsanandroid/transition/Transition;->setEpicenterCallback(Lccsanandroid/transition/Transition$EpicenterCallback;)V

    .line 316
    .end local v0    # "transition":Lccsanandroid/transition/Transition;
    :cond_0
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 76
    if-eqz p2, :cond_0

    .line 77
    move-object v0, p1

    check-cast v0, Lccsanandroid/transition/Transition;

    .line 78
    .local v0, "transition":Lccsanandroid/transition/Transition;
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 79
    .local v1, "epicenter":Lccsanandroid/graphics/Rect;
    invoke-virtual {p0, p2, v1}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->getBoundsOnScreen(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 81
    new-instance v2, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$1;

    invoke-direct {v2, p0, v1}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21$1;-><init>(Lccsanandroidx/fragment/app/FragmentTransitionCompat21;Lccsanandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lccsanandroid/transition/Transition;->setEpicenterCallback(Lccsanandroid/transition/Transition$EpicenterCallback;)V

    .line 88
    .end local v0    # "transition":Lccsanandroid/transition/Transition;
    .end local v1    # "epicenter":Lccsanandroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setSharedElementTargets(Ljava/lang/Object;Lccsanandroid/view/View;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "nonExistentView"    # Lccsanandroid/view/View;
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

    .line 61
    .local p3, "sharedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroid/transition/TransitionSet;

    .line 62
    .local v0, "transition":Lccsanandroid/transition/TransitionSet;
    invoke-virtual {v0}, Lccsanandroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 64
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 65
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 66
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    .line 67
    .local v4, "view":Lccsanandroid/view/View;
    invoke-static {v1, v4}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->bfsAddViewChildren(Ljava/util/List;Lccsanandroid/view/View;)V

    .line 65
    .end local v4    # "view":Lccsanandroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "i":I
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p0, v0, p3}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 72
    return-void
.end method

.method public swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "sharedElementTransitionObj"    # Ljava/lang/Object;
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

    .line 251
    .local p2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroid/transition/TransitionSet;

    .line 252
    .local v0, "sharedElementTransition":Lccsanandroid/transition/TransitionSet;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Lccsanandroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 254
    invoke-virtual {v0}, Lccsanandroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    invoke-virtual {p0, v0, p2, p3}, Lccsanandroidx/fragment/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 257
    :cond_0
    return-void
.end method

.method public wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "transition"    # Ljava/lang/Object;

    .line 50
    if-nez p1, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lccsanandroid/transition/TransitionSet;

    invoke-direct {v0}, Lccsanandroid/transition/TransitionSet;-><init>()V

    .line 54
    .local v0, "transitionSet":Lccsanandroid/transition/TransitionSet;
    move-object v1, p1

    check-cast v1, Lccsanandroid/transition/Transition;

    invoke-virtual {v0, v1}, Lccsanandroid/transition/TransitionSet;->addTransition(Lccsanandroid/transition/Transition;)Lccsanandroid/transition/TransitionSet;

    .line 55
    return-object v0
.end method
