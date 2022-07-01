.class public final Lccsanandroidx/core/graphics/Insets;
.super Ljava/lang/Object;
.source "Insets.java"


# static fields
.field public static final NONE:Lccsanandroidx/core/graphics/Insets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lccsanandroidx/core/graphics/Insets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lccsanandroidx/core/graphics/Insets;-><init>(IIII)V

    sput-object v0, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lccsanandroidx/core/graphics/Insets;->left:I

    .line 45
    iput p2, p0, Lccsanandroidx/core/graphics/Insets;->top:I

    .line 46
    iput p3, p0, Lccsanandroidx/core/graphics/Insets;->right:I

    .line 47
    iput p4, p0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    .line 48
    return-void
.end method

.method public static add(Lccsanandroidx/core/graphics/Insets;Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;
    .locals 5
    .param p0, "a"    # Lccsanandroidx/core/graphics/Insets;
    .param p1, "b"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 89
    iget v0, p0, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v1, p1, Lccsanandroidx/core/graphics/Insets;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v2, p1, Lccsanandroidx/core/graphics/Insets;->top:I

    add-int/2addr v1, v2

    iget v2, p0, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v3, p1, Lccsanandroidx/core/graphics/Insets;->right:I

    add-int/2addr v2, v3

    iget v3, p0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    iget v4, p1, Lccsanandroidx/core/graphics/Insets;->bottom:I

    add-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public static max(Lccsanandroidx/core/graphics/Insets;Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;
    .locals 5
    .param p0, "a"    # Lccsanandroidx/core/graphics/Insets;
    .param p1, "b"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 114
    iget v0, p0, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v1, p1, Lccsanandroidx/core/graphics/Insets;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v2, p1, Lccsanandroidx/core/graphics/Insets;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v3, p1, Lccsanandroidx/core/graphics/Insets;->right:I

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    iget v4, p1, Lccsanandroidx/core/graphics/Insets;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 114
    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public static min(Lccsanandroidx/core/graphics/Insets;Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;
    .locals 5
    .param p0, "a"    # Lccsanandroidx/core/graphics/Insets;
    .param p1, "b"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 128
    iget v0, p0, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v1, p1, Lccsanandroidx/core/graphics/Insets;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v2, p1, Lccsanandroidx/core/graphics/Insets;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v3, p1, Lccsanandroidx/core/graphics/Insets;->right:I

    .line 129
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    iget v4, p1, Lccsanandroidx/core/graphics/Insets;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 128
    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public static of(IIII)Lccsanandroidx/core/graphics/Insets;
    .locals 1
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 63
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 64
    sget-object v0, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lccsanandroidx/core/graphics/Insets;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsanandroidx/core/graphics/Insets;-><init>(IIII)V

    return-object v0
.end method

.method public static of(Lccsanandroid/graphics/Rect;)Lccsanandroidx/core/graphics/Insets;
    .locals 4
    .param p0, "r"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 77
    iget v0, p0, Lccsanandroid/graphics/Rect;->left:I

    iget v1, p0, Lccsanandroid/graphics/Rect;->top:I

    iget v2, p0, Lccsanandroid/graphics/Rect;->right:I

    iget v3, p0, Lccsanandroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public static subtract(Lccsanandroidx/core/graphics/Insets;Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;
    .locals 5
    .param p0, "a"    # Lccsanandroidx/core/graphics/Insets;
    .param p1, "b"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 101
    iget v0, p0, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v1, p1, Lccsanandroidx/core/graphics/Insets;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v2, p1, Lccsanandroidx/core/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v3, p1, Lccsanandroidx/core/graphics/Insets;->right:I

    sub-int/2addr v2, v3

    iget v3, p0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    iget v4, p1, Lccsanandroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public static toCompatInsets(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;
    .locals 4
    .param p0, "insets"    # Lccsanandroid/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 188
    iget v0, p0, Lccsanandroid/graphics/Insets;->left:I

    iget v1, p0, Lccsanandroid/graphics/Insets;->top:I

    iget v2, p0, Lccsanandroid/graphics/Insets;->right:I

    iget v3, p0, Lccsanandroid/graphics/Insets;->bottom:I

    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;
    .locals 1
    .param p0, "insets"    # Lccsanandroid/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    invoke-static {p0}, Lccsanandroidx/core/graphics/Insets;->toCompatInsets(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 141
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 142
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    move-object v2, p1

    check-cast v2, Lccsanandroidx/core/graphics/Insets;

    .line 146
    .local v2, "insets":Lccsanandroidx/core/graphics/Insets;
    iget v3, p0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    iget v4, v2, Lccsanandroidx/core/graphics/Insets;->bottom:I

    if-eq v3, v4, :cond_2

    return v1

    .line 147
    :cond_2
    iget v3, p0, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v4, v2, Lccsanandroidx/core/graphics/Insets;->left:I

    if-eq v3, v4, :cond_3

    return v1

    .line 148
    :cond_3
    iget v3, p0, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v4, v2, Lccsanandroidx/core/graphics/Insets;->right:I

    if-eq v3, v4, :cond_4

    return v1

    .line 149
    :cond_4
    iget v3, p0, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v4, v2, Lccsanandroidx/core/graphics/Insets;->top:I

    if-eq v3, v4, :cond_5

    return v1

    .line 151
    :cond_5
    return v0

    .line 142
    .end local v2    # "insets":Lccsanandroidx/core/graphics/Insets;
    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 156
    iget v0, p0, Lccsanandroidx/core/graphics/Insets;->left:I

    .line 157
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lccsanandroidx/core/graphics/Insets;->top:I

    add-int/2addr v1, v2

    .line 158
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lccsanandroidx/core/graphics/Insets;->right:I

    add-int/2addr v0, v2

    .line 159
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    add-int/2addr v1, v2

    .line 160
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toPlatformInsets()Lccsanandroid/graphics/Insets;
    .locals 4

    .line 198
    iget v0, p0, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v1, p0, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v2, p0, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v3, p0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    invoke-static {v0, v1, v2, v3}, Lccsanandroid/graphics/Insets;->of(IIII)Lccsanandroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insets{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanandroidx/core/graphics/Insets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanandroidx/core/graphics/Insets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanandroidx/core/graphics/Insets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
