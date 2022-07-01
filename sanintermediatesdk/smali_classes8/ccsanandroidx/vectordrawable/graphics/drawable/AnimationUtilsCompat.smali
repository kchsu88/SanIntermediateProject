.class public Lccsanandroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;
.super Ljava/lang/Object;
.source "AnimationUtilsCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private static createInterpolatorFromXml(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/view/animation/Interpolator;
    .locals 8
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lccsanorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    .line 109
    .local v0, "interpolator":Lccsanandroid/view/animation/Interpolator;
    invoke-interface {p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 111
    .local v1, "depth":I
    :goto_0
    invoke-interface {p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_c

    :cond_0
    const/4 v2, 0x1

    if-eq v3, v2, :cond_c

    .line 114
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    invoke-static {p3}, Lccsanandroid/util/Xml;->asAttributeSet(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/util/AttributeSet;

    move-result-object v2

    .line 120
    .local v2, "attrs":Lccsanandroid/util/AttributeSet;
    invoke-interface {p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "name":Ljava/lang/String;
    const-string v5, "linearInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    new-instance v5, Lccsanandroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Lccsanandroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, v5

    goto/16 :goto_1

    .line 124
    :cond_2
    const-string v5, "accelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 125
    new-instance v5, Lccsanandroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5, p0, v2}, Lccsanandroid/view/animation/AccelerateInterpolator;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 126
    :cond_3
    const-string v5, "decelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    new-instance v5, Lccsanandroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, p0, v2}, Lccsanandroid/view/animation/DecelerateInterpolator;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto/16 :goto_1

    .line 128
    :cond_4
    const-string v5, "accelerateDecelerateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 129
    new-instance v5, Lccsanandroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Lccsanandroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v0, v5

    goto :goto_1

    .line 130
    :cond_5
    const-string v5, "cycleInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 131
    new-instance v5, Lccsanandroid/view/animation/CycleInterpolator;

    invoke-direct {v5, p0, v2}, Lccsanandroid/view/animation/CycleInterpolator;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 132
    :cond_6
    const-string v5, "anticipateInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 133
    new-instance v5, Lccsanandroid/view/animation/AnticipateInterpolator;

    invoke-direct {v5, p0, v2}, Lccsanandroid/view/animation/AnticipateInterpolator;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 134
    :cond_7
    const-string v5, "overshootInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 135
    new-instance v5, Lccsanandroid/view/animation/OvershootInterpolator;

    invoke-direct {v5, p0, v2}, Lccsanandroid/view/animation/OvershootInterpolator;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 136
    :cond_8
    const-string v5, "anticipateOvershootInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 137
    new-instance v5, Lccsanandroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5, p0, v2}, Lccsanandroid/view/animation/AnticipateOvershootInterpolator;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 138
    :cond_9
    const-string v5, "bounceInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 139
    new-instance v5, Lccsanandroid/view/animation/BounceInterpolator;

    invoke-direct {v5}, Lccsanandroid/view/animation/BounceInterpolator;-><init>()V

    move-object v0, v5

    goto :goto_1

    .line 140
    :cond_a
    const-string v5, "pathInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 141
    new-instance v5, Lccsanandroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;

    invoke-direct {v5, p0, v2, p3}, Lccsanandroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;Lccsanorg/xmlpull/v1/XmlPullParser;)V

    move-object v0, v5

    .line 145
    .end local v2    # "attrs":Lccsanandroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 143
    .restart local v2    # "attrs":Lccsanandroid/util/AttributeSet;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_b
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown interpolator name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    .end local v2    # "attrs":Lccsanandroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    :cond_c
    return-object v0
.end method

.method public static loadInterpolator(Lccsanandroid/content/Context;I)Lccsanandroid/view/animation/Interpolator;
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 67
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 68
    invoke-static {p0, p1}, Lccsanandroid/view/animation/AnimationUtils;->loadInterpolator(Lccsanandroid/content/Context;I)Lccsanandroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 74
    .local v0, "parser":Lccsanandroid/content/res/XmlResourceParser;
    const v1, 0x10c000f

    const-string v2, "Can\'t load animation resource ID #0x"

    if-ne p1, v1, :cond_2

    .line 75
    :try_start_0
    new-instance v1, Lccsanandroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Lccsanandroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V
    :try_end_0
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lccsanandroid/content/res/XmlResourceParser;->close()V

    .line 75
    :cond_1
    return-object v1

    .line 95
    :catchall_0
    move-exception v1

    goto/16 :goto_2

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v1

    goto :goto_1

    .line 76
    :cond_2
    const v1, 0x10c000d

    if-ne p1, v1, :cond_4

    .line 77
    :try_start_1
    new-instance v1, Lccsanandroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Lccsanandroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V
    :try_end_1
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lccsanandroid/content/res/XmlResourceParser;->close()V

    .line 77
    :cond_3
    return-object v1

    .line 78
    :cond_4
    const v1, 0x10c000e

    if-ne p1, v1, :cond_6

    .line 79
    :try_start_2
    new-instance v1, Lccsanandroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Lccsanandroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V
    :try_end_2
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lccsanandroid/content/res/XmlResourceParser;->close()V

    .line 79
    :cond_5
    return-object v1

    .line 81
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsanandroid/content/res/Resources;->getAnimation(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 82
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {p0, v1, v3, v0}, Lccsanandroidx/vectordrawable/graphics/drawable/AnimationUtilsCompat;->createInterpolatorFromXml(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/view/animation/Interpolator;

    move-result-object v1
    :try_end_3
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lccsanandroid/content/res/XmlResourceParser;->close()V

    .line 82
    :cond_7
    return-object v1

    .line 90
    .local v1, "ex":Ljava/io/IOException;
    :goto_0
    :try_start_4
    new-instance v3, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 92
    .local v2, "rnf":Lccsanandroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Lccsanandroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 93
    nop

    .end local v0    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .end local p0    # "context":Lccsanandroid/content/Context;
    .end local p1    # "id":I
    throw v2

    .line 85
    .end local v2    # "rnf":Lccsanandroid/content/res/Resources$NotFoundException;
    .restart local v0    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .local v1, "ex":Lccsanorg/xmlpull/v1/XmlPullParserException;
    .restart local p0    # "context":Lccsanandroid/content/Context;
    .restart local p1    # "id":I
    :goto_1
    new-instance v3, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 87
    .restart local v2    # "rnf":Lccsanandroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Lccsanandroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 88
    nop

    .end local v0    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .end local p0    # "context":Lccsanandroid/content/Context;
    .end local p1    # "id":I
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    .end local v1    # "ex":Lccsanorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Lccsanandroid/content/res/Resources$NotFoundException;
    .restart local v0    # "parser":Lccsanandroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Lccsanandroid/content/Context;
    .restart local p1    # "id":I
    :goto_2
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lccsanandroid/content/res/XmlResourceParser;->close()V

    .line 96
    :cond_8
    throw v1
.end method
