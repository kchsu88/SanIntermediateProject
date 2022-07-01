.class Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;
.super Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl29"
.end annotation


# instance fields
.field final mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1809
    invoke-direct {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 1810
    new-instance v0, Lccsanandroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Lccsanandroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;

    .line 1811
    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 2
    .param p1, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1814
    invoke-direct {p0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 1815
    invoke-virtual {p1}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    .line 1816
    .local v0, "platInsets":Lccsanandroid/view/WindowInsets;
    if-eqz v0, :cond_0

    .line 1817
    new-instance v1, Lccsanandroid/view/WindowInsets$Builder;

    invoke-direct {v1, v0}, Lccsanandroid/view/WindowInsets$Builder;-><init>(Lccsanandroid/view/WindowInsets;)V

    goto :goto_0

    .line 1818
    :cond_0
    new-instance v1, Lccsanandroid/view/WindowInsets$Builder;

    invoke-direct {v1}, Lccsanandroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;

    .line 1819
    return-void
.end method


# virtual methods
.method build()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1854
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;->applyInsetTypes()V

    .line 1855
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;

    .line 1856
    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets$Builder;->build()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    .line 1855
    invoke-static {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 1857
    .local v0, "windowInsetsCompat":Lccsanandroidx/core/view/WindowInsetsCompat;
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mInsetsTypeMask:[Lccsanandroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->setOverriddenInsets([Lccsanandroidx/core/graphics/Insets;)V

    .line 1858
    return-object v0
.end method

.method setDisplayCutout(Lccsanandroidx/core/view/DisplayCutoutCompat;)V
    .locals 2
    .param p1, "displayCutout"    # Lccsanandroidx/core/view/DisplayCutoutCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayCutout"
        }
    .end annotation

    .line 1848
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanandroidx/core/view/DisplayCutoutCompat;->unwrap()Lccsanandroid/view/DisplayCutout;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/view/WindowInsets$Builder;->setDisplayCutout(Lccsanandroid/view/DisplayCutout;)Lccsanandroid/view/WindowInsets$Builder;

    .line 1849
    return-void
.end method

.method setMandatorySystemGestureInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 2
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1833
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lccsanandroidx/core/graphics/Insets;->toPlatformInsets()Lccsanandroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Lccsanandroid/graphics/Insets;)Lccsanandroid/view/WindowInsets$Builder;

    .line 1834
    return-void
.end method

.method setStableInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 2
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1843
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lccsanandroidx/core/graphics/Insets;->toPlatformInsets()Lccsanandroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/WindowInsets$Builder;->setStableInsets(Lccsanandroid/graphics/Insets;)Lccsanandroid/view/WindowInsets$Builder;

    .line 1844
    return-void
.end method

.method setSystemGestureInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 2
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1828
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lccsanandroidx/core/graphics/Insets;->toPlatformInsets()Lccsanandroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/WindowInsets$Builder;->setSystemGestureInsets(Lccsanandroid/graphics/Insets;)Lccsanandroid/view/WindowInsets$Builder;

    .line 1829
    return-void
.end method

.method setSystemWindowInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 2
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1823
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lccsanandroidx/core/graphics/Insets;->toPlatformInsets()Lccsanandroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/WindowInsets$Builder;->setSystemWindowInsets(Lccsanandroid/graphics/Insets;)Lccsanandroid/view/WindowInsets$Builder;

    .line 1824
    return-void
.end method

.method setTappableElementInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 2
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1838
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lccsanandroidx/core/graphics/Insets;->toPlatformInsets()Lccsanandroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/WindowInsets$Builder;->setTappableElementInsets(Lccsanandroid/graphics/Insets;)Lccsanandroid/view/WindowInsets$Builder;

    .line 1839
    return-void
.end method
