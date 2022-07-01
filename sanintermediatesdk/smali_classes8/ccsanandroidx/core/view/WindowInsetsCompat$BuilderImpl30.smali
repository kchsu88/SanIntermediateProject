.class Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl30;
.super Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl30"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1865
    invoke-direct {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>()V

    .line 1866
    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 0
    .param p1, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1869
    invoke-direct {p0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 1870
    return-void
.end method


# virtual methods
.method setInsets(ILccsanandroidx/core/graphics/Insets;)V
    .locals 3
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeMask",
            "insets"
        }
    .end annotation

    .line 1874
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl30;->mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;

    .line 1875
    invoke-static {p1}, Lccsanandroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result v1

    .line 1876
    invoke-virtual {p2}, Lccsanandroidx/core/graphics/Insets;->toPlatformInsets()Lccsanandroid/graphics/Insets;

    move-result-object v2

    .line 1874
    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/WindowInsets$Builder;->setInsets(ILccsanandroid/graphics/Insets;)Lccsanandroid/view/WindowInsets$Builder;

    .line 1878
    return-void
.end method

.method setInsetsIgnoringVisibility(ILccsanandroidx/core/graphics/Insets;)V
    .locals 3
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeMask",
            "insets"
        }
    .end annotation

    .line 1882
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl30;->mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;

    .line 1883
    invoke-static {p1}, Lccsanandroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result v1

    .line 1884
    invoke-virtual {p2}, Lccsanandroidx/core/graphics/Insets;->toPlatformInsets()Lccsanandroid/graphics/Insets;

    move-result-object v2

    .line 1882
    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILccsanandroid/graphics/Insets;)Lccsanandroid/view/WindowInsets$Builder;

    .line 1886
    return-void
.end method

.method setVisible(IZ)V
    .locals 2
    .param p1, "typeMask"    # I
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeMask",
            "visible"
        }
    .end annotation

    .line 1890
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl30;->mPlatBuilder:Lccsanandroid/view/WindowInsets$Builder;

    invoke-static {p1}, Lccsanandroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lccsanandroid/view/WindowInsets$Builder;->setVisible(IZ)Lccsanandroid/view/WindowInsets$Builder;

    .line 1891
    return-void
.end method
