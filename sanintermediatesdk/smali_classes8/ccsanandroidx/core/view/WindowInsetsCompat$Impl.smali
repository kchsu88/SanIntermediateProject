.class Lccsanandroidx/core/view/WindowInsetsCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# static fields
.field static final CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;


# instance fields
.field final mHost:Lccsanandroidx/core/view/WindowInsetsCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 746
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    .line 747
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->build()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->consumeDisplayCutout()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->consumeStableInsets()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    sput-object v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 746
    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 0
    .param p1, "host"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "host"
        }
    .end annotation

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->mHost:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 756
    return-void
.end method


# virtual methods
.method consumeDisplayCutout()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 783
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->mHost:Lccsanandroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method consumeStableInsets()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 773
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->mHost:Lccsanandroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method consumeSystemWindowInsets()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 768
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->mHost:Lccsanandroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method copyRootViewBounds(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 863
    return-void
.end method

.method copyWindowDataInto(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 0
    .param p1, "other"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 866
    return-void
.end method

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

    .line 839
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 840
    :cond_0
    instance-of v1, p1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 841
    :cond_1
    move-object v1, p1

    check-cast v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    .line 842
    .local v1, "impl":Lccsanandroidx/core/view/WindowInsetsCompat$Impl;
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    move-result v3

    invoke-virtual {v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 843
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v3

    invoke-virtual {v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 844
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v3

    invoke-virtual {v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v4

    invoke-static {v3, v4}, Lccsanandroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 845
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v3

    invoke-virtual {v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v4

    invoke-static {v3, v4}, Lccsanandroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 846
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Lccsanandroidx/core/view/DisplayCutoutCompat;

    move-result-object v3

    invoke-virtual {v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Lccsanandroidx/core/view/DisplayCutoutCompat;

    move-result-object v4

    invoke-static {v3, v4}, Lccsanandroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 842
    :goto_0
    return v0
.end method

.method getDisplayCutout()Lccsanandroidx/core/view/DisplayCutoutCompat;
    .locals 1

    .line 778
    const/4 v0, 0x0

    return-object v0
.end method

.method getInsets(I)Lccsanandroidx/core/graphics/Insets;
    .locals 1
    .param p1, "typeMask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeMask"
        }
    .end annotation

    .line 821
    sget-object v0, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    return-object v0
.end method

.method getInsetsIgnoringVisibility(I)Lccsanandroidx/core/graphics/Insets;
    .locals 2
    .param p1, "typeMask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeMask"
        }
    .end annotation

    .line 826
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    .line 829
    sget-object v0, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    return-object v0

    .line 827
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to query the maximum insets for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getMandatorySystemGestureInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 805
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method getStableInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 793
    sget-object v0, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    return-object v0
.end method

.method getSystemGestureInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 799
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 788
    sget-object v0, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    return-object v0
.end method

.method getTappableElementInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 811
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 852
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 853
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Lccsanandroidx/core/view/DisplayCutoutCompat;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 852
    invoke-static {v0}, Lccsanandroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method inset(IIII)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1
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

    .line 816
    sget-object v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method isConsumed()Z
    .locals 1

    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method isRound()Z
    .locals 1

    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method isVisible(I)Z
    .locals 1
    .param p1, "typeMask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeMask"
        }
    .end annotation

    .line 833
    const/4 v0, 0x1

    return v0
.end method

.method public setOverriddenInsets([Lccsanandroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insetsTypeMask"    # [Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insetsTypeMask"
        }
    .end annotation

    .line 869
    return-void
.end method

.method setRootViewData(Lccsanandroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "visibleInsets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibleInsets"
        }
    .end annotation

    .line 860
    return-void
.end method

.method setRootWindowInsets(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 0
    .param p1, "rootWindowInsets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootWindowInsets"
        }
    .end annotation

    .line 857
    return-void
.end method

.method public setStableInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "stableInsets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stableInsets"
        }
    .end annotation

    .line 872
    return-void
.end method
