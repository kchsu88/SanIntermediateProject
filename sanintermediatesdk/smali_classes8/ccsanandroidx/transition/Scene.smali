.class public Lccsanandroidx/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mContext:Lccsanandroid/content/Context;

.field private mEnterAction:Ljava/lang/Runnable;

.field private mExitAction:Ljava/lang/Runnable;

.field private mLayout:Lccsanandroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Lccsanandroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lccsanandroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/transition/Scene;->mLayoutId:I

    .line 90
    iput-object p1, p0, Lccsanandroidx/transition/Scene;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    .line 91
    return-void
.end method

.method private constructor <init>(Lccsanandroid/view/ViewGroup;ILccsanandroid/content/Context;)V
    .locals 1
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "layoutId"    # I
    .param p3, "context"    # Lccsanandroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/transition/Scene;->mLayoutId:I

    .line 109
    iput-object p3, p0, Lccsanandroidx/transition/Scene;->mContext:Lccsanandroid/content/Context;

    .line 110
    iput-object p1, p0, Lccsanandroidx/transition/Scene;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    .line 111
    iput p2, p0, Lccsanandroidx/transition/Scene;->mLayoutId:I

    .line 112
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "layout"    # Lccsanandroid/view/View;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/transition/Scene;->mLayoutId:I

    .line 125
    iput-object p1, p0, Lccsanandroidx/transition/Scene;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    .line 126
    iput-object p2, p0, Lccsanandroidx/transition/Scene;->mLayout:Lccsanandroid/view/View;

    .line 127
    return-void
.end method

.method public static getCurrentScene(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/Scene;
    .locals 1
    .param p0, "sceneRoot"    # Lccsanandroid/view/ViewGroup;

    .line 209
    sget v0, Lccsanandroidx/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Lccsanandroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/Scene;

    return-object v0
.end method

.method public static getSceneForLayout(Lccsanandroid/view/ViewGroup;ILccsanandroid/content/Context;)Lccsanandroidx/transition/Scene;
    .locals 3
    .param p0, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p1, "layoutId"    # I
    .param p2, "context"    # Lccsanandroid/content/Context;

    .line 63
    sget v0, Lccsanandroidx/transition/R$id;->transition_scene_layoutid_cache:I

    .line 64
    invoke-virtual {p0, v0}, Lccsanandroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/util/SparseArray;

    .line 65
    .local v0, "scenes":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/transition/Scene;>;"
    if-nez v0, :cond_0

    .line 66
    new-instance v1, Lccsanandroid/util/SparseArray;

    invoke-direct {v1}, Lccsanandroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 67
    sget v1, Lccsanandroidx/transition/R$id;->transition_scene_layoutid_cache:I

    invoke-virtual {p0, v1, v0}, Lccsanandroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 69
    :cond_0
    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/Scene;

    .line 70
    .local v1, "scene":Lccsanandroidx/transition/Scene;
    if-eqz v1, :cond_1

    .line 71
    return-object v1

    .line 73
    :cond_1
    new-instance v2, Lccsanandroidx/transition/Scene;

    invoke-direct {v2, p0, p1, p2}, Lccsanandroidx/transition/Scene;-><init>(Lccsanandroid/view/ViewGroup;ILccsanandroid/content/Context;)V

    move-object v1, v2

    .line 74
    invoke-virtual {v0, p1, v1}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    return-object v1
.end method

.method static setCurrentScene(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/Scene;)V
    .locals 1
    .param p0, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p1, "scene"    # Lccsanandroidx/transition/Scene;

    .line 196
    sget v0, Lccsanandroidx/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Lccsanandroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 197
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 168
    iget v0, p0, Lccsanandroidx/transition/Scene;->mLayoutId:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/transition/Scene;->mLayout:Lccsanandroid/view/View;

    if-eqz v0, :cond_2

    .line 170
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/transition/Scene;->getSceneRoot()Lccsanandroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    .line 172
    iget v0, p0, Lccsanandroidx/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_1

    .line 173
    iget-object v0, p0, Lccsanandroidx/transition/Scene;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lccsanandroidx/transition/Scene;->mLayoutId:I

    iget-object v2, p0, Lccsanandroidx/transition/Scene;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lccsanandroidx/transition/Scene;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    iget-object v1, p0, Lccsanandroidx/transition/Scene;->mLayout:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    .line 180
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsanandroidx/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 181
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 184
    :cond_3
    iget-object v0, p0, Lccsanandroidx/transition/Scene;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-static {v0, p0}, Lccsanandroidx/transition/Scene;->setCurrentScene(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/Scene;)V

    .line 185
    return-void
.end method

.method public exit()V
    .locals 1

    .line 149
    iget-object v0, p0, Lccsanandroidx/transition/Scene;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/transition/Scene;->getCurrentScene(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 150
    iget-object v0, p0, Lccsanandroidx/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 154
    :cond_0
    return-void
.end method

.method public getSceneRoot()Lccsanandroid/view/ViewGroup;
    .locals 1

    .line 138
    iget-object v0, p0, Lccsanandroidx/transition/Scene;->mSceneRoot:Lccsanandroid/view/ViewGroup;

    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .locals 1

    .line 259
    iget v0, p0, Lccsanandroidx/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 230
    iput-object p1, p0, Lccsanandroidx/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    .line 231
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 250
    iput-object p1, p0, Lccsanandroidx/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    .line 251
    return-void
.end method
