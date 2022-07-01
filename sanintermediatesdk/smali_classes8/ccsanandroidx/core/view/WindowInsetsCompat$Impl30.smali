.class Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;
.super Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# static fields
.field static final CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1347
    sget-object v0, Lccsanandroid/view/WindowInsets;->CONSUMED:Lccsanandroid/view/WindowInsets;

    invoke-static {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    sput-object v0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;->CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V
    .locals 0
    .param p1, "host"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p2, "insets"    # Lccsanandroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "insets"
        }
    .end annotation

    .line 1350
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V

    .line 1351
    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;)V
    .locals 0
    .param p1, "host"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p2, "other"    # Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "other"
        }
    .end annotation

    .line 1354
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;)V

    .line 1355
    return-void
.end method


# virtual methods
.method final copyRootViewBounds(Lccsanandroid/view/View;)V
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

    .line 1384
    return-void
.end method

.method public getInsets(I)Lccsanandroidx/core/graphics/Insets;
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

    .line 1360
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1361
    invoke-static {p1}, Lccsanandroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/WindowInsets;->getInsets(I)Lccsanandroid/graphics/Insets;

    move-result-object v0

    .line 1360
    invoke-static {v0}, Lccsanandroidx/core/graphics/Insets;->toCompatInsets(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getInsetsIgnoringVisibility(I)Lccsanandroidx/core/graphics/Insets;
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

    .line 1368
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1369
    invoke-static {p1}, Lccsanandroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Lccsanandroid/graphics/Insets;

    move-result-object v0

    .line 1368
    invoke-static {v0}, Lccsanandroidx/core/graphics/Insets;->toCompatInsets(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public isVisible(I)Z
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

    .line 1375
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl30;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-static {p1}, Lccsanandroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    return v0
.end method
