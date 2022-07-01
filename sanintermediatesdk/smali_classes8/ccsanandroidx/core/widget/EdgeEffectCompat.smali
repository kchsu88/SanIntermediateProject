.class public final Lccsanandroidx/core/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# instance fields
.field private mEdgeEffect:Lccsanandroid/widget/EdgeEffect;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lccsanandroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Lccsanandroid/widget/EdgeEffect;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Lccsanandroid/widget/EdgeEffect;

    .line 49
    return-void
.end method

.method public static onPull(Lccsanandroid/widget/EdgeEffect;FF)V
    .locals 2
    .param p0, "edgeEffect"    # Lccsanandroid/widget/EdgeEffect;
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "edgeEffect",
            "deltaDistance",
            "displacement"
        }
    .end annotation

    .line 152
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 153
    invoke-virtual {p0, p1, p2}, Lccsanandroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/widget/EdgeEffect;->onPull(F)V

    .line 157
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget-object v0, p0, Lccsanandroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Lccsanandroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/EdgeEffect;->draw(Lccsanandroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    iget-object v0, p0, Lccsanandroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Lccsanandroid/widget/EdgeEffect;

    invoke-virtual {v0}, Lccsanandroid/widget/EdgeEffect;->finish()V

    .line 87
    return-void
.end method

.method public isFinished()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    iget-object v0, p0, Lccsanandroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Lccsanandroid/widget/EdgeEffect;

    invoke-virtual {v0}, Lccsanandroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public onAbsorb(I)Z
    .locals 1
    .param p1, "velocity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocity"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    iget-object v0, p0, Lccsanandroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Lccsanandroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public onPull(F)Z
    .locals 1
    .param p1, "deltaDistance"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaDistance"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    iget-object v0, p0, Lccsanandroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Lccsanandroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/EdgeEffect;->onPull(F)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public onPull(FF)Z
    .locals 1
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deltaDistance",
            "displacement"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    iget-object v0, p0, Lccsanandroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Lccsanandroid/widget/EdgeEffect;

    invoke-static {v0, p1, p2}, Lccsanandroidx/core/widget/EdgeEffectCompat;->onPull(Lccsanandroid/widget/EdgeEffect;FF)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onRelease()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    iget-object v0, p0, Lccsanandroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Lccsanandroid/widget/EdgeEffect;

    invoke-virtual {v0}, Lccsanandroid/widget/EdgeEffect;->onRelease()V

    .line 172
    iget-object v0, p0, Lccsanandroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Lccsanandroid/widget/EdgeEffect;

    invoke-virtual {v0}, Lccsanandroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    iget-object v0, p0, Lccsanandroidx/core/widget/EdgeEffectCompat;->mEdgeEffect:Lccsanandroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/widget/EdgeEffect;->setSize(II)V

    .line 62
    return-void
.end method
