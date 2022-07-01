.class public final Lccsanandroidx/core/view/WindowInsetsCompat$Builder;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1397
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1398
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl30;

    invoke-direct {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 1399
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 1400
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;

    invoke-direct {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 1401
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 1402
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;

    invoke-direct {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 1404
    :cond_2
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-direct {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 1406
    :goto_0
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V
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

    .line 1413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1414
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1415
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl30;

    invoke-direct {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 1416
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 1417
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;

    invoke-direct {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 1418
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 1419
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;

    invoke-direct {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    goto :goto_0

    .line 1421
    :cond_2
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-direct {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    .line 1423
    :goto_0
    return-void
.end method


# virtual methods
.method public build()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1610
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->build()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayCutout(Lccsanandroidx/core/view/DisplayCutoutCompat;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
    .param p1, "displayCutout"    # Lccsanandroidx/core/view/DisplayCutoutCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayCutout"
        }
    .end annotation

    .line 1599
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setDisplayCutout(Lccsanandroidx/core/view/DisplayCutoutCompat;)V

    .line 1600
    return-object p0
.end method

.method public setInsets(ILccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
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

    .line 1521
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setInsets(ILccsanandroidx/core/graphics/Insets;)V

    .line 1522
    return-object p0
.end method

.method public setInsetsIgnoringVisibility(ILccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
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

    .line 1547
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setInsetsIgnoringVisibility(ILccsanandroidx/core/graphics/Insets;)V

    .line 1548
    return-object p0
.end method

.method public setMandatorySystemGestureInsets(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
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

    .line 1484
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setMandatorySystemGestureInsets(Lccsanandroidx/core/graphics/Insets;)V

    .line 1485
    return-object p0
.end method

.method public setStableInsets(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
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

    .line 1584
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setStableInsets(Lccsanandroidx/core/graphics/Insets;)V

    .line 1585
    return-object p0
.end method

.method public setSystemGestureInsets(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
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

    .line 1459
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemGestureInsets(Lccsanandroidx/core/graphics/Insets;)V

    .line 1460
    return-object p0
.end method

.method public setSystemWindowInsets(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
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

    .line 1439
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Lccsanandroidx/core/graphics/Insets;)V

    .line 1440
    return-object p0
.end method

.method public setTappableElementInsets(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
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

    .line 1503
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setTappableElementInsets(Lccsanandroidx/core/graphics/Insets;)V

    .line 1504
    return-object p0
.end method

.method public setVisible(IZ)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
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

    .line 1561
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;->setVisible(IZ)V

    .line 1562
    return-object p0
.end method
