.class public Lccsanandroidx/transition/ChangeBounds;
.super Lccsanandroidx/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroidx/transition/ChangeBounds$ViewBounds;",
            "Lccsanandroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/graphics/drawable/Drawable;",
            "Lccsanandroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_PROPERTY:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Lccsanandroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Property<",
            "Lccsanandroidx/transition/ChangeBounds$ViewBounds;",
            "Lccsanandroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Lccsanandroidx/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mResizeClip:Z

.field private mTempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:clip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Lccsanandroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 69
    new-instance v0, Lccsanandroidx/transition/ChangeBounds$1;

    const-class v1, Lccsanandroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Lccsanandroidx/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsanandroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Lccsanandroid/util/Property;

    .line 87
    new-instance v0, Lccsanandroidx/transition/ChangeBounds$2;

    const-class v1, Lccsanandroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Lccsanandroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsanandroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Lccsanandroid/util/Property;

    .line 100
    new-instance v0, Lccsanandroidx/transition/ChangeBounds$3;

    const-class v1, Lccsanandroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Lccsanandroidx/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsanandroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Lccsanandroid/util/Property;

    .line 113
    new-instance v0, Lccsanandroidx/transition/ChangeBounds$4;

    const-class v1, Lccsanandroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Lccsanandroidx/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsanandroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Lccsanandroid/util/Property;

    .line 130
    new-instance v0, Lccsanandroidx/transition/ChangeBounds$5;

    const-class v1, Lccsanandroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Lccsanandroidx/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsanandroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Lccsanandroid/util/Property;

    .line 147
    new-instance v0, Lccsanandroidx/transition/ChangeBounds$6;

    const-class v1, Lccsanandroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Lccsanandroidx/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lccsanandroidx/transition/ChangeBounds;->POSITION_PROPERTY:Lccsanandroid/util/Property;

    .line 168
    new-instance v0, Lccsanandroidx/transition/RectEvaluator;

    invoke-direct {v0}, Lccsanandroidx/transition/RectEvaluator;-><init>()V

    sput-object v0, Lccsanandroidx/transition/ChangeBounds;->sRectEvaluator:Lccsanandroidx/transition/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Lccsanandroidx/transition/Transition;-><init>()V

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lccsanandroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 166
    iput-boolean v0, p0, Lccsanandroidx/transition/ChangeBounds;->mReparent:Z

    .line 171
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 176
    invoke-direct {p0, p1, p2}, Lccsanandroidx/transition/Transition;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lccsanandroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 166
    iput-boolean v0, p0, Lccsanandroidx/transition/ChangeBounds;->mReparent:Z

    .line 178
    sget-object v1, Lccsanandroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    invoke-virtual {p1, p2, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 179
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Lccsanandroid/content/res/XmlResourceParser;

    const-string v3, "resizeClip"

    invoke-static {v1, v2, v3, v0, v0}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v0

    .line 181
    .local v0, "resizeClip":Z
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-virtual {p0, v0}, Lccsanandroidx/transition/ChangeBounds;->setResizeClip(Z)V

    .line 183
    return-void
.end method

.method private captureValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 7
    .param p1, "values"    # Lccsanandroidx/transition/TransitionValues;

    .line 220
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    .line 222
    .local v0, "view":Lccsanandroid/view/View;
    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->isLaidOut(Lccsanandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    :cond_0
    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Lccsanandroid/graphics/Rect;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Lccsanandroid/view/View;->getTop()I

    move-result v4

    .line 224
    invoke-virtual {v0}, Lccsanandroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Lccsanandroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 223
    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    invoke-virtual {v2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-boolean v1, p0, Lccsanandroidx/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    iget-object v2, p0, Lccsanandroidx/transition/ChangeBounds;->mTempLocation:[I

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->getLocationInWindow([I)V

    .line 228
    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Lccsanandroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Lccsanandroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_1
    iget-boolean v1, p0, Lccsanandroidx/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->getClipBounds(Lccsanandroid/view/View;)Lccsanandroid/graphics/Rect;

    move-result-object v2

    const-string v3, "android:changeBounds:clip"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_2
    return-void
.end method

.method private parentMatches(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 5
    .param p1, "startParent"    # Lccsanandroid/view/View;
    .param p2, "endParent"    # Lccsanandroid/view/View;

    .line 248
    const/4 v0, 0x1

    .line 249
    .local v0, "parentMatches":Z
    iget-boolean v1, p0, Lccsanandroidx/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_3

    .line 250
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lccsanandroidx/transition/ChangeBounds;->getMatchedTransitionValues(Lccsanandroid/view/View;Z)Lccsanandroidx/transition/TransitionValues;

    move-result-object v2

    .line 251
    .local v2, "endValues":Lccsanandroidx/transition/TransitionValues;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 252
    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    goto :goto_2

    .line 254
    :cond_1
    iget-object v4, v2, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    if-ne p2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    .line 257
    .end local v2    # "endValues":Lccsanandroidx/transition/TransitionValues;
    :cond_3
    :goto_2
    return v0
.end method


# virtual methods
.method public captureEndValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 244
    invoke-direct {p0, p1}, Lccsanandroidx/transition/ChangeBounds;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 245
    return-void
.end method

.method public captureStartValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 239
    invoke-direct {p0, p1}, Lccsanandroidx/transition/ChangeBounds;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 240
    return-void
.end method

.method public createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 38
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p3, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 264
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    if-eqz v9, :cond_1b

    if-nez v10, :cond_0

    move-object/from16 v15, p1

    move-object v12, v10

    const/4 v0, 0x0

    move-object v10, v8

    goto/16 :goto_a

    .line 267
    :cond_0
    iget-object v11, v9, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 268
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v12, v10, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 269
    .local v12, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "android:changeBounds:parent"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lccsanandroid/view/ViewGroup;

    .line 270
    .local v13, "startParent":Lccsanandroid/view/ViewGroup;
    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lccsanandroid/view/ViewGroup;

    .line 271
    .local v14, "endParent":Lccsanandroid/view/ViewGroup;
    if-eqz v13, :cond_1a

    if-nez v14, :cond_1

    move-object/from16 v15, p1

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object v12, v10

    move-object v10, v8

    goto/16 :goto_9

    .line 274
    :cond_1
    iget-object v15, v10, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    .line 275
    .local v15, "view":Lccsanandroid/view/View;
    invoke-direct {v8, v13, v14}, Lccsanandroidx/transition/ChangeBounds;->parentMatches(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 276
    iget-object v1, v9, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lccsanandroid/graphics/Rect;

    .line 277
    .local v6, "startBounds":Lccsanandroid/graphics/Rect;
    iget-object v1, v10, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lccsanandroid/graphics/Rect;

    .line 278
    .local v5, "endBounds":Lccsanandroid/graphics/Rect;
    iget v4, v6, Lccsanandroid/graphics/Rect;->left:I

    .line 279
    .local v4, "startLeft":I
    iget v1, v5, Lccsanandroid/graphics/Rect;->left:I

    .line 280
    .local v1, "endLeft":I
    iget v3, v6, Lccsanandroid/graphics/Rect;->top:I

    .line 281
    .local v3, "startTop":I
    iget v7, v5, Lccsanandroid/graphics/Rect;->top:I

    .line 282
    .local v7, "endTop":I
    iget v2, v6, Lccsanandroid/graphics/Rect;->right:I

    .line 283
    .local v2, "startRight":I
    move-object/from16 v18, v11

    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v18, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v11, v5, Lccsanandroid/graphics/Rect;->right:I

    .line 284
    .local v11, "endRight":I
    move-object/from16 v19, v12

    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v19, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v12, v6, Lccsanandroid/graphics/Rect;->bottom:I

    .line 285
    .local v12, "startBottom":I
    move-object/from16 v20, v13

    .end local v13    # "startParent":Lccsanandroid/view/ViewGroup;
    .local v20, "startParent":Lccsanandroid/view/ViewGroup;
    iget v13, v5, Lccsanandroid/graphics/Rect;->bottom:I

    .line 286
    .local v13, "endBottom":I
    move-object/from16 v21, v14

    .end local v14    # "endParent":Lccsanandroid/view/ViewGroup;
    .local v21, "endParent":Lccsanandroid/view/ViewGroup;
    sub-int v14, v2, v4

    .line 287
    .local v14, "startWidth":I
    move-object/from16 v22, v6

    .end local v6    # "startBounds":Lccsanandroid/graphics/Rect;
    .local v22, "startBounds":Lccsanandroid/graphics/Rect;
    sub-int v6, v12, v3

    .line 288
    .local v6, "startHeight":I
    move-object/from16 v23, v5

    .end local v5    # "endBounds":Lccsanandroid/graphics/Rect;
    .local v23, "endBounds":Lccsanandroid/graphics/Rect;
    sub-int v5, v11, v1

    .line 289
    .local v5, "endWidth":I
    sub-int v0, v13, v7

    .line 290
    .local v0, "endHeight":I
    move-object/from16 v25, v15

    .end local v15    # "view":Lccsanandroid/view/View;
    .local v25, "view":Lccsanandroid/view/View;
    iget-object v15, v9, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lccsanandroid/graphics/Rect;

    .line 291
    .local v15, "startClip":Lccsanandroid/graphics/Rect;
    iget-object v8, v10, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsanandroid/graphics/Rect;

    .line 292
    .local v8, "endClip":Lccsanandroid/graphics/Rect;
    const/4 v9, 0x0

    .line 293
    .local v9, "numChanges":I
    if-eqz v14, :cond_2

    if-nez v6, :cond_3

    :cond_2
    if-eqz v5, :cond_7

    if-eqz v0, :cond_7

    .line 294
    :cond_3
    if-ne v4, v1, :cond_4

    if-eq v3, v7, :cond_5

    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 295
    :cond_5
    if-ne v2, v11, :cond_6

    if-eq v12, v13, :cond_7

    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 297
    :cond_7
    if-eqz v15, :cond_8

    invoke-virtual {v15, v8}, Lccsanandroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    :cond_8
    if-nez v15, :cond_a

    if-eqz v8, :cond_a

    .line 299
    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 301
    :cond_a
    if-lez v9, :cond_16

    .line 303
    move-object/from16 v10, p0

    move-object/from16 v26, v15

    .end local v15    # "startClip":Lccsanandroid/graphics/Rect;
    .local v26, "startClip":Lccsanandroid/graphics/Rect;
    iget-boolean v15, v10, Lccsanandroidx/transition/ChangeBounds;->mResizeClip:Z

    move-object/from16 v27, v8

    .end local v8    # "endClip":Lccsanandroid/graphics/Rect;
    .local v27, "endClip":Lccsanandroid/graphics/Rect;
    const/4 v8, 0x2

    if-nez v15, :cond_f

    .line 304
    move-object/from16 v15, v25

    .end local v25    # "view":Lccsanandroid/view/View;
    .local v15, "view":Lccsanandroid/view/View;
    invoke-static {v15, v4, v3, v2, v12}, Lccsanandroidx/transition/ViewUtils;->setLeftTopRightBottom(Lccsanandroid/view/View;IIII)V

    .line 306
    if-ne v9, v8, :cond_c

    .line 307
    if-ne v14, v5, :cond_b

    if-ne v6, v0, :cond_b

    .line 308
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/transition/ChangeBounds;->getPathMotion()Lccsanandroidx/transition/PathMotion;

    move-result-object v8

    move/from16 v25, v9

    .end local v9    # "numChanges":I
    .local v25, "numChanges":I
    int-to-float v9, v4

    move/from16 v28, v0

    .end local v0    # "endHeight":I
    .local v28, "endHeight":I
    int-to-float v0, v3

    move/from16 v29, v6

    .end local v6    # "startHeight":I
    .local v29, "startHeight":I
    int-to-float v6, v1

    move/from16 v30, v5

    .end local v5    # "endWidth":I
    .local v30, "endWidth":I
    int-to-float v5, v7

    invoke-virtual {v8, v9, v0, v6, v5}, Lccsanandroidx/transition/PathMotion;->getPath(FFFF)Lccsanandroid/graphics/Path;

    move-result-object v0

    .line 310
    .local v0, "topLeftPath":Lccsanandroid/graphics/Path;
    sget-object v5, Lccsanandroidx/transition/ChangeBounds;->POSITION_PROPERTY:Lccsanandroid/util/Property;

    invoke-static {v15, v5, v0}, Lccsanandroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    .line 312
    .local v0, "anim":Lccsanandroid/animation/Animator;
    move/from16 v33, v1

    move/from16 v17, v2

    move/from16 v16, v7

    move/from16 v37, v11

    move/from16 v34, v14

    move-object v8, v15

    move-object/from16 v15, v26

    move/from16 v32, v28

    move/from16 v36, v29

    move/from16 v35, v30

    const/4 v11, 0x1

    move/from16 v30, v3

    move/from16 v28, v4

    move/from16 v29, v12

    goto/16 :goto_6

    .line 307
    .end local v25    # "numChanges":I
    .end local v28    # "endHeight":I
    .end local v29    # "startHeight":I
    .end local v30    # "endWidth":I
    .local v0, "endHeight":I
    .restart local v5    # "endWidth":I
    .restart local v6    # "startHeight":I
    .restart local v9    # "numChanges":I
    :cond_b
    move/from16 v28, v0

    move/from16 v30, v5

    move/from16 v29, v6

    move/from16 v25, v9

    .line 313
    .end local v0    # "endHeight":I
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v9    # "numChanges":I
    .restart local v25    # "numChanges":I
    .restart local v28    # "endHeight":I
    .restart local v29    # "startHeight":I
    .restart local v30    # "endWidth":I
    new-instance v0, Lccsanandroidx/transition/ChangeBounds$ViewBounds;

    invoke-direct {v0, v15}, Lccsanandroidx/transition/ChangeBounds$ViewBounds;-><init>(Lccsanandroid/view/View;)V

    .line 314
    .local v0, "viewBounds":Lccsanandroidx/transition/ChangeBounds$ViewBounds;
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/transition/ChangeBounds;->getPathMotion()Lccsanandroidx/transition/PathMotion;

    move-result-object v5

    int-to-float v6, v4

    int-to-float v9, v3

    int-to-float v8, v1

    move/from16 v31, v14

    .end local v14    # "startWidth":I
    .local v31, "startWidth":I
    int-to-float v14, v7

    invoke-virtual {v5, v6, v9, v8, v14}, Lccsanandroidx/transition/PathMotion;->getPath(FFFF)Lccsanandroid/graphics/Path;

    move-result-object v5

    .line 316
    .local v5, "topLeftPath":Lccsanandroid/graphics/Path;
    sget-object v6, Lccsanandroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Lccsanandroid/util/Property;

    .line 317
    invoke-static {v0, v6, v5}, Lccsanandroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v6

    .line 319
    .local v6, "topLeftAnimator":Lccsanandroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/transition/ChangeBounds;->getPathMotion()Lccsanandroidx/transition/PathMotion;

    move-result-object v8

    int-to-float v9, v2

    int-to-float v14, v12

    move-object/from16 v32, v5

    .end local v5    # "topLeftPath":Lccsanandroid/graphics/Path;
    .local v32, "topLeftPath":Lccsanandroid/graphics/Path;
    int-to-float v5, v11

    move-object/from16 v33, v15

    .end local v15    # "view":Lccsanandroid/view/View;
    .local v33, "view":Lccsanandroid/view/View;
    int-to-float v15, v13

    invoke-virtual {v8, v9, v14, v5, v15}, Lccsanandroidx/transition/PathMotion;->getPath(FFFF)Lccsanandroid/graphics/Path;

    move-result-object v5

    .line 321
    .local v5, "bottomRightPath":Lccsanandroid/graphics/Path;
    sget-object v8, Lccsanandroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Lccsanandroid/util/Property;

    invoke-static {v0, v8, v5}, Lccsanandroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v8

    .line 323
    .local v8, "bottomRightAnimator":Lccsanandroid/animation/ObjectAnimator;
    new-instance v9, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v9}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 324
    .local v9, "set":Lccsanandroid/animation/AnimatorSet;
    const/4 v14, 0x2

    new-array v14, v14, [Lccsanandroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-virtual {v9, v14}, Lccsanandroid/animation/AnimatorSet;->playTogether([Lccsanandroid/animation/Animator;)V

    .line 325
    move-object v14, v9

    .line 326
    .local v14, "anim":Lccsanandroid/animation/Animator;
    new-instance v15, Lccsanandroidx/transition/ChangeBounds$7;

    invoke-direct {v15, v10, v0}, Lccsanandroidx/transition/ChangeBounds$7;-><init>(Lccsanandroidx/transition/ChangeBounds;Lccsanandroidx/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v9, v15}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 332
    .end local v0    # "viewBounds":Lccsanandroidx/transition/ChangeBounds$ViewBounds;
    .end local v5    # "bottomRightPath":Lccsanandroid/graphics/Path;
    .end local v6    # "topLeftAnimator":Lccsanandroid/animation/ObjectAnimator;
    .end local v8    # "bottomRightAnimator":Lccsanandroid/animation/ObjectAnimator;
    .end local v9    # "set":Lccsanandroid/animation/AnimatorSet;
    .end local v32    # "topLeftPath":Lccsanandroid/graphics/Path;
    move/from16 v17, v2

    move/from16 v16, v7

    move/from16 v37, v11

    move-object v0, v14

    move-object/from16 v15, v26

    move/from16 v32, v28

    move/from16 v36, v29

    move/from16 v35, v30

    move/from16 v34, v31

    move-object/from16 v8, v33

    const/4 v11, 0x1

    move/from16 v33, v1

    move/from16 v30, v3

    move/from16 v28, v4

    move/from16 v29, v12

    goto/16 :goto_6

    .line 333
    .end local v25    # "numChanges":I
    .end local v28    # "endHeight":I
    .end local v29    # "startHeight":I
    .end local v30    # "endWidth":I
    .end local v31    # "startWidth":I
    .end local v33    # "view":Lccsanandroid/view/View;
    .local v0, "endHeight":I
    .local v5, "endWidth":I
    .local v6, "startHeight":I
    .local v9, "numChanges":I
    .local v14, "startWidth":I
    .restart local v15    # "view":Lccsanandroid/view/View;
    :cond_c
    move/from16 v28, v0

    move/from16 v30, v5

    move/from16 v29, v6

    move/from16 v25, v9

    move/from16 v31, v14

    move-object/from16 v33, v15

    .end local v0    # "endHeight":I
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v9    # "numChanges":I
    .end local v14    # "startWidth":I
    .end local v15    # "view":Lccsanandroid/view/View;
    .restart local v25    # "numChanges":I
    .restart local v28    # "endHeight":I
    .restart local v29    # "startHeight":I
    .restart local v30    # "endWidth":I
    .restart local v31    # "startWidth":I
    .restart local v33    # "view":Lccsanandroid/view/View;
    if-ne v4, v1, :cond_e

    if-eq v3, v7, :cond_d

    move-object/from16 v8, v33

    goto :goto_0

    .line 339
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/transition/ChangeBounds;->getPathMotion()Lccsanandroidx/transition/PathMotion;

    move-result-object v0

    int-to-float v5, v2

    int-to-float v6, v12

    int-to-float v8, v11

    int-to-float v9, v13

    invoke-virtual {v0, v5, v6, v8, v9}, Lccsanandroidx/transition/PathMotion;->getPath(FFFF)Lccsanandroid/graphics/Path;

    move-result-object v0

    .line 341
    .local v0, "bottomRight":Lccsanandroid/graphics/Path;
    sget-object v5, Lccsanandroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Lccsanandroid/util/Property;

    move-object/from16 v8, v33

    .end local v33    # "view":Lccsanandroid/view/View;
    .local v8, "view":Lccsanandroid/view/View;
    invoke-static {v8, v5, v0}, Lccsanandroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    .line 343
    .local v0, "anim":Lccsanandroid/animation/Animator;
    move/from16 v33, v1

    move/from16 v17, v2

    move/from16 v16, v7

    move/from16 v37, v11

    move-object/from16 v15, v26

    move/from16 v32, v28

    move/from16 v36, v29

    move/from16 v35, v30

    move/from16 v34, v31

    const/4 v11, 0x1

    move/from16 v30, v3

    move/from16 v28, v4

    move/from16 v29, v12

    goto/16 :goto_6

    .line 333
    .end local v0    # "anim":Lccsanandroid/animation/Animator;
    .end local v8    # "view":Lccsanandroid/view/View;
    .restart local v33    # "view":Lccsanandroid/view/View;
    :cond_e
    move-object/from16 v8, v33

    .line 334
    .end local v33    # "view":Lccsanandroid/view/View;
    .restart local v8    # "view":Lccsanandroid/view/View;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/transition/ChangeBounds;->getPathMotion()Lccsanandroidx/transition/PathMotion;

    move-result-object v0

    int-to-float v5, v4

    int-to-float v6, v3

    int-to-float v9, v1

    int-to-float v14, v7

    invoke-virtual {v0, v5, v6, v9, v14}, Lccsanandroidx/transition/PathMotion;->getPath(FFFF)Lccsanandroid/graphics/Path;

    move-result-object v0

    .line 336
    .local v0, "topLeftPath":Lccsanandroid/graphics/Path;
    sget-object v5, Lccsanandroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Lccsanandroid/util/Property;

    invoke-static {v8, v5, v0}, Lccsanandroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    .line 338
    .local v0, "anim":Lccsanandroid/animation/Animator;
    move/from16 v33, v1

    move/from16 v17, v2

    move/from16 v16, v7

    move/from16 v37, v11

    move-object/from16 v15, v26

    move/from16 v32, v28

    move/from16 v36, v29

    move/from16 v35, v30

    move/from16 v34, v31

    const/4 v11, 0x1

    move/from16 v30, v3

    move/from16 v28, v4

    move/from16 v29, v12

    goto/16 :goto_6

    .line 345
    .end local v8    # "view":Lccsanandroid/view/View;
    .end local v28    # "endHeight":I
    .end local v29    # "startHeight":I
    .end local v30    # "endWidth":I
    .end local v31    # "startWidth":I
    .local v0, "endHeight":I
    .restart local v5    # "endWidth":I
    .restart local v6    # "startHeight":I
    .restart local v9    # "numChanges":I
    .restart local v14    # "startWidth":I
    .local v25, "view":Lccsanandroid/view/View;
    :cond_f
    move/from16 v28, v0

    move/from16 v30, v5

    move/from16 v29, v6

    move/from16 v31, v14

    move-object/from16 v8, v25

    move/from16 v25, v9

    .end local v0    # "endHeight":I
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v9    # "numChanges":I
    .end local v14    # "startWidth":I
    .restart local v8    # "view":Lccsanandroid/view/View;
    .local v25, "numChanges":I
    .restart local v28    # "endHeight":I
    .restart local v29    # "startHeight":I
    .restart local v30    # "endWidth":I
    .restart local v31    # "startWidth":I
    move/from16 v9, v31

    .end local v30    # "endWidth":I
    .end local v31    # "startWidth":I
    .restart local v5    # "endWidth":I
    .local v9, "startWidth":I
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 346
    .local v14, "maxWidth":I
    nop

    .end local v28    # "endHeight":I
    .end local v29    # "startHeight":I
    .restart local v0    # "endHeight":I
    .restart local v6    # "startHeight":I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 348
    .local v15, "maxHeight":I
    move/from16 v28, v2

    .end local v2    # "startRight":I
    .local v28, "startRight":I
    add-int v2, v4, v14

    move/from16 v29, v12

    .end local v12    # "startBottom":I
    .local v29, "startBottom":I
    add-int v12, v3, v15

    invoke-static {v8, v4, v3, v2, v12}, Lccsanandroidx/transition/ViewUtils;->setLeftTopRightBottom(Lccsanandroid/view/View;IIII)V

    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, "positionAnimator":Lccsanandroid/animation/ObjectAnimator;
    if-ne v4, v1, :cond_11

    if-eq v3, v7, :cond_10

    goto :goto_1

    :cond_10
    move/from16 v33, v1

    move-object v12, v2

    move/from16 v32, v3

    move/from16 v31, v4

    goto :goto_2

    .line 353
    :cond_11
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/transition/ChangeBounds;->getPathMotion()Lccsanandroidx/transition/PathMotion;

    move-result-object v12

    move-object/from16 v30, v2

    .end local v2    # "positionAnimator":Lccsanandroid/animation/ObjectAnimator;
    .local v30, "positionAnimator":Lccsanandroid/animation/ObjectAnimator;
    int-to-float v2, v4

    move/from16 v31, v4

    .end local v4    # "startLeft":I
    .local v31, "startLeft":I
    int-to-float v4, v3

    move/from16 v32, v3

    .end local v3    # "startTop":I
    .local v32, "startTop":I
    int-to-float v3, v1

    move/from16 v33, v1

    .end local v1    # "endLeft":I
    .local v33, "endLeft":I
    int-to-float v1, v7

    invoke-virtual {v12, v2, v4, v3, v1}, Lccsanandroidx/transition/PathMotion;->getPath(FFFF)Lccsanandroid/graphics/Path;

    move-result-object v1

    .line 355
    .local v1, "topLeftPath":Lccsanandroid/graphics/Path;
    sget-object v2, Lccsanandroidx/transition/ChangeBounds;->POSITION_PROPERTY:Lccsanandroid/util/Property;

    invoke-static {v8, v2, v1}, Lccsanandroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v2

    move-object v12, v2

    .line 358
    .end local v1    # "topLeftPath":Lccsanandroid/graphics/Path;
    .end local v30    # "positionAnimator":Lccsanandroid/animation/ObjectAnimator;
    .local v12, "positionAnimator":Lccsanandroid/animation/ObjectAnimator;
    :goto_2
    move/from16 v30, v32

    .end local v32    # "startTop":I
    .local v30, "startTop":I
    move-object/from16 v3, v27

    .line 359
    .local v3, "finalClip":Lccsanandroid/graphics/Rect;
    if-nez v26, :cond_12

    .line 360
    new-instance v1, Lccsanandroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v9, v6}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v1

    .end local v26    # "startClip":Lccsanandroid/graphics/Rect;
    .local v1, "startClip":Lccsanandroid/graphics/Rect;
    goto :goto_3

    .line 359
    .end local v1    # "startClip":Lccsanandroid/graphics/Rect;
    .restart local v26    # "startClip":Lccsanandroid/graphics/Rect;
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v4, v26

    .line 362
    .end local v26    # "startClip":Lccsanandroid/graphics/Rect;
    .local v4, "startClip":Lccsanandroid/graphics/Rect;
    :goto_3
    if-nez v27, :cond_13

    .line 363
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v5, v0}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v1

    .end local v27    # "endClip":Lccsanandroid/graphics/Rect;
    .local v1, "endClip":Lccsanandroid/graphics/Rect;
    goto :goto_4

    .line 362
    .end local v1    # "endClip":Lccsanandroid/graphics/Rect;
    .restart local v27    # "endClip":Lccsanandroid/graphics/Rect;
    :cond_13
    move-object/from16 v2, v27

    .line 365
    .end local v27    # "endClip":Lccsanandroid/graphics/Rect;
    .local v2, "endClip":Lccsanandroid/graphics/Rect;
    :goto_4
    const/4 v1, 0x0

    .line 366
    .local v1, "clipAnimator":Lccsanandroid/animation/ObjectAnimator;
    invoke-virtual {v4, v2}, Lccsanandroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    .line 367
    invoke-static {v8, v4}, Lccsanandroidx/core/view/ViewCompat;->setClipBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 368
    move/from16 v32, v0

    .end local v0    # "endHeight":I
    .local v32, "endHeight":I
    sget-object v0, Lccsanandroidx/transition/ChangeBounds;->sRectEvaluator:Lccsanandroidx/transition/RectEvaluator;

    move-object/from16 v26, v1

    const/4 v1, 0x2

    .end local v1    # "clipAnimator":Lccsanandroid/animation/ObjectAnimator;
    .local v26, "clipAnimator":Lccsanandroid/animation/ObjectAnimator;
    new-array v1, v1, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v1, v17

    const/16 v16, 0x1

    aput-object v2, v1, v16

    move-object/from16 v17, v2

    .end local v2    # "endClip":Lccsanandroid/graphics/Rect;
    .local v17, "endClip":Lccsanandroid/graphics/Rect;
    const-string v2, "clipBounds"

    invoke-static {v8, v2, v0, v1}, Lccsanandroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Lccsanandroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v2

    .line 370
    .end local v26    # "clipAnimator":Lccsanandroid/animation/ObjectAnimator;
    .local v2, "clipAnimator":Lccsanandroid/animation/ObjectAnimator;
    new-instance v1, Lccsanandroidx/transition/ChangeBounds$8;

    move-object v0, v1

    move/from16 v34, v9

    move-object v9, v1

    .end local v9    # "startWidth":I
    .local v34, "startWidth":I
    move-object/from16 v1, p0

    move/from16 v24, v14

    move-object/from16 v27, v17

    move/from16 v17, v28

    move-object v14, v2

    .end local v2    # "clipAnimator":Lccsanandroid/animation/ObjectAnimator;
    .end local v28    # "startRight":I
    .local v14, "clipAnimator":Lccsanandroid/animation/ObjectAnimator;
    .local v17, "startRight":I
    .local v24, "maxWidth":I
    .restart local v27    # "endClip":Lccsanandroid/graphics/Rect;
    move-object v2, v8

    move/from16 v28, v31

    move-object/from16 v31, v4

    .end local v4    # "startClip":Lccsanandroid/graphics/Rect;
    .local v28, "startLeft":I
    .local v31, "startClip":Lccsanandroid/graphics/Rect;
    move/from16 v4, v33

    move/from16 v35, v5

    .end local v5    # "endWidth":I
    .local v35, "endWidth":I
    move v5, v7

    move/from16 v36, v6

    .end local v6    # "startHeight":I
    .local v36, "startHeight":I
    move v6, v11

    move/from16 v16, v7

    move/from16 v37, v11

    const/4 v11, 0x1

    .end local v7    # "endTop":I
    .end local v11    # "endRight":I
    .local v16, "endTop":I
    .local v37, "endRight":I
    move v7, v13

    invoke-direct/range {v0 .. v7}, Lccsanandroidx/transition/ChangeBounds$8;-><init>(Lccsanandroidx/transition/ChangeBounds;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;IIII)V

    invoke-virtual {v14, v9}, Lccsanandroid/animation/ObjectAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    move-object v1, v14

    goto :goto_5

    .line 366
    .end local v16    # "endTop":I
    .end local v17    # "startRight":I
    .end local v24    # "maxWidth":I
    .end local v27    # "endClip":Lccsanandroid/graphics/Rect;
    .end local v32    # "endHeight":I
    .end local v34    # "startWidth":I
    .end local v35    # "endWidth":I
    .end local v36    # "startHeight":I
    .end local v37    # "endRight":I
    .restart local v0    # "endHeight":I
    .restart local v1    # "clipAnimator":Lccsanandroid/animation/ObjectAnimator;
    .local v2, "endClip":Lccsanandroid/graphics/Rect;
    .restart local v4    # "startClip":Lccsanandroid/graphics/Rect;
    .restart local v5    # "endWidth":I
    .restart local v6    # "startHeight":I
    .restart local v7    # "endTop":I
    .restart local v9    # "startWidth":I
    .restart local v11    # "endRight":I
    .local v14, "maxWidth":I
    .local v28, "startRight":I
    .local v31, "startLeft":I
    :cond_14
    move/from16 v32, v0

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move/from16 v35, v5

    move/from16 v36, v6

    move/from16 v16, v7

    move/from16 v34, v9

    move/from16 v37, v11

    move/from16 v24, v14

    move/from16 v17, v28

    move/from16 v28, v31

    const/4 v11, 0x1

    move-object/from16 v31, v4

    .line 388
    .end local v0    # "endHeight":I
    .end local v2    # "endClip":Lccsanandroid/graphics/Rect;
    .end local v4    # "startClip":Lccsanandroid/graphics/Rect;
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v7    # "endTop":I
    .end local v9    # "startWidth":I
    .end local v11    # "endRight":I
    .end local v14    # "maxWidth":I
    .restart local v16    # "endTop":I
    .restart local v17    # "startRight":I
    .restart local v24    # "maxWidth":I
    .restart local v27    # "endClip":Lccsanandroid/graphics/Rect;
    .local v28, "startLeft":I
    .local v31, "startClip":Lccsanandroid/graphics/Rect;
    .restart local v32    # "endHeight":I
    .restart local v34    # "startWidth":I
    .restart local v35    # "endWidth":I
    .restart local v36    # "startHeight":I
    .restart local v37    # "endRight":I
    :goto_5
    invoke-static {v12, v1}, Lccsanandroidx/transition/TransitionUtils;->mergeAnimators(Lccsanandroid/animation/Animator;Lccsanandroid/animation/Animator;)Lccsanandroid/animation/Animator;

    move-result-object v0

    move-object/from16 v15, v31

    .line 391
    .end local v1    # "clipAnimator":Lccsanandroid/animation/ObjectAnimator;
    .end local v3    # "finalClip":Lccsanandroid/graphics/Rect;
    .end local v12    # "positionAnimator":Lccsanandroid/animation/ObjectAnimator;
    .end local v24    # "maxWidth":I
    .end local v31    # "startClip":Lccsanandroid/graphics/Rect;
    .local v0, "anim":Lccsanandroid/animation/Animator;
    .local v15, "startClip":Lccsanandroid/graphics/Rect;
    :goto_6
    invoke-virtual {v8}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_15

    .line 392
    invoke-virtual {v8}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/ViewGroup;

    .line 393
    .local v1, "parent":Lccsanandroid/view/ViewGroup;
    invoke-static {v1, v11}, Lccsanandroidx/transition/ViewGroupUtils;->suppressLayout(Lccsanandroid/view/ViewGroup;Z)V

    .line 394
    new-instance v2, Lccsanandroidx/transition/ChangeBounds$9;

    invoke-direct {v2, v10, v1}, Lccsanandroidx/transition/ChangeBounds$9;-><init>(Lccsanandroidx/transition/ChangeBounds;Lccsanandroid/view/ViewGroup;)V

    .line 421
    .local v2, "transitionListener":Lccsanandroidx/transition/Transition$TransitionListener;
    invoke-virtual {v10, v2}, Lccsanandroidx/transition/ChangeBounds;->addListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 423
    .end local v1    # "parent":Lccsanandroid/view/ViewGroup;
    .end local v2    # "transitionListener":Lccsanandroidx/transition/Transition$TransitionListener;
    :cond_15
    return-object v0

    .line 301
    .end local v16    # "endTop":I
    .end local v17    # "startRight":I
    .end local v27    # "endClip":Lccsanandroid/graphics/Rect;
    .end local v28    # "startLeft":I
    .end local v29    # "startBottom":I
    .end local v30    # "startTop":I
    .end local v32    # "endHeight":I
    .end local v33    # "endLeft":I
    .end local v34    # "startWidth":I
    .end local v35    # "endWidth":I
    .end local v36    # "startHeight":I
    .end local v37    # "endRight":I
    .local v0, "endHeight":I
    .local v1, "endLeft":I
    .local v2, "startRight":I
    .local v3, "startTop":I
    .local v4, "startLeft":I
    .restart local v5    # "endWidth":I
    .restart local v6    # "startHeight":I
    .restart local v7    # "endTop":I
    .local v8, "endClip":Lccsanandroid/graphics/Rect;
    .local v9, "numChanges":I
    .restart local v11    # "endRight":I
    .local v12, "startBottom":I
    .local v14, "startWidth":I
    .local v25, "view":Lccsanandroid/view/View;
    :cond_16
    move-object/from16 v10, p0

    move/from16 v32, v0

    move/from16 v33, v1

    move/from16 v17, v2

    move/from16 v30, v3

    move/from16 v28, v4

    move/from16 v35, v5

    move/from16 v36, v6

    move/from16 v16, v7

    move-object/from16 v27, v8

    move/from16 v37, v11

    move/from16 v29, v12

    move/from16 v34, v14

    move-object/from16 v26, v15

    move-object/from16 v8, v25

    move/from16 v25, v9

    .line 425
    .end local v0    # "endHeight":I
    .end local v1    # "endLeft":I
    .end local v2    # "startRight":I
    .end local v3    # "startTop":I
    .end local v4    # "startLeft":I
    .end local v5    # "endWidth":I
    .end local v6    # "startHeight":I
    .end local v7    # "endTop":I
    .end local v9    # "numChanges":I
    .end local v11    # "endRight":I
    .end local v12    # "startBottom":I
    .end local v13    # "endBottom":I
    .end local v14    # "startWidth":I
    .end local v15    # "startClip":Lccsanandroid/graphics/Rect;
    .end local v22    # "startBounds":Lccsanandroid/graphics/Rect;
    .end local v23    # "endBounds":Lccsanandroid/graphics/Rect;
    .end local v25    # "view":Lccsanandroid/view/View;
    .local v8, "view":Lccsanandroid/view/View;
    move-object/from16 v6, p2

    move-object/from16 v12, p3

    goto :goto_7

    .line 426
    .end local v8    # "view":Lccsanandroid/view/View;
    .end local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "startParent":Lccsanandroid/view/ViewGroup;
    .end local v21    # "endParent":Lccsanandroid/view/ViewGroup;
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v12, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "startParent":Lccsanandroid/view/ViewGroup;
    .local v14, "endParent":Lccsanandroid/view/ViewGroup;
    .local v15, "view":Lccsanandroid/view/View;
    :cond_17
    move-object v10, v8

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object v8, v15

    const/4 v11, 0x1

    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "startParent":Lccsanandroid/view/ViewGroup;
    .end local v14    # "endParent":Lccsanandroid/view/ViewGroup;
    .end local v15    # "view":Lccsanandroid/view/View;
    .restart local v8    # "view":Lccsanandroid/view/View;
    .restart local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "startParent":Lccsanandroid/view/ViewGroup;
    .restart local v21    # "endParent":Lccsanandroid/view/ViewGroup;
    move-object/from16 v6, p2

    iget-object v0, v6, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeBounds:windowX"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 427
    .local v7, "startX":I
    iget-object v0, v6, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 428
    .local v9, "startY":I
    move-object/from16 v12, p3

    iget-object v0, v12, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 429
    .local v13, "endX":I
    iget-object v0, v12, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 431
    .local v14, "endY":I
    if-ne v7, v13, :cond_19

    if-eq v9, v14, :cond_18

    goto :goto_8

    .line 458
    .end local v7    # "startX":I
    .end local v9    # "startY":I
    .end local v13    # "endX":I
    .end local v14    # "endY":I
    :cond_18
    :goto_7
    const/4 v0, 0x0

    return-object v0

    .line 432
    .restart local v7    # "startX":I
    .restart local v9    # "startY":I
    .restart local v13    # "endX":I
    .restart local v14    # "endY":I
    :cond_19
    :goto_8
    iget-object v0, v10, Lccsanandroidx/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Lccsanandroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 433
    invoke-virtual {v8}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v5

    .line 435
    .local v5, "bitmap":Lccsanandroid/graphics/Bitmap;
    new-instance v0, Lccsanandroid/graphics/Canvas;

    invoke-direct {v0, v5}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    move-object v4, v0

    .line 436
    .local v4, "canvas":Lccsanandroid/graphics/Canvas;
    invoke-virtual {v8, v4}, Lccsanandroid/view/View;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 437
    new-instance v0, Lccsanandroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v5}, Lccsanandroid/graphics/drawable/BitmapDrawable;-><init>(Lccsanandroid/graphics/Bitmap;)V

    move-object v3, v0

    .line 439
    .local v3, "drawable":Lccsanandroid/graphics/drawable/BitmapDrawable;
    invoke-static {v8}, Lccsanandroidx/transition/ViewUtils;->getTransitionAlpha(Lccsanandroid/view/View;)F

    move-result v16

    .line 440
    .local v16, "transitionAlpha":F
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lccsanandroidx/transition/ViewUtils;->setTransitionAlpha(Lccsanandroid/view/View;F)V

    .line 441
    invoke-static/range {p1 .. p1}, Lccsanandroidx/transition/ViewUtils;->getOverlay(Lccsanandroid/view/View;)Lccsanandroidx/transition/ViewOverlayImpl;

    move-result-object v0

    invoke-interface {v0, v3}, Lccsanandroidx/transition/ViewOverlayImpl;->add(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/transition/ChangeBounds;->getPathMotion()Lccsanandroidx/transition/PathMotion;

    move-result-object v0

    iget-object v1, v10, Lccsanandroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v2, 0x0

    aget v17, v1, v2

    sub-int v2, v7, v17

    int-to-float v2, v2

    aget v17, v1, v11

    sub-int v11, v9, v17

    int-to-float v11, v11

    const/16 v17, 0x0

    aget v22, v1, v17

    move-object/from16 v24, v4

    .end local v4    # "canvas":Lccsanandroid/graphics/Canvas;
    .local v24, "canvas":Lccsanandroid/graphics/Canvas;
    sub-int v4, v13, v22

    int-to-float v4, v4

    move-object/from16 v22, v5

    const/4 v5, 0x1

    .end local v5    # "bitmap":Lccsanandroid/graphics/Bitmap;
    .local v22, "bitmap":Lccsanandroid/graphics/Bitmap;
    aget v1, v1, v5

    sub-int v1, v14, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v11, v4, v1}, Lccsanandroidx/transition/PathMotion;->getPath(FFFF)Lccsanandroid/graphics/Path;

    move-result-object v11

    .line 445
    .local v11, "topLeftPath":Lccsanandroid/graphics/Path;
    sget-object v0, Lccsanandroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Lccsanandroid/util/Property;

    invoke-static {v0, v11}, Lccsanandroidx/transition/PropertyValuesHolderUtils;->ofPointF(Lccsanandroid/util/Property;Lccsanandroid/graphics/Path;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v23

    .line 447
    .local v23, "origin":Lccsanandroid/animation/PropertyValuesHolder;
    new-array v0, v5, [Lccsanandroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aput-object v23, v0, v1

    invoke-static {v3, v0}, Lccsanandroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lccsanandroid/animation/PropertyValuesHolder;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v5

    .line 448
    .local v5, "anim":Lccsanandroid/animation/ObjectAnimator;
    new-instance v4, Lccsanandroidx/transition/ChangeBounds$10;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v17, v3

    .end local v3    # "drawable":Lccsanandroid/graphics/drawable/BitmapDrawable;
    .local v17, "drawable":Lccsanandroid/graphics/drawable/BitmapDrawable;
    move-object v6, v4

    move-object v4, v8

    move/from16 v25, v7

    move-object v7, v5

    .end local v5    # "anim":Lccsanandroid/animation/ObjectAnimator;
    .local v7, "anim":Lccsanandroid/animation/ObjectAnimator;
    .local v25, "startX":I
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/transition/ChangeBounds$10;-><init>(Lccsanandroidx/transition/ChangeBounds;Lccsanandroid/view/ViewGroup;Lccsanandroid/graphics/drawable/BitmapDrawable;Lccsanandroid/view/View;F)V

    invoke-virtual {v7, v6}, Lccsanandroid/animation/ObjectAnimator;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 455
    return-object v7

    .line 271
    .end local v7    # "anim":Lccsanandroid/animation/ObjectAnimator;
    .end local v8    # "view":Lccsanandroid/view/View;
    .end local v9    # "startY":I
    .end local v16    # "transitionAlpha":F
    .end local v17    # "drawable":Lccsanandroid/graphics/drawable/BitmapDrawable;
    .end local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "startParent":Lccsanandroid/view/ViewGroup;
    .end local v21    # "endParent":Lccsanandroid/view/ViewGroup;
    .end local v22    # "bitmap":Lccsanandroid/graphics/Bitmap;
    .end local v23    # "origin":Lccsanandroid/animation/PropertyValuesHolder;
    .end local v24    # "canvas":Lccsanandroid/graphics/Canvas;
    .end local v25    # "startX":I
    .local v11, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "startParent":Lccsanandroid/view/ViewGroup;
    .local v14, "endParent":Lccsanandroid/view/ViewGroup;
    :cond_1a
    move-object/from16 v15, p1

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object v12, v10

    move-object v10, v8

    .line 272
    .end local v11    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "startParent":Lccsanandroid/view/ViewGroup;
    .end local v14    # "endParent":Lccsanandroid/view/ViewGroup;
    .restart local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "startParent":Lccsanandroid/view/ViewGroup;
    .restart local v21    # "endParent":Lccsanandroid/view/ViewGroup;
    :goto_9
    const/4 v0, 0x0

    return-object v0

    .line 264
    .end local v18    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "startParent":Lccsanandroid/view/ViewGroup;
    .end local v21    # "endParent":Lccsanandroid/view/ViewGroup;
    :cond_1b
    move-object/from16 v15, p1

    move-object v12, v10

    const/4 v0, 0x0

    move-object v10, v8

    .line 265
    :goto_a
    return-object v0
.end method

.method public getResizeClip()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lccsanandroidx/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 188
    sget-object v0, Lccsanandroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setResizeClip(Z)V
    .locals 0
    .param p1, "resizeClip"    # Z

    .line 205
    iput-boolean p1, p0, Lccsanandroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 206
    return-void
.end method
