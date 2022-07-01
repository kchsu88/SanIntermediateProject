.class public final Lccsancom/mbridge/msdk/foundation/tools/z;
.super Ljava/lang/Object;
.source "ViewCoveredUtils.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/mbridge/msdk/foundation/tools/z;->a:Z

    return-void
.end method

.method private static a(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)I
    .locals 2

    .line 131
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 132
    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 133
    goto :goto_1

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    :goto_1
    return v0
.end method

.method public static a(Lccsanandroid/view/View;)Z
    .locals 8

    .line 24
    nop

    .line 27
    invoke-virtual {p0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "ViewUtils"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 28
    const-string p0, "Banner Judge : Banner\'s not visible."

    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return v2

    .line 33
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 34
    const-string p0, "Banner Judge : Banner\'s alpha must set up 50%."

    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return v2

    .line 39
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 41
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    const-string p0, "View Judge : View\'s container is not visible."

    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return v2

    .line 48
    :cond_2
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 49
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getGlobalVisibleRect(Lccsanandroid/graphics/Rect;)Z

    move-result v3

    .line 50
    iget v4, v0, Lccsanandroid/graphics/Rect;->bottom:I

    iget v5, v0, Lccsanandroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget v5, v0, Lccsanandroid/graphics/Rect;->right:I

    iget v0, v0, Lccsanandroid/graphics/Rect;->left:I

    sub-int/2addr v5, v0

    mul-int v4, v4, v5

    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v5

    mul-int v0, v0, v5

    div-int/lit8 v0, v0, 0x2

    const/4 v5, 0x0

    if-lt v4, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 51
    :goto_0
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 53
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View Judge : partVisible is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " halfPercentVisible is "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View Judge : totalViewVisible is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-nez v4, :cond_5

    .line 56
    return v2

    .line 55
    :cond_5
    move-object v0, p0

    .line 60
    :goto_2
    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lccsanandroid/view/ViewGroup;

    if-eqz v3, :cond_b

    .line 61
    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lccsanandroid/view/ViewGroup;

    .line 63
    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/z;->a(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)I

    move-result v0

    .line 64
    add-int/2addr v0, v2

    :goto_3
    invoke-virtual {v3}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 65
    invoke-virtual {v3, v0}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v4

    .line 67
    invoke-virtual {v4}, Lccsanandroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_6

    .line 68
    goto :goto_4

    .line 70
    :cond_6
    invoke-static {p0, v4}, Lccsancom/mbridge/msdk/foundation/tools/z;->a(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 71
    instance-of v6, v4, Lccsanandroid/view/ViewGroup;

    if-eqz v6, :cond_8

    move-object v6, v4

    check-cast v6, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v6}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_8

    .line 72
    const-string v4, "View Judge : Covered by ViewGroup."

    invoke-static {v1, v4}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {p0, v6}, Lccsancom/mbridge/msdk/foundation/tools/z;->b(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Z

    move-result v4

    .line 74
    sput-boolean v5, Lccsancom/mbridge/msdk/foundation/tools/z;->a:Z

    .line 75
    if-eqz v4, :cond_7

    .line 76
    return v2

    .line 78
    :cond_7
    goto :goto_4

    .line 79
    :cond_8
    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/z;->b(Lccsanandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 80
    const-string p0, "View Judge : View Covered and Cover View is not transparent."

    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return v2

    .line 64
    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 87
    :cond_a
    nop

    .line 88
    move-object v0, v3

    goto :goto_2

    .line 90
    :cond_b
    const-string p0, "View Judge : Well done, View is not covered."

    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return v5
.end method

.method private static a(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 4

    .line 111
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 112
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getGlobalVisibleRect(Lccsanandroid/graphics/Rect;)Z

    .line 114
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 115
    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->getGlobalVisibleRect(Lccsanandroid/graphics/Rect;)Z

    .line 117
    invoke-static {v0, v1}, Lccsanandroid/graphics/Rect;->intersects(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget p1, v0, Lccsanandroid/graphics/Rect;->right:I

    iget v2, v1, Lccsanandroid/graphics/Rect;->right:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v2, v0, Lccsanandroid/graphics/Rect;->left:I

    iget v3, v1, Lccsanandroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p1, v2

    .line 119
    iget v2, v0, Lccsanandroid/graphics/Rect;->bottom:I

    iget v3, v1, Lccsanandroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v0, v0, Lccsanandroid/graphics/Rect;->top:I

    iget v1, v1, Lccsanandroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v2, v0

    .line 121
    mul-int p1, p1, v2

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result p0

    mul-int v0, v0, p0

    if-lt p1, v0, :cond_0

    .line 122
    const/4 p0, 0x1

    return p0

    .line 125
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lccsanandroid/view/View;)Z
    .locals 3

    .line 96
    invoke-virtual {p0}, Lccsanandroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 97
    return v1

    .line 101
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 102
    invoke-virtual {p0}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_2

    .line 103
    :cond_1
    return v1

    .line 107
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Z
    .locals 5

    .line 140
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 141
    const-string v1, "ViewUtils"

    const-string v2, "View Judge : Start Loop"

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lccsanandroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    goto :goto_1

    .line 148
    :cond_0
    invoke-static {p0, v2}, Lccsancom/mbridge/msdk/foundation/tools/z;->a(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    instance-of v3, v2, Lccsanandroid/webkit/WebView;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lccsanandroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 150
    const-string v3, "View Judge : View Covered by WebView."

    invoke-static {v1, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sput-boolean v4, Lccsancom/mbridge/msdk/foundation/tools/z;->a:Z

    .line 154
    :cond_1
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/z;->b(Lccsanandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    const-string v3, "View Judge : View Covered and Cover ViewGroup is not transparent."

    invoke-static {v1, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sput-boolean v4, Lccsancom/mbridge/msdk/foundation/tools/z;->a:Z

    .line 159
    :cond_2
    sget-boolean v1, Lccsancom/mbridge/msdk/foundation/tools/z;->a:Z

    if-eqz v1, :cond_3

    .line 160
    goto :goto_2

    .line 163
    :cond_3
    instance-of v1, v2, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 164
    check-cast v2, Lccsanandroid/view/ViewGroup;

    invoke-static {p0, v2}, Lccsancom/mbridge/msdk/foundation/tools/z;->b(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Z

    .line 140
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_5
    :goto_2
    sget-boolean p0, Lccsancom/mbridge/msdk/foundation/tools/z;->a:Z

    return p0
.end method
