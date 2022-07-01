.class Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;
.super Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl28"
.end annotation


# direct methods
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

    .line 1243
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/view/WindowInsets;)V

    .line 1244
    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;)V
    .locals 0
    .param p1, "host"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p2, "other"    # Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;
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

    .line 1247
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroidx/core/view/WindowInsetsCompat$Impl21;)V

    .line 1248
    return-void
.end method


# virtual methods
.method consumeDisplayCutout()Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1259
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->consumeDisplayCutout()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
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

    .line 1264
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1265
    :cond_0
    instance-of v1, p1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1266
    :cond_1
    move-object v1, p1

    check-cast v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;

    .line 1268
    .local v1, "otherImpl28":Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;
    iget-object v3, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    iget-object v4, v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-static {v3, v4}, Lccsanandroidx/core/graphics/ColorUtils$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;->mRootViewVisibleInsets:Lccsanandroidx/core/graphics/Insets;

    iget-object v4, v1, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;->mRootViewVisibleInsets:Lccsanandroidx/core/graphics/Insets;

    .line 1269
    invoke-static {v3, v4}, Lccsanandroidx/core/graphics/ColorUtils$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1268
    :goto_0
    return v0
.end method

.method getDisplayCutout()Lccsanandroidx/core/view/DisplayCutoutCompat;
    .locals 1

    .line 1253
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->getDisplayCutout()Lccsanandroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/view/DisplayCutoutCompat;->wrap(Ljava/lang/Object;)Lccsanandroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1274
    iget-object v0, p0, Lccsanandroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Lccsanandroid/view/WindowInsets;

    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method
