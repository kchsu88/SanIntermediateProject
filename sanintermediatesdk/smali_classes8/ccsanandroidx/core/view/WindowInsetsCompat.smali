.class public Lccsanandroidx/core/view/WindowInsetsCompat;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;,
        Lccsanandroidx/core/view/WindowInsetsCompat$TypeImpl30;,
        Lccsanandroidx/core/view/WindowInsetsCompat$Type;,
        Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl30;,
        Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl29;,
        Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl20;,
        Lccsanandroidx/core/view/WindowInsetsCompat$BuilderImpl;,
        Lccsanandroidx/core/view/WindowInsetsCompat$Builder;,
        Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;,
        Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;,
        Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;,
        Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;,
        Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;,
        Lccsanandroidx/core/view/WindowInsetsCompat$Impl;
    }
.end annotation


# static fields
.field public static final CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;

.field private static final TAG:Ljava/lang/String; = "WindowInsetsCompat"


# instance fields
.field private final mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 79
    sget-object v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;->CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;

    sput-object v0, Lccsanandroidx/core/view/WindowInsetsCompat;->CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;

    goto :goto_0

    .line 81
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;

    sput-object v0, Lccsanandroidx/core/view/WindowInsetsCompat;->CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 83
    :goto_0
    return-void
.end method

.method private constructor <init>(Lccsanandroid/view/WindowInsets;)V
    .locals 2
    .param p1, "insets"    # Lccsanandroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 90
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 91
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 92
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 93
    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 94
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 95
    :cond_2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 96
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 97
    :cond_3
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    .line 98
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 100
    :cond_4
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    .line 102
    :goto_0
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 3
    .param p1, "src"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "src"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-eqz p1, :cond_5

    .line 112
    iget-object v0, p1, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    .line 113
    .local v0, "srcImpl":Lccsanandroidx/core/view/WindowInsetsCompat$Impl;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    instance-of v1, v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;

    move-object v2, v0

    check-cast v2, Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;

    invoke-direct {v1, p0, v2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;)V

    iput-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 115
    :cond_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    instance-of v1, v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;

    if-eqz v1, :cond_1

    .line 116
    new-instance v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;

    move-object v2, v0

    check-cast v2, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;

    invoke-direct {v1, p0, v2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;)V

    iput-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 117
    :cond_1
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    instance-of v1, v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;

    if-eqz v1, :cond_2

    .line 118
    new-instance v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;

    move-object v2, v0

    check-cast v2, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;

    invoke-direct {v1, p0, v2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;)V

    iput-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 119
    :cond_2
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    instance-of v1, v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;

    if-eqz v1, :cond_3

    .line 120
    new-instance v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;

    move-object v2, v0

    check-cast v2, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;

    invoke-direct {v1, p0, v2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;)V

    iput-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 121
    :cond_3
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_4

    instance-of v1, v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;

    if-eqz v1, :cond_4

    .line 122
    new-instance v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;

    move-object v2, v0

    check-cast v2, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;

    invoke-direct {v1, p0, v2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;)V

    iput-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_0

    .line 124
    :cond_4
    new-instance v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-direct {v1, p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    iput-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    .line 126
    :goto_0
    invoke-virtual {v0, p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->copyWindowDataInto(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 127
    .end local v0    # "srcImpl":Lccsanandroidx/core/view/WindowInsetsCompat$Impl;
    goto :goto_1

    .line 129
    :cond_5
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    .line 131
    :goto_1
    return-void
.end method

.method static insetInsets(Lccsanandroidx/core/graphics/Insets;IIII)Lccsanandroidx/core/graphics/Insets;
    .locals 5
    .param p0, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "insets",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1334
    iget v0, p0, Lccsanandroidx/core/graphics/Insets;->left:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1335
    .local v0, "newLeft":I
    iget v2, p0, Lccsanandroidx/core/graphics/Insets;->top:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1336
    .local v2, "newTop":I
    iget v3, p0, Lccsanandroidx/core/graphics/Insets;->right:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1337
    .local v3, "newRight":I
    iget v4, p0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1338
    .local v1, "newBottom":I
    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    .line 1339
    return-object p0

    .line 1341
    :cond_0
    invoke-static {v0, v2, v3, v1}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v4

    return-object v4
.end method

.method public static toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p0, "insets"    # Lccsanandroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p0, "insets"    # Lccsanandroid/view/WindowInsets;
    .param p1, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "insets",
            "view"
        }
    .end annotation

    .line 168
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat;

    invoke-static {p0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/WindowInsets;

    invoke-direct {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;-><init>(Lccsanandroid/view/WindowInsets;)V

    .line 169
    .local v0, "wic":Lccsanandroidx/core/view/WindowInsetsCompat;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanandroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getRootWindowInsets(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 173
    invoke-virtual {p1}, Lccsanandroid/view/View;->getRootView()Lccsanandroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Lccsanandroid/view/View;)V

    .line 175
    :cond_0
    return-object v0
.end method


# virtual methods
.method public consumeDisplayCutout()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->consumeDisplayCutout()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public consumeStableInsets()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 477
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->consumeStableInsets()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public consumeSystemWindowInsets()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->consumeSystemWindowInsets()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method copyRootViewBounds(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 2111
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->copyRootViewBounds(Lccsanandroid/view/View;)V

    .line 2112
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 718
    if-ne p0, p1, :cond_0

    .line 719
    const/4 v0, 0x1

    return v0

    .line 721
    :cond_0
    instance-of v0, p1, Lccsanandroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_1

    .line 722
    const/4 v0, 0x0

    return v0

    .line 724
    :cond_1
    move-object v0, p1

    check-cast v0, Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 725
    .local v0, "other":Lccsanandroidx/core/view/WindowInsetsCompat;
    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    iget-object v2, v0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-static {v1, v2}, Lccsanandroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDisplayCutout()Lccsanandroidx/core/view/DisplayCutoutCompat;
    .locals 1

    .line 490
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Lccsanandroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    return-object v0
.end method

.method public getInsets(I)Lccsanandroidx/core/graphics/Insets;
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

    .line 668
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getInsetsIgnoringVisibility(I)Lccsanandroidx/core/graphics/Insets;
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

    .line 696
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getInsetsIgnoringVisibility(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getMandatorySystemGestureInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getMandatorySystemGestureInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getStableInsetBottom()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    return v0
.end method

.method public getStableInsetLeft()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Lccsanandroidx/core/graphics/Insets;->left:I

    return v0
.end method

.method public getStableInsetRight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Lccsanandroidx/core/graphics/Insets;->right:I

    return v0
.end method

.method public getStableInsetTop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Lccsanandroidx/core/graphics/Insets;->top:I

    return v0
.end method

.method public getStableInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 549
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getSystemGestureInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 606
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemGestureInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Lccsanandroidx/core/graphics/Insets;->bottom:I

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Lccsanandroidx/core/graphics/Insets;->left:I

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Lccsanandroidx/core/graphics/Insets;->right:I

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Lccsanandroidx/core/graphics/Insets;->top:I

    return v0
.end method

.method public getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 526
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getTappableElementInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 585
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getTappableElementInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public hasInsets()Z
    .locals 2

    .line 267
    invoke-static {}, Lccsanandroidx/core/view/WindowInsetsCompat$Type;->all()I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getInsets(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-static {}, Lccsanandroidx/core/view/WindowInsetsCompat$Type;->all()I

    move-result v0

    invoke-static {}, Lccsanandroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Lccsanandroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 267
    :goto_1
    return v0
.end method

.method public hasStableInsets()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasSystemWindowInsets()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Lccsanandroidx/core/graphics/Insets;->NONE:Lccsanandroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 730
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public inset(IIII)Lccsanandroidx/core/view/WindowInsetsCompat;
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

    .line 651
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->inset(IIII)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public inset(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 4
    .param p1, "insets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 626
    iget v0, p1, Lccsanandroidx/core/graphics/Insets;->left:I

    iget v1, p1, Lccsanandroidx/core/graphics/Insets;->top:I

    iget v2, p1, Lccsanandroidx/core/graphics/Insets;->right:I

    iget v3, p1, Lccsanandroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lccsanandroidx/core/view/WindowInsetsCompat;->inset(IIII)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public isConsumed()Z
    .locals 1

    .line 286
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public isRound()Z
    .locals 1

    .line 302
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    move-result v0

    return v0
.end method

.method public isVisible(I)Z
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

    .line 713
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->isVisible(I)Z

    move-result v0

    return v0
.end method

.method public replaceSystemWindowInsets(IIII)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 2
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 341
    invoke-static {p1, p2, p3, p4}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->build()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 340
    return-object v0
.end method

.method public replaceSystemWindowInsets(Lccsanandroid/graphics/Rect;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p1, "systemWindowInsets"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "systemWindowInsets"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    new-instance v0, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 361
    invoke-static {p1}, Lccsanandroidx/core/graphics/Insets;->of(Lccsanandroid/graphics/Rect;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->build()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 360
    return-object v0
.end method

.method setOverriddenInsets([Lccsanandroidx/core/graphics/Insets;)V
    .locals 1
    .param p1, "insetsTypeMask"    # [Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insetsTypeMask"
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->setOverriddenInsets([Lccsanandroidx/core/graphics/Insets;)V

    .line 1704
    return-void
.end method

.method setRootViewData(Lccsanandroidx/core/graphics/Insets;)V
    .locals 1
    .param p1, "visibleInsets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibleInsets"
        }
    .end annotation

    .line 2107
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->setRootViewData(Lccsanandroidx/core/graphics/Insets;)V

    .line 2108
    return-void
.end method

.method setRootWindowInsets(Lccsanandroidx/core/view/WindowInsetsCompat;)V
    .locals 1
    .param p1, "rootWindowInsets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootWindowInsets"
        }
    .end annotation

    .line 2103
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->setRootWindowInsets(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 2104
    return-void
.end method

.method setStableInsets(Lccsanandroidx/core/graphics/Insets;)V
    .locals 1
    .param p1, "stableInsets"    # Lccsanandroidx/core/graphics/Insets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stableInsets"
        }
    .end annotation

    .line 1801
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl;->setStableInsets(Lccsanandroidx/core/graphics/Insets;)V

    .line 1802
    return-void
.end method

.method public toWindowInsets()Lccsanandroid/view/WindowInsets;
    .locals 2

    .line 741
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat;->mImpl:Lccsanandroidx/core/view/WindowInsetsCompat$Impl;

    instance-of v1, v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;

    if-eqz v1, :cond_0

    check-cast v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;

    iget-object v0, v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
