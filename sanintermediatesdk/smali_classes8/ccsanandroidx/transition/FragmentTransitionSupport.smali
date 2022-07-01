.class public Lccsanandroidx/transition/FragmentTransitionSupport;
.super Lccsanandroidx/fragment/app/FragmentTransitionImpl;
.source "FragmentTransitionSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;-><init>()V

    return-void
.end method

.method private static hasSimpleTarget(Lccsanandroidx/transition/Transition;)Z
    .locals 1
    .param p0, "transition"    # Lccsanandroidx/transition/Transition;

    .line 126
    invoke-virtual {p0}, Lccsanandroidx/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lccsanandroidx/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lccsanandroidx/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 126
    :goto_1
    return v0
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 283
    if-eqz p1, :cond_0

    .line 284
    move-object v0, p1

    check-cast v0, Lccsanandroidx/transition/Transition;

    .line 285
    .local v0, "transition":Lccsanandroidx/transition/Transition;
    invoke-virtual {v0, p2}, Lccsanandroidx/transition/Transition;->addTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/Transition;

    .line 287
    .end local v0    # "transition":Lccsanandroidx/transition/Transition;
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

    .line 102
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroidx/transition/Transition;

    .line 103
    .local v0, "transition":Lccsanandroidx/transition/Transition;
    if-nez v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    instance-of v1, v0, Lccsanandroidx/transition/TransitionSet;

    if-eqz v1, :cond_2

    .line 107
    move-object v1, v0

    check-cast v1, Lccsanandroidx/transition/TransitionSet;

    .line 108
    .local v1, "set":Lccsanandroidx/transition/TransitionSet;
    invoke-virtual {v1}, Lccsanandroidx/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 109
    .local v2, "numTransitions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 110
    invoke-virtual {v1, v3}, Lccsanandroidx/transition/TransitionSet;->getTransitionAt(I)Lccsanandroidx/transition/Transition;

    move-result-object v4

    .line 111
    .local v4, "child":Lccsanandroidx/transition/Transition;
    invoke-virtual {p0, v4, p2}, Lccsanandroidx/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 109
    .end local v4    # "child":Lccsanandroidx/transition/Transition;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "set":Lccsanandroidx/transition/TransitionSet;
    .end local v2    # "numTransitions":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 113
    :cond_2
    invoke-static {v0}, Lccsanandroidx/transition/FragmentTransitionSupport;->hasSimpleTarget(Lccsanandroidx/transition/Transition;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    invoke-virtual {v0}, Lccsanandroidx/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "targets":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    invoke-static {v1}, Lccsanandroidx/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 118
    .local v2, "numViews":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 119
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    invoke-virtual {v0, v4}, Lccsanandroidx/transition/Transition;->addTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/Transition;

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 113
    .end local v1    # "targets":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    .end local v2    # "numViews":I
    .end local v3    # "i":I
    :cond_3
    :goto_2
    nop

    .line 123
    :cond_4
    return-void
.end method

.method public beginDelayedTransition(Lccsanandroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "transition"    # Ljava/lang/Object;

    .line 213
    move-object v0, p2

    check-cast v0, Lccsanandroidx/transition/Transition;

    invoke-static {p1, v0}, Lccsanandroidx/transition/TransitionManager;->beginDelayedTransition(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/Transition;)V

    .line 214
    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 46
    instance-of v0, p1, Lccsanandroidx/transition/Transition;

    return v0
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "transition"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "copy":Lccsanandroidx/transition/Transition;
    if-eqz p1, :cond_0

    .line 53
    move-object v1, p1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v1}, Lccsanandroidx/transition/Transition;->clone()Lccsanandroidx/transition/Transition;

    move-result-object v0

    .line 55
    :cond_0
    return-object v0
.end method

.method public mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "exitTransitionObj"    # Ljava/lang/Object;
    .param p2, "enterTransitionObj"    # Ljava/lang/Object;
    .param p3, "sharedElementTransitionObj"    # Ljava/lang/Object;

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "staggered":Lccsanandroidx/transition/Transition;
    move-object v1, p1

    check-cast v1, Lccsanandroidx/transition/Transition;

    .line 187
    .local v1, "exitTransition":Lccsanandroidx/transition/Transition;
    move-object v2, p2

    check-cast v2, Lccsanandroidx/transition/Transition;

    .line 188
    .local v2, "enterTransition":Lccsanandroidx/transition/Transition;
    move-object v3, p3

    check-cast v3, Lccsanandroidx/transition/Transition;

    .line 189
    .local v3, "sharedElementTransition":Lccsanandroidx/transition/Transition;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 190
    new-instance v4, Lccsanandroidx/transition/TransitionSet;

    invoke-direct {v4}, Lccsanandroidx/transition/TransitionSet;-><init>()V

    .line 191
    invoke-virtual {v4, v1}, Lccsanandroidx/transition/TransitionSet;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    move-result-object v4

    .line 192
    invoke-virtual {v4, v2}, Lccsanandroidx/transition/TransitionSet;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    move-result-object v4

    const/4 v5, 0x1

    .line 193
    invoke-virtual {v4, v5}, Lccsanandroidx/transition/TransitionSet;->setOrdering(I)Lccsanandroidx/transition/TransitionSet;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_0
    if-eqz v1, :cond_1

    .line 195
    move-object v0, v1

    goto :goto_0

    .line 196
    :cond_1
    if-eqz v2, :cond_2

    .line 197
    move-object v0, v2

    .line 199
    :cond_2
    :goto_0
    if-eqz v3, :cond_4

    .line 200
    new-instance v4, Lccsanandroidx/transition/TransitionSet;

    invoke-direct {v4}, Lccsanandroidx/transition/TransitionSet;-><init>()V

    .line 201
    .local v4, "together":Lccsanandroidx/transition/TransitionSet;
    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {v4, v0}, Lccsanandroidx/transition/TransitionSet;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    .line 204
    :cond_3
    invoke-virtual {v4, v3}, Lccsanandroidx/transition/TransitionSet;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    .line 205
    return-object v4

    .line 207
    .end local v4    # "together":Lccsanandroidx/transition/TransitionSet;
    :cond_4
    return-object v0
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "transition1"    # Ljava/lang/Object;
    .param p2, "transition2"    # Ljava/lang/Object;
    .param p3, "transition3"    # Ljava/lang/Object;

    .line 134
    new-instance v0, Lccsanandroidx/transition/TransitionSet;

    invoke-direct {v0}, Lccsanandroidx/transition/TransitionSet;-><init>()V

    .line 135
    .local v0, "transitionSet":Lccsanandroidx/transition/TransitionSet;
    if-eqz p1, :cond_0

    .line 136
    move-object v1, p1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v0, v1}, Lccsanandroidx/transition/TransitionSet;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    .line 138
    :cond_0
    if-eqz p2, :cond_1

    .line 139
    move-object v1, p2

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v0, v1}, Lccsanandroidx/transition/TransitionSet;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    .line 141
    :cond_1
    if-eqz p3, :cond_2

    .line 142
    move-object v1, p3

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v0, v1}, Lccsanandroidx/transition/TransitionSet;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    .line 144
    :cond_2
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 291
    if-eqz p1, :cond_0

    .line 292
    move-object v0, p1

    check-cast v0, Lccsanandroidx/transition/Transition;

    .line 293
    .local v0, "transition":Lccsanandroidx/transition/Transition;
    invoke-virtual {v0, p2}, Lccsanandroidx/transition/Transition;->removeTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/Transition;

    .line 295
    .end local v0    # "transition":Lccsanandroidx/transition/Transition;
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

    .line 257
    .local p2, "oldTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p3, "newTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroidx/transition/Transition;

    .line 258
    .local v0, "transition":Lccsanandroidx/transition/Transition;
    instance-of v1, v0, Lccsanandroidx/transition/TransitionSet;

    if-eqz v1, :cond_1

    .line 259
    move-object v1, v0

    check-cast v1, Lccsanandroidx/transition/TransitionSet;

    .line 260
    .local v1, "set":Lccsanandroidx/transition/TransitionSet;
    invoke-virtual {v1}, Lccsanandroidx/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 261
    .local v2, "numTransitions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 262
    invoke-virtual {v1, v3}, Lccsanandroidx/transition/TransitionSet;->getTransitionAt(I)Lccsanandroidx/transition/Transition;

    move-result-object v4

    .line 263
    .local v4, "child":Lccsanandroidx/transition/Transition;
    invoke-virtual {p0, v4, p2, p3}, Lccsanandroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 261
    .end local v4    # "child":Lccsanandroidx/transition/Transition;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "set":Lccsanandroidx/transition/TransitionSet;
    .end local v2    # "numTransitions":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_4

    .line 265
    :cond_1
    invoke-static {v0}, Lccsanandroidx/transition/FragmentTransitionSupport;->hasSimpleTarget(Lccsanandroidx/transition/Transition;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 266
    invoke-virtual {v0}, Lccsanandroidx/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 267
    .local v1, "targets":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 268
    invoke-interface {v1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 270
    if-nez p3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 271
    .local v2, "targetCount":I
    :goto_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 272
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    invoke-virtual {v0, v4}, Lccsanandroidx/transition/Transition;->addTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/Transition;

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 274
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_3
    if-ltz v3, :cond_5

    .line 275
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    invoke-virtual {v0, v4}, Lccsanandroidx/transition/Transition;->removeTarget(Lccsanandroid/view/View;)Lccsanandroidx/transition/Transition;

    .line 274
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 265
    .end local v1    # "targets":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    .end local v2    # "targetCount":I
    .end local v3    # "i":I
    :cond_4
    :goto_4
    nop

    .line 279
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

    .line 150
    .local p3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroidx/transition/Transition;

    .line 151
    .local v0, "exitTransition":Lccsanandroidx/transition/Transition;
    new-instance v1, Lccsanandroidx/transition/FragmentTransitionSupport$2;

    invoke-direct {v1, p0, p2, p3}, Lccsanandroidx/transition/FragmentTransitionSupport$2;-><init>(Lccsanandroidx/transition/FragmentTransitionSupport;Lccsanandroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/transition/Transition;->addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 178
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

    .line 221
    .local p3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroidx/transition/Transition;

    .line 222
    .local v0, "overallTransition":Lccsanandroidx/transition/Transition;
    new-instance v9, Lccsanandroidx/transition/FragmentTransitionSupport$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lccsanandroidx/transition/FragmentTransitionSupport$3;-><init>(Lccsanandroidx/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lccsanandroidx/transition/Transition;->addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 241
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Lccsanandroid/graphics/Rect;)V
    .locals 2
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "epicenter"    # Lccsanandroid/graphics/Rect;

    .line 299
    if-eqz p1, :cond_0

    .line 300
    move-object v0, p1

    check-cast v0, Lccsanandroidx/transition/Transition;

    .line 301
    .local v0, "transition":Lccsanandroidx/transition/Transition;
    new-instance v1, Lccsanandroidx/transition/FragmentTransitionSupport$4;

    invoke-direct {v1, p0, p2}, Lccsanandroidx/transition/FragmentTransitionSupport$4;-><init>(Lccsanandroidx/transition/FragmentTransitionSupport;Lccsanandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/transition/Transition;->setEpicenterCallback(Lccsanandroidx/transition/Transition$EpicenterCallback;)V

    .line 311
    .end local v0    # "transition":Lccsanandroidx/transition/Transition;
    :cond_0
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 86
    if-eqz p2, :cond_0

    .line 87
    move-object v0, p1

    check-cast v0, Lccsanandroidx/transition/Transition;

    .line 88
    .local v0, "transition":Lccsanandroidx/transition/Transition;
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 89
    .local v1, "epicenter":Lccsanandroid/graphics/Rect;
    invoke-virtual {p0, p2, v1}, Lccsanandroidx/transition/FragmentTransitionSupport;->getBoundsOnScreen(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 91
    new-instance v2, Lccsanandroidx/transition/FragmentTransitionSupport$1;

    invoke-direct {v2, p0, v1}, Lccsanandroidx/transition/FragmentTransitionSupport$1;-><init>(Lccsanandroidx/transition/FragmentTransitionSupport;Lccsanandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lccsanandroidx/transition/Transition;->setEpicenterCallback(Lccsanandroidx/transition/Transition$EpicenterCallback;)V

    .line 98
    .end local v0    # "transition":Lccsanandroidx/transition/Transition;
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

    .line 71
    .local p3, "sharedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    .line 72
    .local v0, "transition":Lccsanandroidx/transition/TransitionSet;
    invoke-virtual {v0}, Lccsanandroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 73
    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 74
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 75
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 76
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    .line 77
    .local v4, "view":Lccsanandroid/view/View;
    invoke-static {v1, v4}, Lccsanandroidx/transition/FragmentTransitionSupport;->bfsAddViewChildren(Ljava/util/List;Lccsanandroid/view/View;)V

    .line 75
    .end local v4    # "view":Lccsanandroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "i":I
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p0, v0, p3}, Lccsanandroidx/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 82
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

    .line 246
    .local p2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Lccsanandroidx/transition/TransitionSet;

    .line 247
    .local v0, "sharedElementTransition":Lccsanandroidx/transition/TransitionSet;
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lccsanandroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 249
    invoke-virtual {v0}, Lccsanandroidx/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    invoke-virtual {p0, v0, p2, p3}, Lccsanandroidx/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 252
    :cond_0
    return-void
.end method

.method public wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "transition"    # Ljava/lang/Object;

    .line 60
    if-nez p1, :cond_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Lccsanandroidx/transition/TransitionSet;

    invoke-direct {v0}, Lccsanandroidx/transition/TransitionSet;-><init>()V

    .line 64
    .local v0, "transitionSet":Lccsanandroidx/transition/TransitionSet;
    move-object v1, p1

    check-cast v1, Lccsanandroidx/transition/Transition;

    invoke-virtual {v0, v1}, Lccsanandroidx/transition/TransitionSet;->addTransition(Lccsanandroidx/transition/Transition;)Lccsanandroidx/transition/TransitionSet;

    .line 65
    return-object v0
.end method
