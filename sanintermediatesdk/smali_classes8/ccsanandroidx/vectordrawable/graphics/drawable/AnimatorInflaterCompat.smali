.class public Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final MAX_NUM_POINTS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    return-void
.end method

.method private static createAnimatorFromXml(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanorg/xmlpull/v1/XmlPullParser;F)Lccsanandroid/animation/Animator;
    .locals 8
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p4, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    invoke-static {p3}, Lccsanandroid/util/Xml;->asAttributeSet(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/util/AttributeSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/animation/AnimatorSet;IF)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/animation/AnimatorSet;IF)Lccsanandroid/animation/Animator;
    .locals 20
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p5, "parent"    # Lccsanandroid/animation/AnimatorSet;
    .param p6, "sequenceOrdering"    # I
    .param p7, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    const/4 v0, 0x0

    .line 510
    .local v0, "anim":Lccsanandroid/animation/Animator;
    const/4 v1, 0x0

    .line 514
    .local v1, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Animator;>;"
    invoke-interface/range {p3 .. p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    move-object v7, v0

    move-object v13, v1

    .line 516
    .end local v0    # "anim":Lccsanandroid/animation/Animator;
    .end local v1    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Animator;>;"
    .local v7, "anim":Lccsanandroid/animation/Animator;
    .local v12, "depth":I
    .local v13, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Animator;>;"
    :goto_0
    invoke-interface/range {p3 .. p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    .local v14, "type":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface/range {p3 .. p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v12, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v1, p0

    goto/16 :goto_3

    :cond_1
    :goto_1
    const/4 v0, 0x1

    if-eq v14, v0, :cond_a

    .line 519
    const/4 v0, 0x2

    if-eq v14, v0, :cond_2

    .line 520
    goto :goto_0

    .line 523
    :cond_2
    invoke-interface/range {p3 .. p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 524
    .local v15, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 526
    .local v16, "gotValues":Z
    const-string v0, "objectAnimator"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 527
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadObjectAnimator(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;FLccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    move-object/from16 v1, p0

    move-object v7, v0

    .end local v7    # "anim":Lccsanandroid/animation/Animator;
    .restart local v0    # "anim":Lccsanandroid/animation/Animator;
    goto/16 :goto_2

    .line 528
    .end local v0    # "anim":Lccsanandroid/animation/Animator;
    .restart local v7    # "anim":Lccsanandroid/animation/Animator;
    :cond_3
    const-string v0, "animator"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 529
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v5, p7

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v6}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;Lccsanandroid/animation/ValueAnimator;FLccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    move-object/from16 v1, p0

    move-object v7, v0

    .end local v7    # "anim":Lccsanandroid/animation/Animator;
    .restart local v0    # "anim":Lccsanandroid/animation/Animator;
    goto :goto_2

    .line 530
    .end local v0    # "anim":Lccsanandroid/animation/Animator;
    .restart local v7    # "anim":Lccsanandroid/animation/Animator;
    :cond_4
    const-string/jumbo v0, "set"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 531
    new-instance v0, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v0}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v17, v0

    .line 532
    .end local v7    # "anim":Lccsanandroid/animation/Animator;
    .local v17, "anim":Lccsanandroid/animation/Animator;
    sget-object v0, Lccsanandroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    move-object/from16 v7, p4

    invoke-static {v8, v9, v7, v0}, Lccsanandroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v6

    .line 535
    .local v6, "a":Lccsanandroid/content/res/TypedArray;
    const-string v0, "ordering"

    const/4 v1, 0x0

    invoke-static {v6, v10, v0, v1, v1}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v18

    .line 538
    .local v18, "ordering":I
    move-object/from16 v5, v17

    check-cast v5, Lccsanandroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v19, v6

    .end local v6    # "a":Lccsanandroid/content/res/TypedArray;
    .local v19, "a":Lccsanandroid/content/res/TypedArray;
    move/from16 v6, v18

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/animation/AnimatorSet;IF)Lccsanandroid/animation/Animator;

    .line 540
    invoke-virtual/range {v19 .. v19}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 541
    .end local v18    # "ordering":I
    .end local v19    # "a":Lccsanandroid/content/res/TypedArray;
    move-object/from16 v1, p0

    move-object/from16 v7, v17

    goto :goto_2

    .end local v17    # "anim":Lccsanandroid/animation/Animator;
    .restart local v7    # "anim":Lccsanandroid/animation/Animator;
    :cond_5
    const-string v0, "propertyValuesHolder"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 542
    nop

    .line 543
    invoke-static/range {p3 .. p3}, Lccsanandroid/util/Xml;->asAttributeSet(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/util/AttributeSet;

    move-result-object v0

    .line 542
    move-object/from16 v1, p0

    invoke-static {v1, v8, v9, v10, v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadValues(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;)[Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 544
    .local v0, "values":[Lccsanandroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_6

    instance-of v2, v7, Lccsanandroid/animation/ValueAnimator;

    if-eqz v2, :cond_6

    .line 545
    move-object v2, v7

    check-cast v2, Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Lccsanandroid/animation/ValueAnimator;->setValues([Lccsanandroid/animation/PropertyValuesHolder;)V

    .line 547
    :cond_6
    const/16 v16, 0x1

    .line 548
    .end local v0    # "values":[Lccsanandroid/animation/PropertyValuesHolder;
    nop

    .line 552
    :goto_2
    if-eqz v11, :cond_8

    if-nez v16, :cond_8

    .line 553
    if-nez v13, :cond_7

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 556
    :cond_7
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "gotValues":Z
    :cond_8
    goto/16 :goto_0

    .line 549
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "gotValues":Z
    :cond_9
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown animator name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "gotValues":Z
    :cond_a
    move-object/from16 v1, p0

    .line 559
    :goto_3
    if-eqz v11, :cond_d

    if-eqz v13, :cond_d

    .line 560
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lccsanandroid/animation/Animator;

    .line 561
    .local v0, "animsArray":[Lccsanandroid/animation/Animator;
    const/4 v2, 0x0

    .line 562
    .local v2, "index":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/animation/Animator;

    .line 563
    .local v4, "a":Lccsanandroid/animation/Animator;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    aput-object v4, v0, v2

    .line 564
    .end local v4    # "a":Lccsanandroid/animation/Animator;
    move v2, v5

    goto :goto_4

    .line 565
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_b
    if-nez p6, :cond_c

    .line 566
    invoke-virtual {v11, v0}, Lccsanandroid/animation/AnimatorSet;->playTogether([Lccsanandroid/animation/Animator;)V

    goto :goto_5

    .line 568
    :cond_c
    invoke-virtual {v11, v0}, Lccsanandroid/animation/AnimatorSet;->playSequentially([Lccsanandroid/animation/Animator;)V

    .line 571
    .end local v0    # "animsArray":[Lccsanandroid/animation/Animator;
    .end local v2    # "index":I
    :cond_d
    :goto_5
    return-object v7
.end method

.method private static createNewKeyframe(Lccsanandroid/animation/Keyframe;F)Lccsanandroid/animation/Keyframe;
    .locals 2
    .param p0, "sampleKeyframe"    # Lccsanandroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .line 779
    invoke-virtual {p0}, Lccsanandroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 780
    invoke-static {p1}, Lccsanandroid/animation/Keyframe;->ofFloat(F)Lccsanandroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    .line 781
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 782
    invoke-static {p1}, Lccsanandroid/animation/Keyframe;->ofInt(F)Lccsanandroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    .line 783
    :cond_1
    invoke-static {p1}, Lccsanandroid/animation/Keyframe;->ofObject(F)Lccsanandroid/animation/Keyframe;

    move-result-object v0

    .line 779
    :goto_0
    return-object v0
.end method

.method private static distributeKeyframes([Lccsanandroid/animation/Keyframe;FII)V
    .locals 5
    .param p0, "keyframes"    # [Lccsanandroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 806
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    .line 807
    .local v0, "count":I
    int-to-float v1, v0

    div-float v1, p1, v1

    .line 808
    .local v1, "increment":F
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_0

    .line 809
    aget-object v3, p0, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lccsanandroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v3, v4}, Lccsanandroid/animation/Keyframe;->setFraction(F)V

    .line 808
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 811
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .param p0, "keyframes"    # [Ljava/lang/Object;
    .param p1, "header"    # Ljava/lang/String;

    .line 673
    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 676
    :cond_0
    const-string v0, "AnimatorInflater"

    invoke-static {v0, p1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    array-length v1, p0

    .line 678
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 679
    aget-object v3, p0, v2

    check-cast v3, Lccsanandroid/animation/Keyframe;

    .line 680
    .local v3, "keyframe":Lccsanandroid/animation/Keyframe;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyframe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": fraction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v3}, Lccsanandroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/4 v6, 0x0

    const-string v7, "null"

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    move-object v5, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lccsanandroid/animation/Keyframe;->getFraction()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", , value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v3}, Lccsanandroid/animation/Keyframe;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lccsanandroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 680
    invoke-static {v0, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v3    # "keyframe":Lccsanandroid/animation/Keyframe;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 684
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 674
    .end local v1    # "count":I
    :cond_4
    :goto_2
    return-void
.end method

.method private static getPVH(Lccsanandroid/content/res/TypedArray;IIILjava/lang/String;)Lccsanandroid/animation/PropertyValuesHolder;
    .locals 22
    .param p0, "styledAttributes"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    .line 207
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->peekValue(I)Lccsanandroid/util/TypedValue;

    move-result-object v4

    .line 208
    .local v4, "tvFrom":Lccsanandroid/util/TypedValue;
    if-eqz v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 209
    .local v7, "hasFrom":Z
    :goto_0
    if-eqz v7, :cond_1

    iget v8, v4, Lccsanandroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 210
    .local v8, "fromType":I
    :goto_1
    invoke-virtual {v0, v2}, Lccsanandroid/content/res/TypedArray;->peekValue(I)Lccsanandroid/util/TypedValue;

    move-result-object v9

    .line 211
    .local v9, "tvTo":Lccsanandroid/util/TypedValue;
    if-eqz v9, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 212
    .local v10, "hasTo":Z
    :goto_2
    if-eqz v10, :cond_3

    iget v11, v9, Lccsanandroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 214
    .local v11, "toType":I
    :goto_3
    const/4 v12, 0x4

    move/from16 v13, p1

    if-ne v13, v12, :cond_7

    .line 216
    if-eqz v7, :cond_4

    invoke-static {v8}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_4
    if-eqz v10, :cond_6

    invoke-static {v11}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 217
    :cond_5
    const/4 v12, 0x3

    .end local p1    # "valueType":I
    .local v12, "valueType":I
    goto :goto_4

    .line 219
    .end local v12    # "valueType":I
    .restart local p1    # "valueType":I
    :cond_6
    const/4 v12, 0x0

    .end local p1    # "valueType":I
    .restart local v12    # "valueType":I
    goto :goto_4

    .line 214
    .end local v12    # "valueType":I
    .restart local p1    # "valueType":I
    :cond_7
    move v12, v13

    .line 223
    .end local p1    # "valueType":I
    .restart local v12    # "valueType":I
    :goto_4
    if-nez v12, :cond_8

    const/4 v13, 0x1

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    .line 225
    .local v13, "getFloats":Z
    :goto_5
    const/4 v14, 0x0

    .line 227
    .local v14, "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    const/4 v15, 0x2

    if-ne v12, v15, :cond_f

    .line 228
    invoke-virtual {v0, v1}, Lccsanandroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "fromString":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lccsanandroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "toString":Ljava/lang/String;
    nop

    .line 232
    invoke-static {v5}, Lccsanandroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Lccsanandroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v15

    .line 233
    .local v15, "nodesFrom":[Lccsanandroidx/core/graphics/PathParser$PathDataNode;
    nop

    .line 234
    move-object/from16 v18, v4

    .end local v4    # "tvFrom":Lccsanandroid/util/TypedValue;
    .local v18, "tvFrom":Lccsanandroid/util/TypedValue;
    invoke-static {v6}, Lccsanandroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Lccsanandroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v4

    .line 235
    .local v4, "nodesTo":[Lccsanandroidx/core/graphics/PathParser$PathDataNode;
    if-nez v15, :cond_a

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    move-object/from16 v19, v9

    move/from16 v20, v11

    move-object/from16 v21, v14

    goto/16 :goto_8

    .line 236
    :cond_a
    :goto_6
    if-eqz v15, :cond_d

    .line 237
    new-instance v19, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    invoke-direct/range {v19 .. v19}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    move-object/from16 v20, v19

    .line 238
    .local v20, "evaluator":Lccsanandroid/animation/TypeEvaluator;
    if-eqz v4, :cond_c

    .line 239
    invoke-static {v15, v4}, Lccsanandroidx/core/graphics/PathParser;->canMorph([Lccsanandroidx/core/graphics/PathParser$PathDataNode;[Lccsanandroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 243
    move-object/from16 v19, v9

    const/4 v9, 0x2

    .end local v9    # "tvTo":Lccsanandroid/util/TypedValue;
    .local v19, "tvTo":Lccsanandroid/util/TypedValue;
    new-array v9, v9, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v15, v9, v17

    const/16 v16, 0x1

    aput-object v4, v9, v16

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    .end local v20    # "evaluator":Lccsanandroid/animation/TypeEvaluator;
    .local v14, "evaluator":Lccsanandroid/animation/TypeEvaluator;
    .local v21, "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    invoke-static {v3, v14, v9}, Lccsanandroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lccsanandroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v9

    move-object v14, v9

    move/from16 v20, v11

    .end local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .local v9, "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    goto :goto_7

    .line 240
    .end local v19    # "tvTo":Lccsanandroid/util/TypedValue;
    .local v9, "tvTo":Lccsanandroid/util/TypedValue;
    .local v14, "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v20    # "evaluator":Lccsanandroid/animation/TypeEvaluator;
    :cond_b
    move-object/from16 v19, v9

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    .end local v9    # "tvTo":Lccsanandroid/util/TypedValue;
    .end local v20    # "evaluator":Lccsanandroid/animation/TypeEvaluator;
    .local v14, "evaluator":Lccsanandroid/animation/TypeEvaluator;
    .restart local v19    # "tvTo":Lccsanandroid/util/TypedValue;
    .restart local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    new-instance v9, Lccsanandroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v11

    .end local v11    # "toType":I
    .local v20, "toType":I
    const-string v11, " Can\'t morph from "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lccsanandroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 246
    .end local v19    # "tvTo":Lccsanandroid/util/TypedValue;
    .end local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v9    # "tvTo":Lccsanandroid/util/TypedValue;
    .restart local v11    # "toType":I
    .local v14, "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .local v20, "evaluator":Lccsanandroid/animation/TypeEvaluator;
    :cond_c
    move-object/from16 v19, v9

    move-object/from16 v21, v14

    move-object/from16 v14, v20

    move/from16 v20, v11

    .end local v9    # "tvTo":Lccsanandroid/util/TypedValue;
    .end local v11    # "toType":I
    .local v14, "evaluator":Lccsanandroid/animation/TypeEvaluator;
    .restart local v19    # "tvTo":Lccsanandroid/util/TypedValue;
    .local v20, "toType":I
    .restart local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v15, v2, v9

    invoke-static {v3, v14, v2}, Lccsanandroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lccsanandroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v2

    move-object v14, v2

    .line 249
    .end local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .local v14, "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    :goto_7
    goto :goto_9

    .end local v19    # "tvTo":Lccsanandroid/util/TypedValue;
    .end local v20    # "toType":I
    .restart local v9    # "tvTo":Lccsanandroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_d
    move-object/from16 v19, v9

    move/from16 v20, v11

    move-object/from16 v21, v14

    .end local v9    # "tvTo":Lccsanandroid/util/TypedValue;
    .end local v11    # "toType":I
    .end local v14    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v19    # "tvTo":Lccsanandroid/util/TypedValue;
    .restart local v20    # "toType":I
    .restart local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    if-eqz v4, :cond_e

    .line 250
    new-instance v2, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    invoke-direct {v2}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    .line 251
    .local v2, "evaluator":Lccsanandroid/animation/TypeEvaluator;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v9, v11

    invoke-static {v3, v2, v9}, Lccsanandroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lccsanandroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v14

    .end local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    goto :goto_9

    .line 255
    .end local v2    # "evaluator":Lccsanandroid/animation/TypeEvaluator;
    .end local v4    # "nodesTo":[Lccsanandroidx/core/graphics/PathParser$PathDataNode;
    .end local v5    # "fromString":Ljava/lang/String;
    .end local v6    # "toString":Ljava/lang/String;
    .end local v15    # "nodesFrom":[Lccsanandroidx/core/graphics/PathParser$PathDataNode;
    .end local v19    # "tvTo":Lccsanandroid/util/TypedValue;
    .end local v20    # "toType":I
    .restart local v9    # "tvTo":Lccsanandroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_e
    :goto_8
    move-object/from16 v14, v21

    .end local v9    # "tvTo":Lccsanandroid/util/TypedValue;
    .end local v11    # "toType":I
    .restart local v19    # "tvTo":Lccsanandroid/util/TypedValue;
    .restart local v20    # "toType":I
    :goto_9
    move/from16 v11, p3

    move/from16 v9, v20

    goto/16 :goto_12

    .line 256
    .end local v18    # "tvFrom":Lccsanandroid/util/TypedValue;
    .end local v19    # "tvTo":Lccsanandroid/util/TypedValue;
    .end local v20    # "toType":I
    .local v4, "tvFrom":Lccsanandroid/util/TypedValue;
    .restart local v9    # "tvTo":Lccsanandroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_f
    move-object/from16 v18, v4

    move-object/from16 v19, v9

    move/from16 v20, v11

    move-object/from16 v21, v14

    .end local v4    # "tvFrom":Lccsanandroid/util/TypedValue;
    .end local v9    # "tvTo":Lccsanandroid/util/TypedValue;
    .end local v11    # "toType":I
    .end local v14    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v18    # "tvFrom":Lccsanandroid/util/TypedValue;
    .restart local v19    # "tvTo":Lccsanandroid/util/TypedValue;
    .restart local v20    # "toType":I
    .restart local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    const/4 v2, 0x0

    .line 258
    .restart local v2    # "evaluator":Lccsanandroid/animation/TypeEvaluator;
    const/4 v4, 0x3

    if-ne v12, v4, :cond_10

    .line 260
    invoke-static {}, Lccsanandroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Lccsanandroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    move-result-object v2

    .line 262
    :cond_10
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v13, :cond_16

    .line 265
    if-eqz v7, :cond_14

    .line 266
    if-ne v8, v4, :cond_11

    .line 267
    invoke-virtual {v0, v1, v5}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .local v6, "valueFrom":F
    goto :goto_a

    .line 269
    .end local v6    # "valueFrom":F
    :cond_11
    invoke-virtual {v0, v1, v5}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 271
    .restart local v6    # "valueFrom":F
    :goto_a
    if-eqz v10, :cond_13

    .line 272
    move/from16 v9, v20

    .end local v20    # "toType":I
    .local v9, "toType":I
    if-ne v9, v4, :cond_12

    .line 273
    move/from16 v11, p3

    invoke-virtual {v0, v11, v5}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .local v4, "valueTo":F
    goto :goto_b

    .line 275
    .end local v4    # "valueTo":F
    :cond_12
    move/from16 v11, p3

    invoke-virtual {v0, v11, v5}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 277
    .restart local v4    # "valueTo":F
    :goto_b
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v14, 0x0

    aput v6, v5, v14

    const/4 v15, 0x1

    aput v4, v5, v15

    invoke-static {v3, v5}, Lccsanandroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v5

    move-object v14, v5

    .end local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .local v5, "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    goto :goto_d

    .line 280
    .end local v4    # "valueTo":F
    .end local v5    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .end local v9    # "toType":I
    .restart local v20    # "toType":I
    .restart local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    :cond_13
    move/from16 v11, p3

    move/from16 v9, v20

    const/4 v14, 0x0

    const/4 v15, 0x1

    .end local v20    # "toType":I
    .restart local v9    # "toType":I
    new-array v4, v15, [F

    aput v6, v4, v14

    invoke-static {v3, v4}, Lccsanandroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v4

    move-object v14, v4

    .end local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .local v4, "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    goto :goto_d

    .line 283
    .end local v4    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .end local v6    # "valueFrom":F
    .end local v9    # "toType":I
    .restart local v20    # "toType":I
    .restart local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    :cond_14
    move/from16 v11, p3

    move/from16 v9, v20

    .end local v20    # "toType":I
    .restart local v9    # "toType":I
    if-ne v9, v4, :cond_15

    .line 284
    invoke-virtual {v0, v11, v5}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .local v4, "valueTo":F
    goto :goto_c

    .line 286
    .end local v4    # "valueTo":F
    :cond_15
    invoke-virtual {v0, v11, v5}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 288
    .restart local v4    # "valueTo":F
    :goto_c
    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    invoke-static {v3, v5}, Lccsanandroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v5

    move-object v14, v5

    .line 290
    .end local v4    # "valueTo":F
    .end local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    :goto_d
    goto/16 :goto_11

    .line 293
    .end local v9    # "toType":I
    .end local v14    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v20    # "toType":I
    .restart local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    :cond_16
    move/from16 v11, p3

    move/from16 v9, v20

    .end local v20    # "toType":I
    .restart local v9    # "toType":I
    if-eqz v7, :cond_1c

    .line 294
    if-ne v8, v4, :cond_17

    .line 295
    invoke-virtual {v0, v1, v5}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    .local v6, "valueFrom":I
    goto :goto_e

    .line 296
    .end local v6    # "valueFrom":I
    :cond_17
    invoke-static {v8}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 297
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move v6, v14

    .local v14, "valueFrom":I
    goto :goto_e

    .line 299
    .end local v14    # "valueFrom":I
    :cond_18
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move v6, v14

    .line 301
    .restart local v6    # "valueFrom":I
    :goto_e
    if-eqz v10, :cond_1b

    .line 302
    if-ne v9, v4, :cond_19

    .line 303
    invoke-virtual {v0, v11, v5}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    move v5, v4

    const/4 v4, 0x0

    .local v4, "valueTo":I
    goto :goto_f

    .line 304
    .end local v4    # "valueTo":I
    :cond_19
    invoke-static {v9}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 305
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .local v5, "valueTo":I
    goto :goto_f

    .line 307
    .end local v5    # "valueTo":I
    :cond_1a
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 309
    .restart local v5    # "valueTo":I
    :goto_f
    const/4 v14, 0x2

    new-array v14, v14, [I

    aput v6, v14, v4

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v3, v14}, Lccsanandroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v14

    .end local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .local v14, "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    goto :goto_11

    .line 311
    .end local v5    # "valueTo":I
    .end local v14    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    :cond_1b
    const/4 v4, 0x0

    const/4 v15, 0x1

    new-array v5, v15, [I

    aput v6, v5, v4

    invoke-static {v3, v5}, Lccsanandroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v14

    .end local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    goto :goto_11

    .line 314
    .end local v6    # "valueFrom":I
    .end local v14    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    :cond_1c
    if-eqz v10, :cond_1f

    .line 315
    if-ne v9, v4, :cond_1d

    .line 316
    invoke-virtual {v0, v11, v5}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    move v5, v4

    const/4 v4, 0x0

    .restart local v4    # "valueTo":I
    goto :goto_10

    .line 317
    .end local v4    # "valueTo":I
    :cond_1d
    invoke-static {v9}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 318
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .restart local v5    # "valueTo":I
    goto :goto_10

    .line 320
    .end local v5    # "valueTo":I
    :cond_1e
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 322
    .restart local v5    # "valueTo":I
    :goto_10
    const/4 v6, 0x1

    new-array v6, v6, [I

    aput v5, v6, v4

    invoke-static {v3, v6}, Lccsanandroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v14

    .end local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    goto :goto_11

    .line 314
    .end local v5    # "valueTo":I
    .end local v14    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    :cond_1f
    move-object/from16 v14, v21

    .line 326
    .end local v21    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Lccsanandroid/animation/PropertyValuesHolder;
    :goto_11
    if-eqz v14, :cond_20

    if-eqz v2, :cond_20

    .line 327
    invoke-virtual {v14, v2}, Lccsanandroid/animation/PropertyValuesHolder;->setEvaluator(Lccsanandroid/animation/TypeEvaluator;)V

    .line 331
    .end local v2    # "evaluator":Lccsanandroid/animation/TypeEvaluator;
    :cond_20
    :goto_12
    return-object v14
.end method

.method private static inferValueTypeFromValues(Lccsanandroid/content/res/TypedArray;II)I
    .locals 7
    .param p0, "styledAttributes"    # Lccsanandroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    .line 655
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/TypedArray;->peekValue(I)Lccsanandroid/util/TypedValue;

    move-result-object v0

    .line 656
    .local v0, "tvFrom":Lccsanandroid/util/TypedValue;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 657
    .local v3, "hasFrom":Z
    :goto_0
    if-eqz v3, :cond_1

    iget v4, v0, Lccsanandroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 658
    .local v4, "fromType":I
    :goto_1
    invoke-virtual {p0, p2}, Lccsanandroid/content/res/TypedArray;->peekValue(I)Lccsanandroid/util/TypedValue;

    move-result-object v5

    .line 659
    .local v5, "tvTo":Lccsanandroid/util/TypedValue;
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 660
    .local v1, "hasTo":Z
    :goto_2
    if-eqz v1, :cond_3

    iget v2, v5, Lccsanandroid/util/TypedValue;->type:I

    .line 664
    .local v2, "toType":I
    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v4}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    invoke-static {v2}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 665
    :cond_5
    const/4 v6, 0x3

    .local v6, "valueType":I
    goto :goto_3

    .line 667
    .end local v6    # "valueType":I
    :cond_6
    const/4 v6, 0x0

    .line 669
    .restart local v6    # "valueType":I
    :goto_3
    return v6
.end method

.method private static inferValueTypeOfKeyframe(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;Lccsanorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .param p0, "res"    # Lccsanandroid/content/res/Resources;
    .param p1, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;

    .line 636
    sget-object v0, Lccsanandroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static {p0, p1, p2, v0}, Lccsanandroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 639
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    invoke-static {v0, p3, v1, v2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->peekNamedValue(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Lccsanandroid/util/TypedValue;

    move-result-object v1

    .line 641
    .local v1, "keyframeValue":Lccsanandroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 644
    .local v2, "hasValue":Z
    :cond_0
    if-eqz v2, :cond_1

    iget v3, v1, Lccsanandroid/util/TypedValue;->type:I

    invoke-static {v3}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 645
    const/4 v3, 0x3

    .local v3, "valueType":I
    goto :goto_0

    .line 647
    .end local v3    # "valueType":I
    :cond_1
    const/4 v3, 0x0

    .line 649
    .restart local v3    # "valueType":I
    :goto_0
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 650
    return v3
.end method

.method private static isColorType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 917
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadAnimator(Lccsanandroid/content/Context;I)Lccsanandroid/animation/Animator;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 100
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 101
    invoke-static {p0, p1}, Lccsanandroid/animation/AnimatorInflater;->loadAnimator(Lccsanandroid/content/Context;I)Lccsanandroid/animation/Animator;

    move-result-object v0

    .local v0, "objectAnimator":Lccsanandroid/animation/Animator;
    goto :goto_0

    .line 103
    .end local v0    # "objectAnimator":Lccsanandroid/animation/Animator;
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;I)Lccsanandroid/animation/Animator;

    move-result-object v0

    .line 105
    .restart local v0    # "objectAnimator":Lccsanandroid/animation/Animator;
    :goto_0
    return-object v0
.end method

.method public static loadAnimator(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;I)Lccsanandroid/animation/Animator;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resources"    # Lccsanandroid/content/res/Resources;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 119
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, p3, v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;IF)Lccsanandroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;IF)Lccsanandroid/animation/Animator;
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "resources"    # Lccsanandroid/content/res/Resources;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p3, "id"    # I
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 129
    const-string v0, "Can\'t load animation resource ID #0x"

    const/4 v1, 0x0

    .line 131
    .local v1, "parser":Lccsanandroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1, p3}, Lccsanandroid/content/res/Resources;->getAnimation(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 132
    invoke-static {p0, p1, p2, v1, p4}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanorg/xmlpull/v1/XmlPullParser;F)Lccsanandroid/animation/Animator;

    move-result-object v0
    :try_end_0
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v0, "animator":Lccsanandroid/animation/Animator;
    nop

    .line 147
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lccsanandroid/content/res/XmlResourceParser;->close()V

    .line 133
    :cond_0
    return-object v0

    .line 147
    .end local v0    # "animator":Lccsanandroid/animation/Animator;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 144
    .local v0, "rnf":Lccsanandroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Lccsanandroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 145
    nop

    .end local v1    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .end local p0    # "context":Lccsanandroid/content/Context;
    .end local p1    # "resources":Lccsanandroid/content/res/Resources;
    .end local p2    # "theme":Lccsanandroid/content/res/Resources$Theme;
    .end local p3    # "id":I
    .end local p4    # "pathErrorScale":F
    throw v0

    .line 134
    .end local v0    # "rnf":Lccsanandroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Lccsanandroid/content/Context;
    .restart local p1    # "resources":Lccsanandroid/content/res/Resources;
    .restart local p2    # "theme":Lccsanandroid/content/res/Resources$Theme;
    .restart local p3    # "id":I
    .restart local p4    # "pathErrorScale":F
    :catch_1
    move-exception v2

    .line 135
    .local v2, "ex":Lccsanorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 138
    .restart local v0    # "rnf":Lccsanandroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0, v2}, Lccsanandroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 139
    nop

    .end local v1    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .end local p0    # "context":Lccsanandroid/content/Context;
    .end local p1    # "resources":Lccsanandroid/content/res/Resources;
    .end local p2    # "theme":Lccsanandroid/content/res/Resources$Theme;
    .end local p3    # "id":I
    .end local p4    # "pathErrorScale":F
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v0    # "rnf":Lccsanandroid/content/res/Resources$NotFoundException;
    .end local v2    # "ex":Lccsanorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Lccsanandroid/content/Context;
    .restart local p1    # "resources":Lccsanandroid/content/res/Resources;
    .restart local p2    # "theme":Lccsanandroid/content/res/Resources$Theme;
    .restart local p3    # "id":I
    .restart local p4    # "pathErrorScale":F
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lccsanandroid/content/res/XmlResourceParser;->close()V

    .line 148
    :cond_1
    throw v0
.end method

.method private static loadAnimator(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;Lccsanandroid/animation/ValueAnimator;FLccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/animation/ValueAnimator;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p4, "anim"    # Lccsanandroid/animation/ValueAnimator;
    .param p5, "pathErrorScale"    # F
    .param p6, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 890
    sget-object v0, Lccsanandroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    invoke-static {p1, p2, p3, v0}, Lccsanandroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 892
    .local v0, "arrayAnimator":Lccsanandroid/content/res/TypedArray;
    sget-object v1, Lccsanandroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    invoke-static {p1, p2, p3, v1}, Lccsanandroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 895
    .local v1, "arrayObjectAnimator":Lccsanandroid/content/res/TypedArray;
    if-nez p4, :cond_0

    .line 896
    new-instance v2, Lccsanandroid/animation/ValueAnimator;

    invoke-direct {v2}, Lccsanandroid/animation/ValueAnimator;-><init>()V

    move-object p4, v2

    .line 899
    :cond_0
    invoke-static {p4, v0, v1, p5, p6}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->parseAnimatorFromTypeArray(Lccsanandroid/animation/ValueAnimator;Lccsanandroid/content/res/TypedArray;Lccsanandroid/content/res/TypedArray;FLccsanorg/xmlpull/v1/XmlPullParser;)V

    .line 902
    const-string v2, "interpolator"

    const/4 v3, 0x0

    invoke-static {v0, p6, v2, v3, v3}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 904
    .local v2, "resID":I
    if-lez v2, :cond_1

    .line 905
    invoke-static {p0, v2}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Lccsanandroid/content/Context;I)Lccsanandroid/view/animation/Interpolator;

    move-result-object v3

    .line 906
    .local v3, "interpolator":Lccsanandroid/view/animation/Interpolator;
    invoke-virtual {p4, v3}, Lccsanandroid/animation/ValueAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 909
    .end local v3    # "interpolator":Lccsanandroid/view/animation/Interpolator;
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 910
    if-eqz v1, :cond_2

    .line 911
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 913
    :cond_2
    return-object p4
.end method

.method private static loadKeyframe(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;ILccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/animation/Keyframe;
    .locals 9
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p4, "valueType"    # I
    .param p5, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    sget-object v0, Lccsanandroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static {p1, p2, p3, v0}, Lccsanandroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 821
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 823
    .local v1, "keyframe":Lccsanandroid/animation/Keyframe;
    const-string v2, "fraction"

    const/4 v3, 0x3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, p5, v2, v3, v4}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 826
    .local v2, "fraction":F
    const-string/jumbo v3, "value"

    const/4 v4, 0x0

    invoke-static {v0, p5, v3, v4}, Lccsanandroidx/core/content/res/TypedArrayUtils;->peekNamedValue(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Lccsanandroid/util/TypedValue;

    move-result-object v5

    .line 828
    .local v5, "keyframeValue":Lccsanandroid/util/TypedValue;
    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 829
    .local v7, "hasValue":Z
    :goto_0
    const/4 v8, 0x4

    if-ne p4, v8, :cond_2

    .line 832
    if-eqz v7, :cond_1

    iget v8, v5, Lccsanandroid/util/TypedValue;->type:I

    invoke-static {v8}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 833
    const/4 p4, 0x3

    goto :goto_1

    .line 835
    :cond_1
    const/4 p4, 0x0

    .line 839
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 840
    packed-switch p4, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 848
    :pswitch_1
    invoke-static {v0, p5, v3, v4, v4}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 850
    .local v3, "intValue":I
    invoke-static {v2, v3}, Lccsanandroid/animation/Keyframe;->ofInt(FI)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    goto :goto_2

    .line 842
    .end local v3    # "intValue":I
    :pswitch_2
    const/4 v8, 0x0

    invoke-static {v0, p5, v3, v4, v8}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    .line 844
    .local v3, "value":F
    invoke-static {v2, v3}, Lccsanandroid/animation/Keyframe;->ofFloat(FF)Lccsanandroid/animation/Keyframe;

    move-result-object v1

    .line 845
    nop

    .line 851
    .end local v3    # "value":F
    :goto_2
    goto :goto_4

    .line 854
    :cond_3
    if-nez p4, :cond_4

    invoke-static {v2}, Lccsanandroid/animation/Keyframe;->ofFloat(F)Lccsanandroid/animation/Keyframe;

    move-result-object v3

    goto :goto_3

    .line 855
    :cond_4
    invoke-static {v2}, Lccsanandroid/animation/Keyframe;->ofInt(F)Lccsanandroid/animation/Keyframe;

    move-result-object v3

    :goto_3
    move-object v1, v3

    .line 858
    :goto_4
    const-string v3, "interpolator"

    invoke-static {v0, p5, v3, v6, v4}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 860
    .local v3, "resID":I
    if-lez v3, :cond_5

    .line 861
    invoke-static {p0, v3}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Lccsanandroid/content/Context;I)Lccsanandroid/view/animation/Interpolator;

    move-result-object v4

    .line 862
    .local v4, "interpolator":Lccsanandroid/view/animation/Interpolator;
    invoke-virtual {v1, v4}, Lccsanandroid/animation/Keyframe;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 864
    .end local v4    # "interpolator":Lccsanandroid/view/animation/Interpolator;
    :cond_5
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 866
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static loadObjectAnimator(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;FLccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/animation/ObjectAnimator;
    .locals 8
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p4, "pathErrorScale"    # F
    .param p5, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 872
    new-instance v0, Lccsanandroid/animation/ObjectAnimator;

    invoke-direct {v0}, Lccsanandroid/animation/ObjectAnimator;-><init>()V

    .line 874
    .local v0, "anim":Lccsanandroid/animation/ObjectAnimator;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;Lccsanandroid/animation/ValueAnimator;FLccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/animation/ValueAnimator;

    .line 876
    return-object v0
.end method

.method private static loadPvh(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Lccsanandroid/animation/PropertyValuesHolder;
    .locals 20
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p4, "propertyName"    # Ljava/lang/String;
    .param p5, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "value":Lccsanandroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    move-object v2, v1

    move/from16 v1, p5

    .line 696
    .end local p5    # "valueType":I
    .local v1, "valueType":I
    .local v2, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    :goto_0
    invoke-interface/range {p3 .. p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    const/4 v3, 0x1

    if-eq v4, v3, :cond_4

    .line 698
    invoke-interface/range {p3 .. p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, "name":Ljava/lang/String;
    const-string v5, "keyframe"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 700
    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    .line 701
    invoke-static/range {p3 .. p3}, Lccsanandroid/util/Xml;->asAttributeSet(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/util/AttributeSet;

    move-result-object v5

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static {v12, v13, v5, v14}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeOfKeyframe(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;Lccsanorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    goto :goto_1

    .line 700
    :cond_0
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 704
    :goto_1
    invoke-static/range {p3 .. p3}, Lccsanandroid/util/Xml;->asAttributeSet(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/util/AttributeSet;

    move-result-object v9

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move v10, v1

    move-object/from16 v11, p3

    invoke-static/range {v6 .. v11}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadKeyframe(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;ILccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/animation/Keyframe;

    move-result-object v5

    .line 706
    .local v5, "keyframe":Lccsanandroid/animation/Keyframe;
    if-eqz v5, :cond_2

    .line 707
    if-nez v2, :cond_1

    .line 708
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 710
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_2
    invoke-interface/range {p3 .. p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2

    .line 699
    .end local v5    # "keyframe":Lccsanandroid/animation/Keyframe;
    :cond_3
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 714
    .end local v3    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 696
    :cond_4
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 717
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v3

    .local v6, "count":I
    if-lez v3, :cond_f

    .line 723
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanandroid/animation/Keyframe;

    .line 724
    .local v7, "firstKeyframe":Lccsanandroid/animation/Keyframe;
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsanandroid/animation/Keyframe;

    .line 725
    .local v8, "lastKeyframe":Lccsanandroid/animation/Keyframe;
    invoke-virtual {v8}, Lccsanandroid/animation/Keyframe;->getFraction()F

    move-result v9

    .line 726
    .local v9, "endFraction":F
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    cmpg-float v15, v9, v10

    if-gez v15, :cond_6

    .line 727
    cmpg-float v15, v9, v11

    if-gez v15, :cond_5

    .line 728
    invoke-virtual {v8, v10}, Lccsanandroid/animation/Keyframe;->setFraction(F)V

    goto :goto_3

    .line 730
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v8, v10}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Lccsanandroid/animation/Keyframe;F)Lccsanandroid/animation/Keyframe;

    move-result-object v5

    invoke-virtual {v2, v15, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 731
    add-int/lit8 v6, v6, 0x1

    .line 734
    :cond_6
    :goto_3
    invoke-virtual {v7}, Lccsanandroid/animation/Keyframe;->getFraction()F

    move-result v5

    .line 735
    .local v5, "startFraction":F
    cmpl-float v15, v5, v11

    if-eqz v15, :cond_8

    .line 736
    cmpg-float v15, v5, v11

    if-gez v15, :cond_7

    .line 737
    invoke-virtual {v7, v11}, Lccsanandroid/animation/Keyframe;->setFraction(F)V

    goto :goto_4

    .line 739
    :cond_7
    invoke-static {v7, v11}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Lccsanandroid/animation/Keyframe;F)Lccsanandroid/animation/Keyframe;

    move-result-object v15

    invoke-virtual {v2, v3, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 740
    add-int/lit8 v6, v6, 0x1

    .line 743
    :cond_8
    :goto_4
    new-array v3, v6, [Lccsanandroid/animation/Keyframe;

    .line 744
    .local v3, "keyframeArray":[Lccsanandroid/animation/Keyframe;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 745
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    if-ge v15, v6, :cond_e

    .line 746
    aget-object v10, v3, v15

    .line 747
    .local v10, "keyframe":Lccsanandroid/animation/Keyframe;
    invoke-virtual {v10}, Lccsanandroid/animation/Keyframe;->getFraction()F

    move-result v17

    cmpg-float v17, v17, v11

    if-gez v17, :cond_d

    .line 748
    if-nez v15, :cond_9

    .line 749
    invoke-virtual {v10, v11}, Lccsanandroid/animation/Keyframe;->setFraction(F)V

    move-object/from16 v19, v0

    move-object/from16 v16, v2

    move/from16 v18, v4

    const/16 v17, 0x0

    goto :goto_8

    .line 750
    :cond_9
    add-int/lit8 v11, v6, -0x1

    if-ne v15, v11, :cond_a

    .line 751
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Lccsanandroid/animation/Keyframe;->setFraction(F)V

    move-object/from16 v19, v0

    move-object/from16 v16, v2

    move/from16 v18, v4

    const/16 v17, 0x0

    goto :goto_8

    .line 755
    :cond_a
    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v16, v15

    .line 756
    .local v16, "startIndex":I
    move/from16 v18, v15

    .line 757
    .local v18, "endIndex":I
    move/from16 v11, v16

    .end local v16    # "startIndex":I
    .local v11, "startIndex":I
    add-int/lit8 v16, v11, 0x1

    move-object/from16 v19, v0

    move/from16 v0, v16

    move-object/from16 v16, v2

    move/from16 v2, v18

    .end local v18    # "endIndex":I
    .local v0, "j":I
    .local v2, "endIndex":I
    .local v16, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .local v19, "value":Lccsanandroid/animation/PropertyValuesHolder;
    :goto_6
    move/from16 v18, v4

    .end local v4    # "type":I
    .local v18, "type":I
    add-int/lit8 v4, v6, -0x1

    if-ge v0, v4, :cond_c

    .line 758
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lccsanandroid/animation/Keyframe;->getFraction()F

    move-result v4

    const/16 v17, 0x0

    cmpl-float v4, v4, v17

    if-ltz v4, :cond_b

    .line 759
    goto :goto_7

    .line 761
    :cond_b
    move v2, v0

    .line 757
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v18

    goto :goto_6

    :cond_c
    const/16 v17, 0x0

    .line 763
    .end local v0    # "j":I
    :goto_7
    add-int/lit8 v0, v2, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lccsanandroid/animation/Keyframe;->getFraction()F

    move-result v0

    add-int/lit8 v4, v11, -0x1

    aget-object v4, v3, v4

    .line 764
    invoke-virtual {v4}, Lccsanandroid/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float/2addr v0, v4

    .line 765
    .local v0, "gap":F
    invoke-static {v3, v0, v11, v2}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->distributeKeyframes([Lccsanandroid/animation/Keyframe;FII)V

    goto :goto_8

    .line 747
    .end local v11    # "startIndex":I
    .end local v16    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .end local v18    # "type":I
    .end local v19    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    .local v0, "value":Lccsanandroid/animation/PropertyValuesHolder;
    .local v2, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .restart local v4    # "type":I
    :cond_d
    move-object/from16 v19, v0

    move-object/from16 v16, v2

    move/from16 v18, v4

    const/16 v17, 0x0

    .line 745
    .end local v0    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    .end local v2    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .end local v4    # "type":I
    .end local v10    # "keyframe":Lccsanandroid/animation/Keyframe;
    .restart local v16    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .restart local v18    # "type":I
    .restart local v19    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    :goto_8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v16

    move/from16 v4, v18

    move-object/from16 v0, v19

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    goto/16 :goto_5

    .end local v16    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .end local v18    # "type":I
    .end local v19    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v0    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v2    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .restart local v4    # "type":I
    :cond_e
    move-object/from16 v19, v0

    move-object/from16 v16, v2

    move/from16 v18, v4

    .line 769
    .end local v0    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    .end local v2    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .end local v4    # "type":I
    .end local v15    # "i":I
    .restart local v16    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .restart local v18    # "type":I
    .restart local v19    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lccsanandroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lccsanandroid/animation/Keyframe;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 770
    .end local v19    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    .local v2, "value":Lccsanandroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    if-ne v1, v4, :cond_11

    .line 771
    invoke-static {}, Lccsanandroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Lccsanandroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    move-result-object v4

    invoke-virtual {v2, v4}, Lccsanandroid/animation/PropertyValuesHolder;->setEvaluator(Lccsanandroid/animation/TypeEvaluator;)V

    goto :goto_a

    .line 717
    .end local v3    # "keyframeArray":[Lccsanandroid/animation/Keyframe;
    .end local v5    # "startFraction":F
    .end local v7    # "firstKeyframe":Lccsanandroid/animation/Keyframe;
    .end local v8    # "lastKeyframe":Lccsanandroid/animation/Keyframe;
    .end local v9    # "endFraction":F
    .end local v16    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .end local v18    # "type":I
    .restart local v0    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    .local v2, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .restart local v4    # "type":I
    :cond_f
    move-object/from16 v19, v0

    move-object/from16 v16, v2

    move/from16 v18, v4

    move-object/from16 v0, p4

    .end local v0    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    .end local v2    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .end local v4    # "type":I
    .restart local v16    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .restart local v18    # "type":I
    .restart local v19    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    goto :goto_9

    .end local v6    # "count":I
    .end local v16    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .end local v18    # "type":I
    .end local v19    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v0    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    .restart local v2    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .restart local v4    # "type":I
    :cond_10
    move-object/from16 v19, v0

    move-object/from16 v16, v2

    move/from16 v18, v4

    move-object/from16 v0, p4

    .line 775
    .end local v0    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    .end local v2    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .end local v4    # "type":I
    .restart local v16    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/Keyframe;>;"
    .restart local v18    # "type":I
    .restart local v19    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    :goto_9
    move-object/from16 v2, v19

    .end local v19    # "value":Lccsanandroid/animation/PropertyValuesHolder;
    .local v2, "value":Lccsanandroid/animation/PropertyValuesHolder;
    :cond_11
    :goto_a
    return-object v2
.end method

.method private static loadValues(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;)[Lccsanandroid/animation/PropertyValuesHolder;
    .locals 17
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Lccsanandroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    move-object/from16 v6, p3

    const/4 v0, 0x0

    move-object v7, v0

    .line 579
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/animation/PropertyValuesHolder;>;"
    :goto_0
    invoke-interface/range {p3 .. p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v8, v0

    .local v8, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    .line 582
    const/4 v0, 0x2

    if-eq v8, v0, :cond_0

    .line 583
    invoke-interface/range {p3 .. p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    .line 584
    goto :goto_0

    .line 587
    :cond_0
    invoke-interface/range {p3 .. p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 589
    .local v10, "name":Ljava/lang/String;
    const-string v2, "propertyValuesHolder"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 590
    sget-object v2, Lccsanandroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    invoke-static {v11, v12, v13, v2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v14

    .line 593
    .local v14, "a":Lccsanandroid/content/res/TypedArray;
    const-string v2, "propertyName"

    invoke-static {v14, v6, v2, v1}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedString(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 595
    .local v15, "propertyName":Ljava/lang/String;
    const/4 v1, 0x4

    const-string/jumbo v2, "valueType"

    invoke-static {v14, v6, v2, v0, v1}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    .line 599
    .local v5, "valueType":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v15

    move/from16 v16, v5

    .end local v5    # "valueType":I
    .local v16, "valueType":I
    invoke-static/range {v0 .. v5}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->loadPvh(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 601
    .local v0, "pvh":Lccsanandroid/animation/PropertyValuesHolder;
    if-nez v0, :cond_1

    .line 602
    const/4 v1, 0x0

    move/from16 v2, v16

    .end local v16    # "valueType":I
    .local v2, "valueType":I
    invoke-static {v14, v2, v1, v9, v15}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->getPVH(Lccsanandroid/content/res/TypedArray;IIILjava/lang/String;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_1

    .line 601
    .end local v2    # "valueType":I
    .restart local v16    # "valueType":I
    :cond_1
    move/from16 v2, v16

    .line 607
    .end local v16    # "valueType":I
    .restart local v2    # "valueType":I
    :goto_1
    if-eqz v0, :cond_3

    .line 608
    if-nez v7, :cond_2

    .line 609
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 611
    :cond_2
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_3
    invoke-virtual {v14}, Lccsanandroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 589
    .end local v0    # "pvh":Lccsanandroid/animation/PropertyValuesHolder;
    .end local v2    # "valueType":I
    .end local v14    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v15    # "propertyName":Ljava/lang/String;
    :cond_4
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    .line 616
    :goto_2
    invoke-interface/range {p3 .. p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    .line 617
    .end local v10    # "name":Ljava/lang/String;
    goto :goto_0

    .line 579
    :cond_5
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "valuesArray":[Lccsanandroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_6

    .line 621
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 622
    .local v1, "count":I
    new-array v0, v1, [Lccsanandroid/animation/PropertyValuesHolder;

    .line 623
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_6

    .line 624
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/animation/PropertyValuesHolder;

    aput-object v3, v0, v2

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 627
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_6
    return-object v0
.end method

.method private static parseAnimatorFromTypeArray(Lccsanandroid/animation/ValueAnimator;Lccsanandroid/content/res/TypedArray;Lccsanandroid/content/res/TypedArray;FLccsanorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p0, "anim"    # Lccsanandroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Lccsanandroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Lccsanandroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;

    .line 345
    const-string v0, "duration"

    const/4 v1, 0x1

    const/16 v2, 0x12c

    invoke-static {p1, p4, v0, v1, v2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    int-to-long v2, v0

    .line 347
    .local v2, "duration":J
    const-string/jumbo v0, "startOffset"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, p4, v0, v4, v5}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    int-to-long v6, v0

    .line 349
    .local v6, "startDelay":J
    const-string/jumbo v0, "valueType"

    const/4 v4, 0x7

    const/4 v8, 0x4

    invoke-static {p1, p4, v0, v4, v8}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 353
    .local v0, "valueType":I
    const-string/jumbo v4, "valueFrom"

    invoke-static {p4, v4}, Lccsanandroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    const-string/jumbo v4, "valueTo"

    invoke-static {p4, v4}, Lccsanandroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    const/4 v4, 0x6

    const/4 v9, 0x5

    if-ne v0, v8, :cond_0

    .line 356
    invoke-static {p1, v9, v4}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeFromValues(Lccsanandroid/content/res/TypedArray;II)I

    move-result v0

    .line 360
    :cond_0
    const-string v10, ""

    invoke-static {p1, v0, v9, v4, v10}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->getPVH(Lccsanandroid/content/res/TypedArray;IIILjava/lang/String;)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 363
    .local v4, "pvh":Lccsanandroid/animation/PropertyValuesHolder;
    if-eqz v4, :cond_1

    .line 364
    new-array v9, v1, [Lccsanandroid/animation/PropertyValuesHolder;

    aput-object v4, v9, v5

    invoke-virtual {p0, v9}, Lccsanandroid/animation/ValueAnimator;->setValues([Lccsanandroid/animation/PropertyValuesHolder;)V

    .line 367
    .end local v4    # "pvh":Lccsanandroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-virtual {p0, v2, v3}, Lccsanandroid/animation/ValueAnimator;->setDuration(J)Lccsanandroid/animation/ValueAnimator;

    .line 368
    invoke-virtual {p0, v6, v7}, Lccsanandroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 370
    const/4 v4, 0x3

    const-string v9, "repeatCount"

    invoke-static {p1, p4, v9, v4, v5}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {p0, v4}, Lccsanandroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 372
    const-string v4, "repeatMode"

    invoke-static {p1, p4, v4, v8, v1}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedInt(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 375
    if-eqz p2, :cond_2

    .line 376
    invoke-static {p0, p2, v0, p3, p4}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->setupObjectAnimator(Lccsanandroid/animation/ValueAnimator;Lccsanandroid/content/res/TypedArray;IFLccsanorg/xmlpull/v1/XmlPullParser;)V

    .line 378
    :cond_2
    return-void
.end method

.method private static setupObjectAnimator(Lccsanandroid/animation/ValueAnimator;Lccsanandroid/content/res/TypedArray;IFLccsanorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p0, "anim"    # Lccsanandroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Lccsanandroid/content/res/TypedArray;
    .param p2, "valueType"    # I
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;

    .line 390
    move-object v0, p0

    check-cast v0, Lccsanandroid/animation/ObjectAnimator;

    .line 391
    .local v0, "oa":Lccsanandroid/animation/ObjectAnimator;
    const-string v1, "pathData"

    const/4 v2, 0x1

    invoke-static {p1, p4, v1, v2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedString(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "pathData":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 403
    const-string v2, "propertyXName"

    const/4 v3, 0x2

    invoke-static {p1, p4, v2, v3}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedString(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "propertyXName":Ljava/lang/String;
    const/4 v4, 0x3

    const-string v5, "propertyYName"

    invoke-static {p1, p4, v5, v4}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedString(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, "propertyYName":Ljava/lang/String;
    if-eq p2, v3, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    .line 412
    :cond_0
    const/4 p2, 0x0

    .line 414
    :cond_1
    if-nez v2, :cond_3

    if-eqz v4, :cond_2

    goto :goto_0

    .line 415
    :cond_2
    new-instance v3, Lccsanandroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsanandroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lccsanandroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 418
    :cond_3
    :goto_0
    invoke-static {v1}, Lccsanandroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Lccsanandroid/graphics/Path;

    move-result-object v3

    .line 419
    .local v3, "path":Lccsanandroid/graphics/Path;
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v5, v5, p3

    invoke-static {v3, v0, v5, v2, v4}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat;->setupPathMotion(Lccsanandroid/graphics/Path;Lccsanandroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    .line 421
    .end local v2    # "propertyXName":Ljava/lang/String;
    .end local v3    # "path":Lccsanandroid/graphics/Path;
    .end local v4    # "propertyYName":Ljava/lang/String;
    goto :goto_1

    .line 422
    :cond_4
    const/4 v2, 0x0

    .line 423
    const-string v3, "propertyName"

    invoke-static {p1, p4, v3, v2}, Lccsanandroidx/core/content/res/TypedArrayUtils;->getNamedString(Lccsanandroid/content/res/TypedArray;Lccsanorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lccsanandroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 429
    .end local v2    # "propertyName":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private static setupPathMotion(Lccsanandroid/graphics/Path;Lccsanandroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p0, "path"    # Lccsanandroid/graphics/Path;
    .param p1, "oa"    # Lccsanandroid/animation/ObjectAnimator;
    .param p2, "precision"    # F
    .param p3, "propertyXName"    # Ljava/lang/String;
    .param p4, "propertyYName"    # Ljava/lang/String;

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    new-instance v4, Lccsanandroid/graphics/PathMeasure;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lccsanandroid/graphics/PathMeasure;-><init>(Lccsanandroid/graphics/Path;Z)V

    .line 437
    .local v4, "measureForTotalLength":Lccsanandroid/graphics/PathMeasure;
    const/4 v6, 0x0

    .line 440
    .local v6, "totalLength":F
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v7, "contourLengths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :goto_0
    invoke-virtual {v4}, Lccsanandroid/graphics/PathMeasure;->getLength()F

    move-result v8

    .line 444
    .local v8, "pathLength":F
    add-float/2addr v6, v8

    .line 445
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v8    # "pathLength":F
    invoke-virtual {v4}, Lccsanandroid/graphics/PathMeasure;->nextContour()Z

    move-result v8

    if-nez v8, :cond_6

    .line 450
    new-instance v8, Lccsanandroid/graphics/PathMeasure;

    invoke-direct {v8, v0, v5}, Lccsanandroid/graphics/PathMeasure;-><init>(Lccsanandroid/graphics/Path;Z)V

    .line 452
    .local v8, "pathMeasure":Lccsanandroid/graphics/PathMeasure;
    const/16 v9, 0x64

    div-float v10, v6, p2

    float-to-int v10, v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 454
    .local v9, "numPoints":I
    new-array v10, v9, [F

    .line 455
    .local v10, "mX":[F
    new-array v12, v9, [F

    .line 456
    .local v12, "mY":[F
    const/4 v13, 0x2

    new-array v14, v13, [F

    .line 458
    .local v14, "position":[F
    const/4 v15, 0x0

    .line 459
    .local v15, "contourIndex":I
    add-int/lit8 v13, v9, -0x1

    int-to-float v13, v13

    div-float v13, v6, v13

    .line 460
    .local v13, "step":F
    const/16 v17, 0x0

    .line 465
    .local v17, "currentDistance":F
    const/16 v18, 0x0

    move/from16 v11, v18

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_1

    .line 466
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    sub-float v5, v17, v19

    const/4 v0, 0x0

    invoke-virtual {v8, v5, v14, v0}, Lccsanandroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 469
    const/4 v0, 0x0

    aget v5, v14, v0

    aput v5, v10, v11

    .line 470
    const/4 v0, 0x1

    aget v5, v14, v0

    aput v5, v12, v11

    .line 471
    add-float v17, v17, v13

    .line 472
    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    add-int/lit8 v0, v15, 0x1

    .line 473
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v17, v0

    if-lez v0, :cond_0

    .line 474
    add-int/lit8 v15, v15, 0x1

    .line 475
    invoke-virtual {v8}, Lccsanandroid/graphics/PathMeasure;->nextContour()Z

    .line 465
    :cond_0
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    goto :goto_1

    .line 480
    .end local v11    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 481
    .local v0, "x":Lccsanandroid/animation/PropertyValuesHolder;
    const/4 v5, 0x0

    .line 482
    .local v5, "y":Lccsanandroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_2

    .line 483
    invoke-static {v2, v10}, Lccsanandroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 485
    :cond_2
    if-eqz v3, :cond_3

    .line 486
    invoke-static {v3, v12}, Lccsanandroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lccsanandroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 488
    :cond_3
    if-nez v0, :cond_4

    .line 489
    const/4 v11, 0x1

    new-array v11, v11, [Lccsanandroid/animation/PropertyValuesHolder;

    const/16 v18, 0x0

    aput-object v5, v11, v18

    invoke-virtual {v1, v11}, Lccsanandroid/animation/ObjectAnimator;->setValues([Lccsanandroid/animation/PropertyValuesHolder;)V

    goto :goto_2

    .line 490
    :cond_4
    const/4 v11, 0x1

    const/16 v18, 0x0

    if-nez v5, :cond_5

    .line 491
    new-array v11, v11, [Lccsanandroid/animation/PropertyValuesHolder;

    aput-object v0, v11, v18

    invoke-virtual {v1, v11}, Lccsanandroid/animation/ObjectAnimator;->setValues([Lccsanandroid/animation/PropertyValuesHolder;)V

    goto :goto_2

    .line 493
    :cond_5
    const/4 v11, 0x2

    new-array v11, v11, [Lccsanandroid/animation/PropertyValuesHolder;

    aput-object v0, v11, v18

    const/16 v16, 0x1

    aput-object v5, v11, v16

    invoke-virtual {v1, v11}, Lccsanandroid/animation/ObjectAnimator;->setValues([Lccsanandroid/animation/PropertyValuesHolder;)V

    .line 495
    :goto_2
    return-void

    .line 447
    .end local v0    # "x":Lccsanandroid/animation/PropertyValuesHolder;
    .end local v5    # "y":Lccsanandroid/animation/PropertyValuesHolder;
    .end local v8    # "pathMeasure":Lccsanandroid/graphics/PathMeasure;
    .end local v9    # "numPoints":I
    .end local v10    # "mX":[F
    .end local v12    # "mY":[F
    .end local v13    # "step":F
    .end local v14    # "position":[F
    .end local v15    # "contourIndex":I
    .end local v17    # "currentDistance":F
    :cond_6
    const/16 v18, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0
.end method
