.class public final Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundsCompat"
.end annotation


# instance fields
.field private final mLowerBound:Lccsanandroidx/core/graphics/Insets;

.field private final mUpperBound:Lccsanandroidx/core/graphics/Insets;


# direct methods
.method private constructor <init>(Lccsanandroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/view/WindowInsetsAnimation$Bounds;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    invoke-static {p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;->getLowerBounds(Lccsanandroid/view/WindowInsetsAnimation$Bounds;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Lccsanandroidx/core/graphics/Insets;

    .line 228
    invoke-static {p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;->getHigherBounds(Lccsanandroid/view/WindowInsetsAnimation$Bounds;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Lccsanandroidx/core/graphics/Insets;

    .line 229
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/core/graphics/Insets;Lccsanandroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "lowerBound"    # Lccsanandroidx/core/graphics/Insets;
    .param p2, "upperBound"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lowerBound",
            "upperBound"
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Lccsanandroidx/core/graphics/Insets;

    .line 222
    iput-object p2, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Lccsanandroidx/core/graphics/Insets;

    .line 223
    return-void
.end method

.method public static toBoundsCompat(Lccsanandroid/view/WindowInsetsAnimation$Bounds;)Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 1
    .param p0, "bounds"    # Lccsanandroid/view/WindowInsetsAnimation$Bounds;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 322
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Lccsanandroid/view/WindowInsetsAnimation$Bounds;)V

    return-object v0
.end method


# virtual methods
.method public getLowerBound()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 252
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Lccsanandroidx/core/graphics/Insets;

    return-object v0
.end method

.method public getUpperBound()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 276
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Lccsanandroidx/core/graphics/Insets;

    return-object v0
.end method

.method public inset(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 7
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 292
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Lccsanandroidx/core/graphics/Insets;

    iget v2, p1, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v3, p1, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v4, p1, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v5, p1, Lccsanandroidx/core/graphics/Insets;->bottom:I

    .line 295
    invoke-static {v1, v2, v3, v4, v5}, Lccsanandroidx/core/view/WindowInsetsCompat;->insetInsets(Lccsanandroidx/core/graphics/Insets;IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Lccsanandroidx/core/graphics/Insets;

    iget v3, p1, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v4, p1, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v5, p1, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v6, p1, Lccsanandroidx/core/graphics/Insets;->bottom:I

    .line 297
    invoke-static {v2, v3, v4, v5, v6}, Lccsanandroidx/core/view/WindowInsetsCompat;->insetInsets(Lccsanandroidx/core/graphics/Insets;IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;-><init>(Lccsanandroidx/core/graphics/Insets;Lccsanandroidx/core/graphics/Insets;)V

    .line 292
    return-object v0
.end method

.method public toBounds()Lccsanandroid/view/WindowInsetsAnimation$Bounds;
    .locals 1

    .line 312
    invoke-static {p0}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Impl30;->createPlatformBounds(Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Lccsanandroid/view/WindowInsetsAnimation$Bounds;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{lower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mLowerBound:Lccsanandroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " upper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->mUpperBound:Lccsanandroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
