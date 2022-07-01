.class public final Lccsanandroidx/core/content/res/ComplexColorCompat;
.super Ljava/lang/Object;
.source "ComplexColorCompat.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ComplexColorCompat"


# instance fields
.field private mColor:I

.field private final mColorStateList:Lccsanandroid/content/res/ColorStateList;

.field private final mShader:Lccsanandroid/graphics/Shader;


# direct methods
.method private constructor <init>(Lccsanandroid/graphics/Shader;Lccsanandroid/content/res/ColorStateList;I)V
    .locals 0
    .param p1, "shader"    # Lccsanandroid/graphics/Shader;
    .param p2, "colorStateList"    # Lccsanandroid/content/res/ColorStateList;
    .param p3, "color"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shader",
            "colorStateList",
            "color"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mShader:Lccsanandroid/graphics/Shader;

    .line 63
    iput-object p2, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mColorStateList:Lccsanandroid/content/res/ColorStateList;

    .line 64
    iput p3, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mColor:I

    .line 65
    return-void
.end method

.method private static createFromXml(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroidx/core/content/res/ComplexColorCompat;
    .locals 7
    .param p0, "resources"    # Lccsanandroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resources",
            "resId",
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lccsanorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/Resources;->getXml(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 153
    .local v0, "parser":Lccsanorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0}, Lccsanandroid/util/Xml;->asAttributeSet(Lccsanorg/xmlpull/v1/XmlPullParser;)Lccsanandroid/util/AttributeSet;

    move-result-object v1

    .line 155
    .local v1, "attrs":Lccsanandroid/util/AttributeSet;
    :goto_0
    invoke-interface {v0}, Lccsanorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    if-ne v3, v5, :cond_2

    .line 162
    invoke-interface {v0}, Lccsanorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "name":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v4, "selector"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_1
    const-string v6, "gradient"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 171
    new-instance v4, Lccsanorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lccsanorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": unsupported complex color tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsanorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 168
    :pswitch_0
    invoke-static {p0, v0, v1, p2}, Lccsanandroidx/core/content/res/GradientColorInflaterCompat;->createFromXmlInner(Lccsanandroid/content/res/Resources;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/Shader;

    move-result-object v4

    invoke-static {v4}, Lccsanandroidx/core/content/res/ComplexColorCompat;->from(Lccsanandroid/graphics/Shader;)Lccsanandroidx/core/content/res/ComplexColorCompat;

    move-result-object v4

    return-object v4

    .line 165
    :pswitch_1
    invoke-static {p0, v0, v1, p2}, Lccsanandroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Lccsanandroid/content/res/Resources;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/util/AttributeSet;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v4}, Lccsanandroidx/core/content/res/ComplexColorCompat;->from(Lccsanandroid/content/res/ColorStateList;)Lccsanandroidx/core/content/res/ComplexColorCompat;

    move-result-object v4

    return-object v4

    .line 160
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    new-instance v2, Lccsanorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No start tag found"

    invoke-direct {v2, v4}, Lccsanorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x557f730 -> :sswitch_1
        0x4705f3df -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static from(I)Lccsanandroidx/core/content/res/ComplexColorCompat;
    .locals 2
    .param p0, "color"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 76
    new-instance v0, Lccsanandroidx/core/content/res/ComplexColorCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Lccsanandroidx/core/content/res/ComplexColorCompat;-><init>(Lccsanandroid/graphics/Shader;Lccsanandroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method static from(Lccsanandroid/content/res/ColorStateList;)Lccsanandroidx/core/content/res/ComplexColorCompat;
    .locals 3
    .param p0, "colorStateList"    # Lccsanandroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorStateList"
        }
    .end annotation

    .line 72
    new-instance v0, Lccsanandroidx/core/content/res/ComplexColorCompat;

    invoke-virtual {p0}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lccsanandroidx/core/content/res/ComplexColorCompat;-><init>(Lccsanandroid/graphics/Shader;Lccsanandroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method static from(Lccsanandroid/graphics/Shader;)Lccsanandroidx/core/content/res/ComplexColorCompat;
    .locals 3
    .param p0, "shader"    # Lccsanandroid/graphics/Shader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shader"
        }
    .end annotation

    .line 68
    new-instance v0, Lccsanandroidx/core/content/res/ComplexColorCompat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lccsanandroidx/core/content/res/ComplexColorCompat;-><init>(Lccsanandroid/graphics/Shader;Lccsanandroid/content/res/ColorStateList;I)V

    return-object v0
.end method

.method public static inflate(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroidx/core/content/res/ComplexColorCompat;
    .locals 3
    .param p0, "resources"    # Lccsanandroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resources",
            "resId",
            "theme"
        }
    .end annotation

    .line 140
    :try_start_0
    invoke-static {p0, p1, p2}, Lccsanandroidx/core/content/res/ComplexColorCompat;->createFromXml(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroidx/core/content/res/ComplexColorCompat;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ComplexColorCompat"

    const-string v2, "Failed to inflate ComplexColor."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 86
    iget v0, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mColor:I

    return v0
.end method

.method public getShader()Lccsanandroid/graphics/Shader;
    .locals 1

    .line 81
    iget-object v0, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mShader:Lccsanandroid/graphics/Shader;

    return-object v0
.end method

.method public isGradient()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mShader:Lccsanandroid/graphics/Shader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mShader:Lccsanandroid/graphics/Shader;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mColorStateList:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStateChanged([I)Z
    .locals 3
    .param p1, "stateSet"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateSet"
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "changed":Z
    invoke-virtual {p0}, Lccsanandroidx/core/content/res/ComplexColorCompat;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mColorStateList:Lccsanandroid/content/res/ColorStateList;

    .line 111
    invoke-virtual {v1}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 110
    invoke-virtual {v1, p1, v2}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 112
    .local v1, "colorForState":I
    iget v2, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mColor:I

    if-eq v1, v2, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 114
    iput v1, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mColor:I

    .line 117
    .end local v1    # "colorForState":I
    :cond_0
    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 90
    iput p1, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mColor:I

    .line 91
    return-void
.end method

.method public willDraw()Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lccsanandroidx/core/content/res/ComplexColorCompat;->isGradient()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lccsanandroidx/core/content/res/ComplexColorCompat;->mColor:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
