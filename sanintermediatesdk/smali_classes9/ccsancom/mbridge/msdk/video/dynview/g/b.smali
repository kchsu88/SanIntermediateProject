.class public final Lccsancom/mbridge/msdk/video/dynview/g/b;
.super Ljava/lang/Object;
.source "MBridgeUIAnim.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lccsanandroid/util/Property;F)Lccsanandroid/animation/PropertyValuesHolder;
    .locals 7

    .line 263
    const/16 v0, 0xb

    new-array v0, v0, [Lccsanandroid/animation/Keyframe;

    .line 264
    const/4 v1, 0x0

    invoke-static {v1, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x3ecccccd    # 0.4f

    sub-float v2, p2, v1

    .line 265
    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const v2, 0x3e4ccccd    # 0.2f

    sub-float v4, p2, v2

    .line 266
    invoke-static {v2, v4}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    const v2, 0x3e99999a    # 0.3f

    add-float v5, p2, v2

    .line 267
    invoke-static {v2, v5}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v0, v6

    .line 268
    invoke-static {v1, v4}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 269
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1, v5}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sub-float v1, p2, v3

    .line 270
    const v2, 0x3f19999a    # 0.6f

    invoke-static {v2, v1}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 271
    const v1, 0x3f333333    # 0.7f

    invoke-static {v1, v5}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 272
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v1, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    add-float/2addr v3, p2

    .line 273
    const v1, 0x3f666666    # 0.9f

    invoke-static {v1, v3}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 274
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object p2

    const/16 v1, 0xa

    aput-object p2, v0, v1

    .line 263
    invoke-static {p1, v0}, Lccsanandroid/animation/PropertyValuesHolder;->ofKeyframe(Lccsanandroid/util/Property;[Lccsanandroid/animation/Keyframe;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 276
    return-object p1
.end method

.method private b(Lccsanandroid/util/Property;F)Lccsanandroid/animation/PropertyValuesHolder;
    .locals 5

    .line 287
    const/16 v0, 0xb

    new-array v0, v0, [Lccsanandroid/animation/Keyframe;

    .line 288
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/high16 v2, -0x40000000    # -2.0f

    mul-float v2, v2, p2

    .line 289
    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 290
    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/high16 v3, 0x40000000    # 2.0f

    mul-float p2, p2, v3

    .line 291
    const v3, 0x3e99999a    # 0.3f

    invoke-static {v3, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    .line 292
    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v3, v2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v0, v4

    .line 293
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v0, v4

    .line 294
    const v3, 0x3f19999a    # 0.6f

    invoke-static {v3, v2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v0, v4

    .line 295
    const v3, 0x3f333333    # 0.7f

    invoke-static {v3, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v0, v4

    .line 296
    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v3, v2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v0, v3

    .line 297
    const v2, 0x3f666666    # 0.9f

    invoke-static {v2, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object p2

    const/16 v2, 0x9

    aput-object p2, v0, v2

    .line 298
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, v1}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object p2

    const/16 v1, 0xa

    aput-object p2, v0, v1

    .line 287
    invoke-static {p1, v0}, Lccsanandroid/animation/PropertyValuesHolder;->ofKeyframe(Lccsanandroid/util/Property;[Lccsanandroid/animation/Keyframe;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 300
    return-object p1
.end method

.method private c(Lccsanandroid/util/Property;F)Lccsanandroid/animation/PropertyValuesHolder;
    .locals 5

    .line 311
    const/16 v0, 0xb

    new-array v0, v0, [Lccsanandroid/animation/Keyframe;

    .line 312
    const/4 v1, 0x0

    invoke-static {v1, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x3ecccccd    # 0.4f

    sub-float v2, p2, v1

    .line 313
    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 314
    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 315
    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    .line 316
    invoke-static {v1, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 317
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 318
    const v1, 0x3f19999a    # 0.6f

    invoke-static {v1, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 319
    const v1, 0x3f333333    # 0.7f

    invoke-static {v1, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 320
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v1, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 321
    const v1, 0x3f666666    # 0.9f

    invoke-static {v1, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 322
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object p2

    const/16 v1, 0xa

    aput-object p2, v0, v1

    .line 311
    invoke-static {p1, v0}, Lccsanandroid/animation/PropertyValuesHolder;->ofKeyframe(Lccsanandroid/util/Property;[Lccsanandroid/animation/Keyframe;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 324
    return-object p1
.end method


# virtual methods
.method public final a(Lccsanandroid/view/View;)Lccsanandroid/animation/ObjectAnimator;
    .locals 5

    .line 37
    nop

    .line 1193
    sget-object v0, Lccsanandroid/view/View;->SCALE_X:Lccsanandroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/video/dynview/g/b;->a(Lccsanandroid/util/Property;F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1194
    sget-object v2, Lccsanandroid/view/View;->SCALE_Y:Lccsanandroid/util/Property;

    invoke-direct {p0, v2, v1}, Lccsancom/mbridge/msdk/video/dynview/g/b;->a(Lccsanandroid/util/Property;F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1195
    sget-object v2, Lccsanandroid/view/View;->ROTATION_X:Lccsanandroid/util/Property;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {p0, v2, v3}, Lccsancom/mbridge/msdk/video/dynview/g/b;->b(Lccsanandroid/util/Property;F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1196
    const/4 v3, 0x3

    new-array v3, v3, [Lccsanandroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {p1, v3}, Lccsanandroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lccsanandroid/animation/PropertyValuesHolder;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object p1

    .line 37
    nop

    .line 38
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lccsanandroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 39
    return-object p1
.end method

.method public final a(Lccsanandroid/view/View;IIIIJ)V
    .locals 3

    .line 153
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    invoke-static {v1}, Lccsanandroid/animation/ValueAnimator;->ofInt([I)Lccsanandroid/animation/ValueAnimator;

    move-result-object p3

    .line 154
    new-instance v1, Lccsancom/mbridge/msdk/video/dynview/g/b$3;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/video/dynview/g/b$3;-><init>(Lccsancom/mbridge/msdk/video/dynview/g/b;Lccsanandroid/view/View;)V

    invoke-virtual {p3, v1}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 163
    new-array v1, v0, [I

    aput p4, v1, v2

    aput p5, v1, p2

    invoke-static {v1}, Lccsanandroid/animation/ValueAnimator;->ofInt([I)Lccsanandroid/animation/ValueAnimator;

    move-result-object p4

    .line 164
    new-instance p5, Lccsancom/mbridge/msdk/video/dynview/g/b$4;

    invoke-direct {p5, p0, p1}, Lccsancom/mbridge/msdk/video/dynview/g/b$4;-><init>(Lccsancom/mbridge/msdk/video/dynview/g/b;Lccsanandroid/view/View;)V

    invoke-virtual {p4, p5}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    new-instance p1, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {p1}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 177
    new-array p5, v0, [Lccsanandroid/animation/Animator;

    aput-object p3, p5, v2

    aput-object p4, p5, p2

    invoke-virtual {p1, p5}, Lccsanandroid/animation/AnimatorSet;->playTogether([Lccsanandroid/animation/Animator;)V

    .line 178
    invoke-virtual {p1, p6, p7}, Lccsanandroid/animation/AnimatorSet;->setDuration(J)Lccsanandroid/animation/AnimatorSet;

    .line 179
    invoke-virtual {p1}, Lccsanandroid/animation/AnimatorSet;->start()V

    .line 180
    return-void
.end method

.method public final a(Lccsanandroid/view/View;IIJ)V
    .locals 2

    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {v0}, Lccsanandroid/animation/ValueAnimator;->ofInt([I)Lccsanandroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, p4, p5}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    move-result-object p2

    .line 141
    new-instance p3, Lccsancom/mbridge/msdk/video/dynview/g/b$2;

    invoke-direct {p3, p0, p1}, Lccsancom/mbridge/msdk/video/dynview/g/b$2;-><init>(Lccsancom/mbridge/msdk/video/dynview/g/b;Lccsanandroid/view/View;)V

    invoke-virtual {p2, p3}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 148
    invoke-virtual {p2}, Lccsanandroid/animation/ValueAnimator;->start()V

    .line 149
    return-void
.end method

.method public final a(Lccsanandroid/view/View;J)V
    .locals 5

    .line 84
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->h(Lccsanandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 85
    float-to-int v0, v0

    .line 2210
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 2211
    new-array v1, v3, [I

    aput v4, v1, v4

    aput v0, v1, v2

    invoke-static {v1}, Lccsanandroid/animation/ValueAnimator;->ofInt([I)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    .line 2213
    :cond_0
    new-array v1, v3, [I

    aput v0, v1, v4

    aput v4, v1, v2

    invoke-static {v1}, Lccsanandroid/animation/ValueAnimator;->ofInt([I)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    .line 2215
    :goto_0
    invoke-virtual {v0, p2, p3}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    .line 2216
    new-instance p2, Lccsancom/mbridge/msdk/video/dynview/g/b$5;

    invoke-direct {p2, p0, p1}, Lccsancom/mbridge/msdk/video/dynview/g/b$5;-><init>(Lccsancom/mbridge/msdk/video/dynview/g/b;Lccsanandroid/view/View;)V

    invoke-virtual {v0, p2}, Lccsanandroid/animation/ValueAnimator;->addUpdateListener(Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2224
    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->start()V

    .line 86
    return-void
.end method

.method public final b(Lccsanandroid/view/View;)Lccsanandroid/animation/ObjectAnimator;
    .locals 4

    .line 46
    nop

    .line 1237
    sget-object v0, Lccsanandroid/view/View;->SCALE_X:Lccsanandroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/video/dynview/g/b;->c(Lccsanandroid/util/Property;F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1238
    sget-object v2, Lccsanandroid/view/View;->SCALE_Y:Lccsanandroid/util/Property;

    invoke-direct {p0, v2, v1}, Lccsancom/mbridge/msdk/video/dynview/g/b;->c(Lccsanandroid/util/Property;F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1239
    const/4 v2, 0x2

    new-array v2, v2, [Lccsanandroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Lccsanandroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lccsanandroid/animation/PropertyValuesHolder;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object p1

    .line 46
    nop

    .line 47
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lccsanandroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 48
    return-object p1
.end method

.method public final b(Lccsanandroid/view/View;J)V
    .locals 2

    .line 95
    if-eqz p1, :cond_0

    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 97
    invoke-virtual {p1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewPropertyAnimator;->alpha(F)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lccsanandroid/view/ViewPropertyAnimator;->setDuration(J)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lccsancom/mbridge/msdk/video/dynview/g/b$1;

    invoke-direct {p3, p0, p1}, Lccsancom/mbridge/msdk/video/dynview/g/b$1;-><init>(Lccsancom/mbridge/msdk/video/dynview/g/b;Lccsanandroid/view/View;)V

    invoke-virtual {p2, p3}, Lccsanandroid/view/ViewPropertyAnimator;->setListener(Lccsanandroid/animation/Animator$AnimatorListener;)Lccsanandroid/view/ViewPropertyAnimator;

    .line 122
    :cond_0
    return-void
.end method

.method public final c(Lccsanandroid/view/View;)Lccsanandroid/animation/ObjectAnimator;
    .locals 3

    .line 72
    nop

    .line 1251
    sget-object v0, Lccsanandroid/view/View;->ROTATION:Lccsanandroid/util/Property;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/video/dynview/g/b;->b(Lccsanandroid/util/Property;F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1252
    const/4 v1, 0x1

    new-array v1, v1, [Lccsanandroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lccsanandroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lccsanandroid/animation/PropertyValuesHolder;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x384

    invoke-virtual {p1, v0, v1}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object p1

    .line 72
    nop

    .line 73
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lccsanandroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 74
    return-object p1
.end method

.method public final c(Lccsanandroid/view/View;J)V
    .locals 1

    .line 131
    if-eqz p1, :cond_0

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 134
    invoke-virtual {p1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewPropertyAnimator;->alpha(F)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lccsanandroid/view/ViewPropertyAnimator;->setDuration(J)Lccsanandroid/view/ViewPropertyAnimator;

    .line 136
    :cond_0
    return-void
.end method
