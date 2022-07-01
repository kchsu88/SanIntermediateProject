.class Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final mInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

.field mInsetsTypeMask:[Lccsanandroidx/core/graphics/Insets;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1620
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lccsanandroidx/core/view/WindowInsetsCompat;

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    invoke-direct {p0, v0}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 1621
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

    .line 1623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 1625
    return-void
.end method


# virtual methods
.method protected final applyInsetTypes()V
    .locals 5

    .line 1669
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Lccsanandroidx/core/graphics/Insets;

    if-eqz v0, :cond_4

    .line 1670
    const/4 v1, 0x1

    invoke-static {v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v2

    aget-object v0, v0, v2

    .line 1671
    .local v0, "statusBars":Lccsanandroidx/core/graphics/Insets;
    iget-object v2, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Lccsanandroidx/core/graphics/Insets;

    const/4 v3, 0x2

    invoke-static {v3}, Lccsanandroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v2, v2, v4

    .line 1675
    .local v2, "navigationBars":Lccsanandroidx/core/graphics/Insets;
    if-nez v2, :cond_0

    .line 1676
    iget-object v4, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v4, v3}, Lccsanandroidx/core/view/WindowInsetsCompat;->getInsets(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v2

    .line 1678
    :cond_0
    if-nez v0, :cond_1

    .line 1679
    iget-object v3, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v3, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->getInsets(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    .line 1682
    :cond_1
    invoke-static {v0, v2}, Lccsanandroidx/core/graphics/Insets;->max(Lccsanandroidx/core/graphics/Insets;Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Lccsanandroidx/core/graphics/Insets;)V

    .line 1684
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Lccsanandroidx/core/graphics/Insets;

    const/16 v3, 0x10

    invoke-static {v3}, Lccsanandroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v3

    aget-object v1, v1, v3

    .line 1685
    .local v1, "i":Lccsanandroidx/core/graphics/Insets;
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemGestureInsets(Lccsanandroidx/core/graphics/Insets;)V

    .line 1687
    :cond_2
    iget-object v3, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Lccsanandroidx/core/graphics/Insets;

    const/16 v4, 0x20

    invoke-static {v4}, Lccsanandroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v1, v3, v4

    .line 1688
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setMandatorySystemGestureInsets(Lccsanandroidx/core/graphics/Insets;)V

    .line 1690
    :cond_3
    iget-object v3, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Lccsanandroidx/core/graphics/Insets;

    const/16 v4, 0x40

    invoke-static {v4}, Lccsanandroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v1, v3, v4

    .line 1691
    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setTappableElementInsets(Lccsanandroidx/core/graphics/Insets;)V

    .line 1693
    .end local v0    # "statusBars":Lccsanandroidx/core/graphics/Insets;
    .end local v1    # "i":Lccsanandroidx/core/graphics/Insets;
    .end local v2    # "navigationBars":Lccsanandroidx/core/graphics/Insets;
    :cond_4
    return-void
.end method

.method build()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1697
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->applyInsetTypes()V

    .line 1698
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method setDisplayCutout(Lccsanandroidx/core/view/DisplayCutoutCompat;)V
    .locals 0
    .param p1, "displayCutout"    # Lccsanandroidx/core/view/DisplayCutoutCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayCutout"
        }
    .end annotation

    .line 1637
    return-void
.end method

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

    .line 1641
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Lccsanandroidx/core/graphics/Insets;

    if-nez v0, :cond_0

    .line 1642
    const/16 v0, 0x9

    new-array v0, v0, [Lccsanandroidx/core/graphics/Insets;

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Lccsanandroidx/core/graphics/Insets;

    .line 1644
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_2

    .line 1645
    and-int v1, p1, v0

    if-nez v1, :cond_1

    .line 1646
    goto :goto_1

    .line 1648
    :cond_1
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Lccsanandroidx/core/graphics/Insets;

    invoke-static {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v2

    aput-object p2, v1, v2

    .line 1644
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1650
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method setInsetsIgnoringVisibility(ILccsanandroidx/core/graphics/Insets;)V
    .locals 2
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

    .line 1653
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1659
    return-void

    .line 1656
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ignoring visibility inset not available for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMandatorySystemGestureInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1631
    return-void
.end method

.method setStableInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1635
    return-void
.end method

.method setSystemGestureInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1629
    return-void
.end method

.method setSystemWindowInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1627
    return-void
.end method

.method setTappableElementInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 0
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 1633
    return-void
.end method

.method setVisible(IZ)V
    .locals 0
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

    .line 1661
    return-void
.end method
