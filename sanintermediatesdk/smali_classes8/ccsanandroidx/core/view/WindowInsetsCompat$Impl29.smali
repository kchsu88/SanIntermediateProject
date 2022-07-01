.class Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;
.super Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl29"
.end annotation


# instance fields
.field private mMandatorySystemGestureInsets:Lccsanandroidx/core/graphics/Insets;

.field private mSystemGestureInsets:Lccsanandroidx/core/graphics/Insets;

.field private mTappableElementInsets:Lccsanandroidx/core/graphics/Insets;


# direct methods
.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V
    .locals 1
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

    .line 1286
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V

    .line 1281
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1282
    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1283
    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1287
    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;)V
    .locals 1
    .param p1, "host"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p2, "other"    # Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;
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

    .line 1290
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;)V

    .line 1281
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1282
    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1283
    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1291
    return-void
.end method


# virtual methods
.method getMandatorySystemGestureInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 1305
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Lccsanandroidx/core/graphics/Insets;

    if-nez v0, :cond_0

    .line 1306
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1307
    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->getMandatorySystemGestureInsets()Lccsanandroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/Insets;->toCompatInsets(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1309
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Lccsanandroidx/core/graphics/Insets;

    return-object v0
.end method

.method getSystemGestureInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 1296
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Lccsanandroidx/core/graphics/Insets;

    if-nez v0, :cond_0

    .line 1297
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->getSystemGestureInsets()Lccsanandroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/Insets;->toCompatInsets(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1299
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Lccsanandroidx/core/graphics/Insets;

    return-object v0
.end method

.method getTappableElementInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 1

    .line 1315
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Lccsanandroidx/core/graphics/Insets;

    if-nez v0, :cond_0

    .line 1316
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->getTappableElementInsets()Lccsanandroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/graphics/Insets;->toCompatInsets(Lccsanandroid/graphics/Insets;)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1318
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Lccsanandroidx/core/graphics/Insets;

    return-object v0
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

    .line 1324
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl29;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/view/WindowInsets;->inset(IIII)Lccsanandroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
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

    .line 1330
    return-void
.end method
