.class public Lccsancom/bumptech/glide/request/target/SquaringDrawable;
.super Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "SquaringDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;
    }
.end annotation


# instance fields
.field private mutated:Z

.field private state:Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;

.field private wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;I)V
    .locals 2
    .param p1, "wrapped"    # Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .param p2, "side"    # I

    .line 26
    new-instance v0, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;-><init>(Lccsanandroid/graphics/drawable/Drawable$ConstantState;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lccsancom/bumptech/glide/request/target/SquaringDrawable;-><init>(Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;Lccsanandroid/content/res/Resources;)V

    .line 27
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;Lccsanandroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;
    .param p2, "wrapped"    # Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .param p3, "res"    # Lccsanandroid/content/res/Resources;

    .line 29
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 30
    iput-object p1, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->state:Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;

    .line 31
    if-nez p2, :cond_1

    .line 32
    if-eqz p3, :cond_0

    .line 33
    invoke-static {p1}, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;->access$000(Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;)Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    iput-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p1}, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;->access$000(Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;)Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    iput-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    goto :goto_0

    .line 38
    :cond_1
    iput-object p2, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .line 93
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->clearColorFilter()V

    .line 94
    return-void
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 151
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 152
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 83
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getCallback()Lccsanandroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .line 77
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->getCallback()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 61
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 206
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->state:Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;

    return-object v0
.end method

.method public getCurrent()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 98
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->getCurrent()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 113
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->state:Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-static {v0}, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;->access$100(Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 108
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->state:Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-static {v0}, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;->access$100(Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 123
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 118
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 166
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Lccsanandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Lccsanandroid/graphics/Rect;

    .line 128
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    .line 133
    invoke-super {p0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->invalidateSelf()V

    .line 134
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->invalidateSelf()V

    .line 135
    return-void
.end method

.method public isAnimated()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->isAnimated()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->isRunning()Z

    move-result v0

    return v0
.end method

.method public mutate()Lccsanandroid/graphics/drawable/Drawable;
    .locals 2

    .line 196
    iget-boolean v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->mutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 197
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    iput-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 198
    new-instance v0, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;

    iget-object v1, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->state:Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;-><init>(Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->state:Lccsancom/bumptech/glide/request/target/SquaringDrawable$State;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->mutated:Z

    .line 201
    :cond_0
    return-object p0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .line 145
    invoke-super {p0, p1, p2, p3}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 146
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 147
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .line 156
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setAlpha(I)V

    .line 157
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(IIII)V

    .line 45
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(IIII)V

    .line 46
    return-void
.end method

.method public setBounds(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;

    .line 50
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 51
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 52
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .line 56
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setChangingConfigurations(I)V

    .line 57
    return-void
.end method

.method public setColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 88
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1, p2}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)V

    .line 89
    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Lccsanandroid/graphics/ColorFilter;

    .line 161
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 162
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .line 66
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setDither(Z)V

    .line 67
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .line 71
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setFilterBitmap(Z)V

    .line 72
    return-void
.end method

.method public setLoopCount(I)V
    .locals 1
    .param p1, "loopCount"    # I

    .line 176
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setLoopCount(I)V

    .line 177
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 103
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1, p2}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .line 181
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->start()V

    .line 182
    return-void
.end method

.method public stop()V
    .locals 1

    .line 186
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->stop()V

    .line 187
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .line 139
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 140
    iget-object v0, p0, Lccsancom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method
