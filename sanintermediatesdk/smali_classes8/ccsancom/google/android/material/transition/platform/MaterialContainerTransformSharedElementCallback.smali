.class public Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;
.super Lccsanandroid/app/SharedElementCallback;
.source "MaterialContainerTransformSharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;,
        Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;
    }
.end annotation


# static fields
.field private static capturedSharedElement:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entering:Z

.field private returnEndBounds:Lccsanandroid/graphics/Rect;

.field private shapeProvider:Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

.field private sharedElementReenterTransitionEnabled:Z

.field private transparentWindowBackgroundEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lccsanandroid/app/SharedElementCallback;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    .line 57
    iput-boolean v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    .line 60
    new-instance v0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;

    invoke-direct {v0}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    return-void
.end method

.method static synthetic access$000(Lccsanandroid/view/Window;)V
    .locals 0
    .param p0, "x0"    # Lccsanandroid/view/Window;

    .line 52
    invoke-static {p0}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->removeWindowBackground(Lccsanandroid/view/Window;)V

    return-void
.end method

.method static synthetic access$100(Lccsanandroid/view/Window;)V
    .locals 0
    .param p0, "x0"    # Lccsanandroid/view/Window;

    .line 52
    invoke-static {p0}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->restoreWindowBackground(Lccsanandroid/view/Window;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 52
    sget-object v0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;

    .line 52
    sput-object p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private static removeWindowBackground(Lccsanandroid/view/Window;)V
    .locals 3
    .param p0, "window"    # Lccsanandroid/view/Window;

    .line 301
    nop

    .line 302
    invoke-virtual {p0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lccsanandroidx/core/graphics/BlendModeCompat;->CLEAR:Lccsanandroidx/core/graphics/BlendModeCompat;

    .line 306
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lccsanandroidx/core/graphics/BlendModeColorFilterCompat;->createBlendModeColorFilterCompat(ILccsanandroidx/core/graphics/BlendModeCompat;)Lccsanandroid/graphics/ColorFilter;

    move-result-object v1

    .line 305
    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 308
    return-void
.end method

.method private static restoreWindowBackground(Lccsanandroid/view/Window;)V
    .locals 1
    .param p0, "window"    # Lccsanandroid/view/Window;

    .line 316
    invoke-virtual {p0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 317
    return-void
.end method

.method private setUpEnterTransform(Lccsanandroid/view/Window;)V
    .locals 3
    .param p1, "window"    # Lccsanandroid/view/Window;

    .line 231
    invoke-virtual {p1}, Lccsanandroid/view/Window;->getSharedElementEnterTransition()Lccsanandroid/transition/Transition;

    move-result-object v0

    .line 232
    .local v0, "transition":Lccsanandroid/transition/Transition;
    instance-of v1, v0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;

    if-eqz v1, :cond_1

    .line 233
    move-object v1, v0

    check-cast v1, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 234
    .local v1, "transform":Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;
    iget-boolean v2, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    if-nez v2, :cond_0

    .line 235
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lccsanandroid/view/Window;->setSharedElementReenterTransition(Lccsanandroid/transition/Transition;)V

    .line 237
    :cond_0
    iget-boolean v2, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    if-eqz v2, :cond_1

    .line 238
    invoke-static {p1, v1}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->updateBackgroundFadeDuration(Lccsanandroid/view/Window;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;)V

    .line 239
    new-instance v2, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;

    invoke-direct {v2, p0, p1}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;-><init>(Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Lccsanandroid/view/Window;)V

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;->addListener(Lccsanandroid/transition/Transition$TransitionListener;)Lccsanandroid/transition/Transition;

    .line 253
    .end local v1    # "transform":Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;
    :cond_1
    return-void
.end method

.method private setUpReturnTransform(Lccsanandroid/app/Activity;Lccsanandroid/view/Window;)V
    .locals 3
    .param p1, "activity"    # Lccsanandroid/app/Activity;
    .param p2, "window"    # Lccsanandroid/view/Window;

    .line 256
    invoke-virtual {p2}, Lccsanandroid/view/Window;->getSharedElementReturnTransition()Lccsanandroid/transition/Transition;

    move-result-object v0

    .line 257
    .local v0, "transition":Lccsanandroid/transition/Transition;
    instance-of v1, v0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;

    if-eqz v1, :cond_0

    .line 258
    move-object v1, v0

    check-cast v1, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 259
    .local v1, "transform":Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;->setHoldAtEndEnabled(Z)V

    .line 260
    new-instance v2, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;

    invoke-direct {v2, p0, p1}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;-><init>(Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Lccsanandroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;->addListener(Lccsanandroid/transition/Transition$TransitionListener;)Lccsanandroid/transition/Transition;

    .line 278
    iget-boolean v2, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    if-eqz v2, :cond_0

    .line 279
    invoke-static {p2, v1}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->updateBackgroundFadeDuration(Lccsanandroid/view/Window;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;)V

    .line 280
    new-instance v2, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;

    invoke-direct {v2, p0, p2}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;-><init>(Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Lccsanandroid/view/Window;)V

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;->addListener(Lccsanandroid/transition/Transition$TransitionListener;)Lccsanandroid/transition/Transition;

    .line 289
    .end local v1    # "transform":Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;
    :cond_0
    return-void
.end method

.method private static updateBackgroundFadeDuration(Lccsanandroid/view/Window;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;)V
    .locals 2
    .param p0, "window"    # Lccsanandroid/view/Window;
    .param p1, "transform"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 325
    invoke-virtual {p1}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lccsanandroid/view/Window;->setTransitionBackgroundFadeDuration(J)V

    .line 326
    return-void
.end method


# virtual methods
.method public getShapeProvider()Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;
    .locals 1

    .line 172
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    return-object v0
.end method

.method public isSharedElementReenterTransitionEnabled()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    return v0
.end method

.method public isTransparentWindowBackgroundEnabled()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    return v0
.end method

.method public onCaptureSharedElementSnapshot(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/RectF;)Lccsanandroid/os/Parcelable;
    .locals 1
    .param p1, "sharedElement"    # Lccsanandroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Lccsanandroid/graphics/Matrix;
    .param p3, "screenBounds"    # Lccsanandroid/graphics/RectF;

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    .line 89
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/RectF;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Lccsanandroid/content/Context;Lccsanandroid/os/Parcelable;)Lccsanandroid/view/View;
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "snapshot"    # Lccsanandroid/os/Parcelable;

    .line 95
    invoke-super {p0, p1, p2}, Lccsanandroid/app/SharedElementCallback;->onCreateSnapshotView(Lccsanandroid/content/Context;Lccsanandroid/os/Parcelable;)Lccsanandroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "snapshotView":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    sget-object v1, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    .line 98
    .local v1, "sharedElement":Lccsanandroid/view/View;
    if-eqz v1, :cond_0

    .line 99
    iget-object v2, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    invoke-interface {v2, v1}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;->provideShape(Lccsanandroid/view/View;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v2

    .line 100
    .local v2, "shapeAppearanceModel":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    if-eqz v2, :cond_0

    .line 102
    sget v3, Lccsancom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {v0, v3, v2}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 106
    .end local v1    # "sharedElement":Lccsanandroid/view/View;
    .end local v2    # "shapeAppearanceModel":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    :cond_0
    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lccsanandroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 114
    .local v0, "sharedElement":Lccsanandroid/view/View;
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/material/internal/ContextUtils;->getActivity(Lccsanandroid/content/Context;)Lccsanandroid/app/Activity;

    move-result-object v1

    .line 116
    .local v1, "activity":Lccsanandroid/app/Activity;
    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v1}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v2

    .line 118
    .local v2, "window":Lccsanandroid/view/Window;
    iget-boolean v3, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    if-eqz v3, :cond_0

    .line 119
    invoke-direct {p0, v2}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->setUpEnterTransform(Lccsanandroid/view/Window;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0, v1, v2}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->setUpReturnTransform(Lccsanandroid/app/Activity;Lccsanandroid/view/Window;)V

    .line 126
    .end local v0    # "sharedElement":Lccsanandroid/view/View;
    .end local v1    # "activity":Lccsanandroid/app/Activity;
    .end local v2    # "window":Lccsanandroid/view/Window;
    :cond_1
    :goto_0
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 157
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    sget v2, Lccsancom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    sget v2, Lccsancom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 162
    :cond_0
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    invoke-static {v0}, Lccsancom/google/android/material/transition/platform/TransitionUtils;->getRelativeBoundsRect(Lccsanandroid/view/View;)Lccsanandroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Lccsanandroid/graphics/Rect;

    .line 166
    :cond_1
    iput-boolean v1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    .line 167
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    sget v2, Lccsancom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 139
    :cond_0
    iget-boolean v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Lccsanandroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 142
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 143
    .local v0, "sharedElement":Lccsanandroid/view/View;
    iget-object v1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 144
    .local v1, "widthSpec":I
    iget-object v3, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {v3}, Lccsanandroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 145
    .local v2, "heightSpec":I
    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/View;->measure(II)V

    .line 146
    iget-object v3, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Lccsanandroid/graphics/Rect;

    iget v3, v3, Lccsanandroid/graphics/Rect;->left:I

    iget-object v4, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Lccsanandroid/graphics/Rect;

    iget v4, v4, Lccsanandroid/graphics/Rect;->top:I

    iget-object v5, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->right:I

    iget-object v6, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Lccsanandroid/graphics/Rect;

    iget v6, v6, Lccsanandroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lccsanandroid/view/View;->layout(IIII)V

    .line 149
    .end local v0    # "sharedElement":Lccsanandroid/view/View;
    .end local v1    # "widthSpec":I
    .end local v2    # "heightSpec":I
    :cond_1
    return-void
.end method

.method public setShapeProvider(Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;)V
    .locals 0
    .param p1, "shapeProvider"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    .line 183
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    .line 184
    return-void
.end method

.method public setSharedElementReenterTransitionEnabled(Z)V
    .locals 0
    .param p1, "sharedElementReenterTransitionEnabled"    # Z

    .line 227
    iput-boolean p1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    .line 228
    return-void
.end method

.method public setTransparentWindowBackgroundEnabled(Z)V
    .locals 0
    .param p1, "transparentWindowBackgroundEnabled"    # Z

    .line 208
    iput-boolean p1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    .line 209
    return-void
.end method
