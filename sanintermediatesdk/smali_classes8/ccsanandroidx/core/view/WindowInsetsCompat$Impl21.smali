.class Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;
.super Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl21"
.end annotation


# instance fields
.field private mStableInsets:Lccsanandroidx/core/graphics/Insets;


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

    .line 1195
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V

    .line 1192
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1196
    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;)V
    .locals 1
    .param p1, "host"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p2, "other"    # Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;
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

    .line 1199
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl20;)V

    .line 1192
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1200
    iget-object v0, p2, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Lccsanandroidx/core/graphics/Insets;

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1201
    return-void
.end method


# virtual methods
.method consumeStableInsets()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1211
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->consumeStableInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method consumeSystemWindowInsets()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1217
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->consumeSystemWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method final getStableInsets()Lccsanandroidx/core/graphics/Insets;
    .locals 4

    .line 1223
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Lccsanandroidx/core/graphics/Insets;

    if-nez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1225
    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1226
    invoke-virtual {v1}, Lccsanandroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1227
    invoke-virtual {v2}, Lccsanandroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    .line 1228
    invoke-virtual {v3}, Lccsanandroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 1224
    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1230
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Lccsanandroidx/core/graphics/Insets;

    return-object v0
.end method

.method isConsumed()Z
    .locals 1

    .line 1205
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
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

    .line 1235
    iput-object p1, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1236
    return-void
.end method
