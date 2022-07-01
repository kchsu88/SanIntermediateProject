.class public Lccsanandroidx/transition/Slide;
.super Lccsanandroidx/transition/Visibility;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/transition/Slide$CalculateSlideVertical;,
        Lccsanandroidx/transition/Slide$CalculateSlideHorizontal;,
        Lccsanandroidx/transition/Slide$CalculateSlide;,
        Lccsanandroidx/transition/Slide$GravityFlag;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCREEN_POSITION:Ljava/lang/String; = "android:slide:screenPosition"

.field private static final sAccelerate:Lccsanandroid/animation/TimeInterpolator;

.field private static final sCalculateBottom:Lccsanandroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateEnd:Lccsanandroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateLeft:Lccsanandroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateRight:Lccsanandroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateStart:Lccsanandroidx/transition/Slide$CalculateSlide;

.field private static final sCalculateTop:Lccsanandroidx/transition/Slide$CalculateSlide;

.field private static final sDecelerate:Lccsanandroid/animation/TimeInterpolator;


# instance fields
.field private mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

.field private mSlideEdge:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lccsanandroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Lccsanandroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lccsanandroidx/transition/Slide;->sDecelerate:Lccsanandroid/animation/TimeInterpolator;

    .line 56
    new-instance v0, Lccsanandroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Lccsanandroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lccsanandroidx/transition/Slide;->sAccelerate:Lccsanandroid/animation/TimeInterpolator;

    .line 93
    new-instance v0, Lccsanandroidx/transition/Slide$1;

    invoke-direct {v0}, Lccsanandroidx/transition/Slide$1;-><init>()V

    sput-object v0, Lccsanandroidx/transition/Slide;->sCalculateLeft:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 100
    new-instance v0, Lccsanandroidx/transition/Slide$2;

    invoke-direct {v0}, Lccsanandroidx/transition/Slide$2;-><init>()V

    sput-object v0, Lccsanandroidx/transition/Slide;->sCalculateStart:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 115
    new-instance v0, Lccsanandroidx/transition/Slide$3;

    invoke-direct {v0}, Lccsanandroidx/transition/Slide$3;-><init>()V

    sput-object v0, Lccsanandroidx/transition/Slide;->sCalculateTop:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 122
    new-instance v0, Lccsanandroidx/transition/Slide$4;

    invoke-direct {v0}, Lccsanandroidx/transition/Slide$4;-><init>()V

    sput-object v0, Lccsanandroidx/transition/Slide;->sCalculateRight:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 129
    new-instance v0, Lccsanandroidx/transition/Slide$5;

    invoke-direct {v0}, Lccsanandroidx/transition/Slide$5;-><init>()V

    sput-object v0, Lccsanandroidx/transition/Slide;->sCalculateEnd:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 144
    new-instance v0, Lccsanandroidx/transition/Slide$6;

    invoke-direct {v0}, Lccsanandroidx/transition/Slide$6;-><init>()V

    sput-object v0, Lccsanandroidx/transition/Slide;->sCalculateBottom:Lccsanandroidx/transition/Slide$CalculateSlide;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 155
    invoke-direct {p0}, Lccsanandroidx/transition/Visibility;-><init>()V

    .line 58
    sget-object v0, Lccsanandroidx/transition/Slide;->sCalculateBottom:Lccsanandroidx/transition/Slide$CalculateSlide;

    iput-object v0, p0, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 59
    const/16 v0, 0x50

    iput v0, p0, Lccsanandroidx/transition/Slide;->mSlideEdge:I

    .line 156
    invoke-virtual {p0, v0}, Lccsanandroidx/transition/Slide;->setSlideEdge(I)V

    .line 157
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "slideEdge"    # I

    .line 162
    invoke-direct {p0}, Lccsanandroidx/transition/Visibility;-><init>()V

    .line 58
    sget-object v0, Lccsanandroidx/transition/Slide;->sCalculateBottom:Lccsanandroidx/transition/Slide$CalculateSlide;

    iput-object v0, p0, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 59
    const/16 v0, 0x50

    iput v0, p0, Lccsanandroidx/transition/Slide;->mSlideEdge:I

    .line 163
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/Slide;->setSlideEdge(I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 169
    invoke-direct {p0, p1, p2}, Lccsanandroidx/transition/Visibility;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 58
    sget-object v0, Lccsanandroidx/transition/Slide;->sCalculateBottom:Lccsanandroidx/transition/Slide$CalculateSlide;

    iput-object v0, p0, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 59
    const/16 v0, 0x50

    iput v0, p0, Lccsanandroidx/transition/Slide;->mSlideEdge:I

    .line 170
    sget-object v1, Lccsanandroidx/transition/Styleable;->SLIDE:[I

    invoke-virtual {p1, p2, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 171
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Lccsanorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v3, "slideEdge"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 173
    .local v0, "edge":I
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 175
    invoke-virtual {p0, v0}, Lccsanandroidx/transition/Slide;->setSlideEdge(I)V

    .line 176
    return-void
.end method

.method private captureValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 179
    iget-object v0, p1, Lccsanandroidx/transition/TransitionValues;->view:Lccsanandroid/view/View;

    .line 180
    .local v0, "view":Lccsanandroid/view/View;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 181
    .local v1, "position":[I
    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 182
    iget-object v2, p1, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:slide:screenPosition"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method


# virtual methods
.method public captureEndValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 193
    invoke-super {p0, p1}, Lccsanandroidx/transition/Visibility;->captureEndValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 194
    invoke-direct {p0, p1}, Lccsanandroidx/transition/Slide;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 195
    return-void
.end method

.method public captureStartValues(Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 187
    invoke-super {p0, p1}, Lccsanandroidx/transition/Visibility;->captureStartValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 188
    invoke-direct {p0, p1}, Lccsanandroidx/transition/Slide;->captureValues(Lccsanandroidx/transition/TransitionValues;)V

    .line 189
    return-void
.end method

.method public getSlideEdge()I
    .locals 1

    .line 244
    iget v0, p0, Lccsanandroidx/transition/Slide;->mSlideEdge:I

    return v0
.end method

.method public onAppear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 19
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p4, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 250
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    if-nez v13, :cond_0

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 253
    :cond_0
    iget-object v0, v13, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:slide:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v14, v0

    check-cast v14, [I

    .line 254
    .local v14, "position":[I
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v15

    .line 255
    .local v15, "endX":F
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v16

    .line 256
    .local v16, "endY":F
    iget-object v0, v10, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    invoke-interface {v0, v11, v12}, Lccsanandroidx/transition/Slide$CalculateSlide;->getGoneX(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)F

    move-result v17

    .line 257
    .local v17, "startX":F
    iget-object v0, v10, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    invoke-interface {v0, v11, v12}, Lccsanandroidx/transition/Slide$CalculateSlide;->getGoneY(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)F

    move-result v18

    .line 258
    .local v18, "startY":F
    const/4 v0, 0x0

    aget v2, v14, v0

    const/4 v0, 0x1

    aget v3, v14, v0

    sget-object v8, Lccsanandroidx/transition/Slide;->sDecelerate:Lccsanandroid/animation/TimeInterpolator;

    .line 259
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v4, v17

    move/from16 v5, v18

    move v6, v15

    move/from16 v7, v16

    move-object/from16 v9, p0

    invoke-static/range {v0 .. v9}, Lccsanandroidx/transition/TranslationAnimationCreator;->createAnimation(Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;IIFFFFLccsanandroid/animation/TimeInterpolator;Lccsanandroidx/transition/Transition;)Lccsanandroid/animation/Animator;

    move-result-object v0

    .line 258
    return-object v0
.end method

.method public onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
    .locals 19
    .param p1, "sceneRoot"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "startValues"    # Lccsanandroidx/transition/TransitionValues;
    .param p4, "endValues"    # Lccsanandroidx/transition/TransitionValues;

    .line 266
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    if-nez v13, :cond_0

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_0
    iget-object v0, v13, Lccsanandroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:slide:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v14, v0

    check-cast v14, [I

    .line 270
    .local v14, "position":[I
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v15

    .line 271
    .local v15, "startX":F
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v16

    .line 272
    .local v16, "startY":F
    iget-object v0, v10, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    invoke-interface {v0, v11, v12}, Lccsanandroidx/transition/Slide$CalculateSlide;->getGoneX(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)F

    move-result v17

    .line 273
    .local v17, "endX":F
    iget-object v0, v10, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    invoke-interface {v0, v11, v12}, Lccsanandroidx/transition/Slide$CalculateSlide;->getGoneY(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)F

    move-result v18

    .line 274
    .local v18, "endY":F
    const/4 v0, 0x0

    aget v2, v14, v0

    const/4 v0, 0x1

    aget v3, v14, v0

    sget-object v8, Lccsanandroidx/transition/Slide;->sAccelerate:Lccsanandroid/animation/TimeInterpolator;

    .line 275
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v9, p0

    invoke-static/range {v0 .. v9}, Lccsanandroidx/transition/TranslationAnimationCreator;->createAnimation(Lccsanandroid/view/View;Lccsanandroidx/transition/TransitionValues;IIFFFFLccsanandroid/animation/TimeInterpolator;Lccsanandroidx/transition/Transition;)Lccsanandroid/animation/Animator;

    move-result-object v0

    .line 274
    return-object v0
.end method

.method public setSlideEdge(I)V
    .locals 2
    .param p1, "slideEdge"    # I

    .line 206
    sparse-switch p1, :sswitch_data_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid slide direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :sswitch_0
    sget-object v0, Lccsanandroidx/transition/Slide;->sCalculateEnd:Lccsanandroidx/transition/Slide$CalculateSlide;

    iput-object v0, p0, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 224
    goto :goto_0

    .line 220
    :sswitch_1
    sget-object v0, Lccsanandroidx/transition/Slide;->sCalculateStart:Lccsanandroidx/transition/Slide$CalculateSlide;

    iput-object v0, p0, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 221
    goto :goto_0

    .line 217
    :sswitch_2
    sget-object v0, Lccsanandroidx/transition/Slide;->sCalculateBottom:Lccsanandroidx/transition/Slide$CalculateSlide;

    iput-object v0, p0, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 218
    goto :goto_0

    .line 211
    :sswitch_3
    sget-object v0, Lccsanandroidx/transition/Slide;->sCalculateTop:Lccsanandroidx/transition/Slide$CalculateSlide;

    iput-object v0, p0, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 212
    goto :goto_0

    .line 214
    :sswitch_4
    sget-object v0, Lccsanandroidx/transition/Slide;->sCalculateRight:Lccsanandroidx/transition/Slide$CalculateSlide;

    iput-object v0, p0, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 215
    goto :goto_0

    .line 208
    :sswitch_5
    sget-object v0, Lccsanandroidx/transition/Slide;->sCalculateLeft:Lccsanandroidx/transition/Slide$CalculateSlide;

    iput-object v0, p0, Lccsanandroidx/transition/Slide;->mSlideCalculator:Lccsanandroidx/transition/Slide$CalculateSlide;

    .line 209
    nop

    .line 228
    :goto_0
    iput p1, p0, Lccsanandroidx/transition/Slide;->mSlideEdge:I

    .line 229
    new-instance v0, Lccsanandroidx/transition/SidePropagation;

    invoke-direct {v0}, Lccsanandroidx/transition/SidePropagation;-><init>()V

    .line 230
    .local v0, "propagation":Lccsanandroidx/transition/SidePropagation;
    invoke-virtual {v0, p1}, Lccsanandroidx/transition/SidePropagation;->setSide(I)V

    .line 231
    invoke-virtual {p0, v0}, Lccsanandroidx/transition/Slide;->setPropagation(Lccsanandroidx/transition/TransitionPropagation;)V

    .line 232
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x5 -> :sswitch_4
        0x30 -> :sswitch_3
        0x50 -> :sswitch_2
        0x800003 -> :sswitch_1
        0x800005 -> :sswitch_0
    .end sparse-switch
.end method
