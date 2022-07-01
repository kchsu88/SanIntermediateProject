.class public Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
.super Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;,
        Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;
    }
.end annotation


# static fields
.field private static final ANIMATED_VECTOR:Ljava/lang/String; = "animated-vector"

.field private static final DBG_ANIMATION_VECTOR_DRAWABLE:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "AnimatedVDCompat"

.field private static final TARGET:Ljava/lang/String; = "target"


# instance fields
.field private mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

.field mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorListener:Lccsanandroid/animation/Animator$AnimatorListener;

.field private mArgbEvaluator:Lccsanandroid/animation/ArgbEvaluator;

.field mCachedConstantStateDelegate:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

.field final mCallback:Lccsanandroid/graphics/drawable/Drawable$Callback;

.field private mContext:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Lccsanandroid/content/res/Resources;)V

    .line 169
    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Lccsanandroid/content/res/Resources;)V

    .line 173
    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Lccsanandroid/content/res/Resources;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "state"    # Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
    .param p3, "res"    # Lccsanandroid/content/res/Resources;

    .line 177
    invoke-direct {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Lccsanandroid/animation/ArgbEvaluator;

    .line 161
    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Lccsanandroid/animation/Animator$AnimatorListener;

    .line 164
    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 733
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;

    invoke-direct {v0, p0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$1;-><init>(Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Lccsanandroid/graphics/drawable/Drawable$Callback;

    .line 178
    iput-object p1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Lccsanandroid/content/Context;

    .line 179
    if-eqz p2, :cond_0

    .line 180
    iput-object p2, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    goto :goto_0

    .line 182
    :cond_0
    new-instance v1, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    invoke-direct {v1, p1, p2, v0, p3}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Lccsanandroid/graphics/drawable/Drawable$Callback;Lccsanandroid/content/res/Resources;)V

    iput-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    .line 185
    :goto_0
    return-void
.end method

.method public static clearAnimationCallbacks(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "dr"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 920
    instance-of v0, p0, Lccsanandroid/graphics/drawable/Animatable;

    if-nez v0, :cond_0

    .line 921
    return-void

    .line 923
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 924
    move-object v0, p0

    check-cast v0, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    goto :goto_0

    .line 926
    :cond_1
    move-object v0, p0

    check-cast v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->clearAnimationCallbacks()V

    .line 929
    :goto_0
    return-void
.end method

.method public static create(Lccsanandroid/content/Context;I)Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    .locals 8
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resId"    # I

    .line 212
    const-string v0, "parser error"

    const-string v1, "AnimatedVDCompat"

    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 213
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0, p0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Lccsanandroid/content/Context;)V

    .line 214
    .local v0, "drawable":Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    .line 215
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v2

    .line 214
    invoke-static {v1, p1, v2}, Lccsanandroidx/core/content/res/ResourcesCompat;->getDrawable(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 216
    iget-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Lccsanandroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 217
    new-instance v1, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    iget-object v2, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 218
    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;-><init>(Lccsanandroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v1, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCachedConstantStateDelegate:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    .line 219
    return-object v0

    .line 221
    .end local v0    # "drawable":Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    .line 224
    .local v2, "resources":Lccsanandroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v2, p1}, Lccsanandroid/content/res/Resources;->getXml(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 225
    .local v3, "parser":Lccsanorg/xmlpull/v1/XmlPullParser;
    invoke-static {v3}, Lccsanandroid/util/Xml;->asAttributeSet(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/util/AttributeSet;

    move-result-object v4

    .line 227
    .local v4, "attrs":Lccsanandroid/util/AttributeSet;
    :goto_0
    invoke-interface {v3}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    const/4 v5, 0x1

    if-eq v6, v5, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    if-ne v6, v7, :cond_2

    .line 234
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v5

    .line 235
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v7

    .line 234
    invoke-static {p0, v5, v3, v4, v7}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0

    return-object v0

    .line 232
    :cond_2
    new-instance v5, Lccsanorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "No start tag found"

    invoke-direct {v5, v7}, Lccsanorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v2    # "resources":Lccsanandroid/content/res/Resources;
    .end local p0    # "context":Lccsanandroid/content/Context;
    .end local p1    # "resId":I
    throw v5
    :try_end_0
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v3    # "parser":Lccsanorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "attrs":Lccsanandroid/util/AttributeSet;
    .end local v6    # "type":I
    .restart local v2    # "resources":Lccsanandroid/content/res/Resources;
    .restart local p0    # "context":Lccsanandroid/content/Context;
    .restart local p1    # "resId":I
    :catch_0
    move-exception v3

    .line 239
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 236
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 237
    .local v3, "e":Lccsanorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1, v0, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v3    # "e":Lccsanorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 241
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createFromXmlInner(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "r"    # Lccsanandroid/content/res/Resources;
    .param p2, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p4, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0, p0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;-><init>(Lccsanandroid/content/Context;)V

    .line 254
    .local v0, "drawable":Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Lccsanandroid/content/res/Resources;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/content/res/Resources$Theme;)V

    .line 255
    return-object v0
.end method

.method public static registerAnimationCallback(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 2
    .param p0, "dr"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p1, "callback"    # Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 877
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 880
    :cond_0
    instance-of v0, p0, Lccsanandroid/graphics/drawable/Animatable;

    if-nez v0, :cond_1

    .line 881
    return-void

    .line 884
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 885
    move-object v0, p0

    check-cast v0, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerPlatformCallback(Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    goto :goto_0

    .line 887
    :cond_2
    move-object v0, p0

    check-cast v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 889
    :goto_0
    return-void

    .line 878
    :cond_3
    :goto_1
    return-void
.end method

.method private static registerPlatformCallback(Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 1
    .param p0, "avd"    # Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;
    .param p1, "callback"    # Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 820
    invoke-virtual {p1}, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->getPlatformCallback()Lccsanandroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Lccsanandroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 821
    return-void
.end method

.method private removeAnimatorSetListener()V
    .locals 2

    .line 827
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Lccsanandroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Lccsanandroid/animation/AnimatorSet;

    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Lccsanandroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lccsanandroid/animation/AnimatorSet;->removeListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Lccsanandroid/animation/Animator$AnimatorListener;

    .line 831
    :cond_0
    return-void
.end method

.method private setupAnimatorsForTarget(Ljava/lang/String;Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "animator"    # Lccsanandroid/animation/Animator;

    .line 682
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 683
    .local v0, "target":Ljava/lang/Object;
    invoke-virtual {p2, v0}, Lccsanandroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 684
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 685
    invoke-direct {p0, p2}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setupColorAnimator(Lccsanandroid/animation/Animator;)V

    .line 687
    :cond_0
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 688
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    .line 689
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    new-instance v2, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v2}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    iput-object v2, v1, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Lccsanandroidx/collection/ArrayMap;

    .line 691
    :cond_1
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v1, v1, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v1, p2, p1}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    return-void
.end method

.method private setupColorAnimator(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 661
    instance-of v0, p1, Lccsanandroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 662
    move-object v0, p1

    check-cast v0, Lccsanandroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    .line 663
    .local v0, "childAnimators":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    if-eqz v0, :cond_0

    .line 664
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 665
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/animation/Animator;

    invoke-direct {p0, v2}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setupColorAnimator(Lccsanandroid/animation/Animator;)V

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 669
    .end local v0    # "childAnimators":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    .end local v1    # "i":I
    :cond_0
    instance-of v0, p1, Lccsanandroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 670
    move-object v0, p1

    check-cast v0, Lccsanandroid/animation/ObjectAnimator;

    .line 671
    .local v0, "objectAnim":Lccsanandroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Lccsanandroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "propertyName":Ljava/lang/String;
    const-string v2, "fillColor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "strokeColor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 673
    :cond_1
    iget-object v2, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Lccsanandroid/animation/ArgbEvaluator;

    if-nez v2, :cond_2

    .line 674
    new-instance v2, Lccsanandroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Lccsanandroid/animation/ArgbEvaluator;-><init>()V

    iput-object v2, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Lccsanandroid/animation/ArgbEvaluator;

    .line 676
    :cond_2
    iget-object v2, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mArgbEvaluator:Lccsanandroid/animation/ArgbEvaluator;

    invoke-virtual {v0, v2}, Lccsanandroid/animation/ObjectAnimator;->setEvaluator(Lccsanandroid/animation/TypeEvaluator;)V

    .line 679
    .end local v0    # "objectAnim":Lccsanandroid/animation/ObjectAnimator;
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static unregisterAnimationCallback(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 2
    .param p0, "dr"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p1, "callback"    # Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 899
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 902
    :cond_0
    instance-of v1, p0, Lccsanandroid/graphics/drawable/Animatable;

    if-nez v1, :cond_1

    .line 903
    return v0

    .line 906
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 907
    move-object v0, p0

    check-cast v0, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unregisterPlatformCallback(Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result v0

    return v0

    .line 909
    :cond_2
    move-object v0, p0

    check-cast v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unregisterAnimationCallback(Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    move-result v0

    return v0

    .line 900
    :cond_3
    :goto_0
    return v0
.end method

.method private static unregisterPlatformCallback(Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 1
    .param p0, "dr"    # Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;
    .param p1, "callback"    # Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 757
    invoke-virtual {p1}, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->getPlatformCallback()Lccsanandroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Lccsanandroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public applyTheme(Lccsanandroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Lccsanandroid/content/res/Resources$Theme;

    .line 522
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->applyTheme(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/Resources$Theme;)V

    .line 524
    return-void

    .line 527
    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 532
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->canApplyTheme(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 536
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearAnimationCallbacks()V
    .locals 1

    .line 856
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v0, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    .line 859
    return-void

    .line 861
    :cond_0
    invoke-direct {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->removeAnimatorSetListener()V

    .line 862
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 863
    return-void

    .line 866
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 867
    return-void
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    .line 143
    invoke-super {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->clearColorFilter()V

    return-void
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 284
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 286
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 289
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Lccsanandroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    .line 292
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 321
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->getAlpha(Lccsanandroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0

    .line 324
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 276
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 279
    :cond_0
    invoke-super {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget v1, v1, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Lccsanandroid/graphics/ColorFilter;
    .locals 1

    .line 347
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->getColorFilter(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0

    .line 350
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getColorFilter()Lccsanandroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 265
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 266
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;

    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableDelegateState;-><init>(Lccsanandroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getCurrent()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 143
    invoke-super {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getCurrent()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 420
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 423
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 412
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 415
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .line 143
    invoke-super {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .line 143
    invoke-super {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 404
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    .line 407
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPadding(Lccsanandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "x0"    # Lccsanandroid/graphics/Rect;

    .line 143
    invoke-super {p0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getPadding(Lccsanandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getState()[I
    .locals 1

    .line 143
    invoke-super {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Lccsanandroid/graphics/Region;
    .locals 1

    .line 143
    invoke-super {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->getTransparentRegion()Lccsanandroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Lccsanandroid/content/res/Resources;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->inflate(Lccsanandroid/content/res/Resources;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/content/res/Resources$Theme;)V

    .line 518
    return-void
.end method

.method public inflate(Lccsanandroid/content/res/Resources;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/content/res/Resources$Theme;)V
    .locals 9
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p4, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->inflate(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/Resources;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/content/res/Resources$Theme;)V

    .line 448
    return-void

    .line 450
    :cond_0
    invoke-interface {p2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 451
    .local v0, "eventType":I
    invoke-interface {p2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 454
    .local v1, "innerDepth":I
    :goto_0
    if-eq v0, v2, :cond_8

    .line 455
    invoke-interface {p2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v1, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    .line 456
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 457
    invoke-interface {p2}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "tagName":Ljava/lang/String;
    const-string v4, "animated-vector"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 462
    sget-object v4, Lccsanandroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATED_VECTOR_DRAWABLE:[I

    .line 463
    invoke-static {p1, p4, p3, v4}, Lccsanandroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v4

    .line 466
    .local v4, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v4, v5, v5}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 471
    .local v6, "drawableRes":I
    if-eqz v6, :cond_3

    .line 472
    invoke-static {p1, v6, p4}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v7

    .line 474
    .local v7, "vectorDrawable":Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    invoke-virtual {v7, v5}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAllowCaching(Z)V

    .line 475
    iget-object v5, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mCallback:Lccsanandroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v7, v5}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 476
    iget-object v5, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v5, v5, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz v5, :cond_2

    .line 477
    iget-object v5, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v5, v5, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 479
    :cond_2
    iget-object v5, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iput-object v7, v5, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 481
    .end local v7    # "vectorDrawable":Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    :cond_3
    invoke-virtual {v4}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .end local v4    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v6    # "drawableRes":I
    goto :goto_2

    .line 482
    :cond_4
    const-string/jumbo v4, "target"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 483
    sget-object v4, Lccsanandroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATED_VECTOR_DRAWABLE_TARGET:[I

    .line 484
    invoke-virtual {p1, p3, v4}, Lccsanandroid/content/res/Resources;->obtainAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v4

    .line 486
    .restart local v4    # "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v4, v5}, Lccsanandroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 489
    .local v6, "target":Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 492
    .local v5, "id":I
    if-eqz v5, :cond_6

    .line 493
    iget-object v7, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mContext:Lccsanandroid/content/Context;

    if-eqz v7, :cond_5

    .line 496
    invoke-static {v7, v5}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Lccsanandroid/content/Context;I)Lccsanandroid/animation/Animator;

    move-result-object v7

    .line 498
    .local v7, "objectAnimator":Lccsanandroid/animation/Animator;
    invoke-direct {p0, v6, v7}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setupAnimatorsForTarget(Ljava/lang/String;Lccsanandroid/animation/Animator;)V

    .line 499
    .end local v7    # "objectAnimator":Lccsanandroid/animation/Animator;
    goto :goto_1

    .line 500
    :cond_5
    invoke-virtual {v4}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 501
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v7, "Context can\'t be null when inflating animators"

    invoke-direct {v2, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_6
    :goto_1
    invoke-virtual {v4}, Lccsanandroid/content/res/TypedArray;->recycle()V

    nop

    .line 508
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v4    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v5    # "id":I
    .end local v6    # "target":Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-interface {p2}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    .line 511
    :cond_8
    iget-object v2, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    invoke-virtual {v2}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->setupAnimatorSet()V

    .line 512
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 428
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    .line 431
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 700
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v0, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    return v0

    .line 704
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Lccsanandroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 397
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->isStateful()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .line 143
    invoke-super {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 193
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    .line 198
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;

    .line 296
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 298
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 301
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 313
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 316
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 305
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 308
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setState([I)Z

    move-result v0

    return v0
.end method

.method public registerAnimationCallback(Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 2
    .param p1, "callback"    # Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 763
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v0, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerPlatformCallback(Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 766
    return-void

    .line 769
    :cond_0
    if-nez p1, :cond_1

    .line 770
    return-void

    .line 774
    :cond_1
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 778
    :cond_2
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 780
    return-void

    .line 783
    :cond_3
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Lccsanandroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_4

    .line 788
    new-instance v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;

    invoke-direct {v0, p0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$2;-><init>(Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    iput-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Lccsanandroid/animation/Animator$AnimatorListener;

    .line 810
    :cond_4
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Lccsanandroid/animation/AnimatorSet;

    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatorListener:Lccsanandroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lccsanandroid/animation/AnimatorSet;->addListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 811
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 329
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 331
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAlpha(I)V

    .line 334
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .line 436
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Lccsanandroid/graphics/drawable/Drawable;Z)V

    .line 438
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAutoMirrored(Z)V

    .line 441
    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0
    .param p1, "x0"    # I

    .line 143
    invoke-super {p0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 143
    invoke-super {p0, p1, p2}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Lccsanandroid/graphics/ColorFilter;

    .line 338
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 340
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 343
    return-void
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .line 143
    invoke-super {p0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "x1"    # F

    .line 143
    invoke-super {p0, p1, p2}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 1
    .param p1, "x0"    # [I

    .line 143
    invoke-super {p0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .line 355
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTint(Lccsanandroid/graphics/drawable/Drawable;I)V

    .line 357
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTint(I)V

    .line 361
    return-void
.end method

.method public setTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 365
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 367
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 371
    return-void
.end method

.method public setTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 375
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 377
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 381
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 385
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0

    .line 388
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setVisible(ZZ)Z

    .line 389
    invoke-super {p0, p1, p2}, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .line 709
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v0, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 712
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Lccsanandroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    return-void

    .line 719
    :cond_1
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Lccsanandroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->start()V

    .line 720
    invoke-virtual {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    .line 721
    return-void
.end method

.method public stop()V
    .locals 1

    .line 725
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v0, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 728
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimatedVectorState:Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;

    iget-object v0, v0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Lccsanandroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lccsanandroid/animation/AnimatorSet;->end()V

    .line 731
    return-void
.end method

.method public unregisterAnimationCallback(Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 2
    .param p1, "callback"    # Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 836
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v0, Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-static {v0, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unregisterPlatformCallback(Lccsanandroid/graphics/drawable/AnimatedVectorDrawable;Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    .line 841
    :cond_0
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 845
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 848
    .local v0, "removed":Z
    iget-object v1, p0, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 849
    invoke-direct {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->removeAnimatorSetListener()V

    .line 851
    :cond_2
    return v0

    .line 843
    .end local v0    # "removed":Z
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
