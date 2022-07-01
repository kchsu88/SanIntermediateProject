.class Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;
.super Lccsanandroid/view/ViewGroup;
.source "ViewOverlayApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/ViewOverlayApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayViewGroup"
.end annotation


# static fields
.field static sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mDisposed:Z

.field mDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mHostView:Lccsanandroid/view/ViewGroup;

.field mRequestingView:Lccsanandroid/view/View;

.field mViewOverlay:Lccsanandroidx/transition/ViewOverlayApi14;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 116
    :try_start_0
    const-class v0, Lccsanandroid/view/ViewGroup;

    const-string v1, "invalidateChildInParentFast"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lccsanandroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 121
    :goto_0
    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/transition/ViewOverlayApi14;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "hostView"    # Lccsanandroid/view/ViewGroup;
    .param p3, "requestingView"    # Lccsanandroid/view/View;
    .param p4, "viewOverlay"    # Lccsanandroidx/transition/ViewOverlayApi14;

    .line 142
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 143
    iput-object p2, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Lccsanandroid/view/ViewGroup;

    .line 144
    iput-object p3, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Lccsanandroid/view/View;

    .line 145
    invoke-virtual {p2}, Lccsanandroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->setRight(I)V

    .line 146
    invoke-virtual {p2}, Lccsanandroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->setBottom(I)V

    .line 147
    invoke-virtual {p2, p0}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    .line 148
    iput-object p4, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mViewOverlay:Lccsanandroidx/transition/ViewOverlayApi14;

    .line 149
    return-void
.end method

.method private assertNotDisposed()V
    .locals 2

    .line 219
    iget-boolean v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDisposed:Z

    if-nez v0, :cond_0

    .line 223
    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disposeIfEmpty()V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDisposed:Z

    .line 228
    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 230
    :cond_1
    return-void
.end method

.method private getOffset([I)V
    .locals 5
    .param p1, "offset"    # [I

    .line 269
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 270
    .local v1, "contentViewLocation":[I
    new-array v0, v0, [I

    .line 271
    .local v0, "hostViewLocation":[I
    iget-object v2, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Lccsanandroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 272
    iget-object v2, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Lccsanandroid/view/View;

    invoke-virtual {v2, v0}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 273
    const/4 v2, 0x0

    aget v3, v0, v2

    aget v4, v1, v2

    sub-int/2addr v3, v4

    aput v3, p1, v2

    .line 274
    const/4 v2, 0x1

    aget v3, v0, v2

    aget v4, v1, v2

    sub-int/2addr v3, v4

    aput v3, p1, v2

    .line 275
    return-void
.end method


# virtual methods
.method public add(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 158
    invoke-direct {p0}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->assertNotDisposed()V

    .line 159
    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    .line 163
    :cond_0
    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Lccsanandroid/graphics/Rect;)V

    .line 167
    invoke-virtual {p1, p0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 169
    :cond_1
    return-void
.end method

.method public add(Lccsanandroid/view/View;)V
    .locals 5
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 186
    invoke-direct {p0}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->assertNotDisposed()V

    .line 187
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 189
    .local v0, "parent":Lccsanandroid/view/ViewGroup;
    iget-object v1, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Lccsanandroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 194
    .local v2, "parentLocation":[I
    new-array v1, v1, [I

    .line 195
    .local v1, "hostViewLocation":[I
    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 196
    iget-object v3, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Lccsanandroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 197
    const/4 v3, 0x0

    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    invoke-static {p1, v4}, Lccsanandroidx/core/view/ViewCompat;->offsetLeftAndRight(Lccsanandroid/view/View;I)V

    .line 198
    const/4 v3, 0x1

    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    invoke-static {p1, v4}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    .line 200
    .end local v1    # "hostViewLocation":[I
    .end local v2    # "parentLocation":[I
    :cond_0
    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 206
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 210
    .end local v0    # "parent":Lccsanandroid/view/ViewGroup;
    :cond_1
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    .line 211
    return-void
.end method

.method protected dispatchDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 239
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 240
    .local v1, "contentViewLocation":[I
    new-array v0, v0, [I

    .line 241
    .local v0, "hostViewLocation":[I
    iget-object v2, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Lccsanandroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 242
    iget-object v2, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Lccsanandroid/view/View;

    invoke-virtual {v2, v0}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 243
    const/4 v2, 0x0

    aget v3, v0, v2

    aget v4, v1, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v4, v1, v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {p1, v3, v4}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 245
    new-instance v3, Lccsanandroid/graphics/Rect;

    iget-object v4, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Lccsanandroid/view/View;

    .line 246
    invoke-virtual {v4}, Lccsanandroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mRequestingView:Lccsanandroid/view/View;

    invoke-virtual {v5}, Lccsanandroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v2, v2, v4, v5}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 245
    invoke-virtual {p1, v3}, Lccsanandroid/graphics/Canvas;->clipRect(Lccsanandroid/graphics/Rect;)Z

    .line 247
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->dispatchDraw(Lccsanandroid/graphics/Canvas;)V

    .line 248
    iget-object v3, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 249
    .local v2, "numDrawables":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 250
    iget-object v4, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 252
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateChildInParent([ILccsanandroid/graphics/Rect;)Lccsanandroid/view/ViewParent;
    .locals 4
    .param p1, "location"    # [I
    .param p2, "dirty"    # Lccsanandroid/graphics/Rect;

    .line 299
    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 300
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    invoke-virtual {p2, v1, v3}, Lccsanandroid/graphics/Rect;->offset(II)V

    .line 301
    iget-object v1, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Lccsanandroid/view/ViewGroup;

    instance-of v1, v1, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 302
    aput v0, p1, v0

    .line 303
    aput v0, p1, v2

    .line 304
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 305
    .local v1, "offset":[I
    invoke-direct {p0, v1}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    .line 306
    aget v0, v1, v0

    aget v2, v1, v2

    invoke-virtual {p2, v0, v2}, Lccsanandroid/graphics/Rect;->offset(II)V

    .line 307
    invoke-super {p0, p1, p2}, Lccsanandroid/view/ViewGroup;->invalidateChildInParent([ILccsanandroid/graphics/Rect;)Lccsanandroid/view/ViewParent;

    move-result-object v0

    return-object v0

    .line 310
    .end local v1    # "offset":[I
    :cond_0
    invoke-virtual {p0, p2}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Lccsanandroid/graphics/Rect;)V

    .line 313
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected invalidateChildInParentFast(IILccsanandroid/graphics/Rect;)Lccsanandroid/view/ViewParent;
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dirty"    # Lccsanandroid/graphics/Rect;

    .line 282
    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Lccsanandroid/view/ViewGroup;

    instance-of v0, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget-object v0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [I

    .line 285
    .local v1, "offset":[I
    invoke-direct {p0, v1}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    .line 286
    sget-object v2, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->sInvalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mHostView:Lccsanandroid/view/ViewGroup;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p3, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .end local v1    # "offset":[I
    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 293
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 234
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Lccsanandroid/graphics/Rect;)V

    .line 235
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 257
    return-void
.end method

.method public remove(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 172
    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->invalidate(Lccsanandroid/graphics/Rect;)V

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 176
    invoke-direct {p0}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->disposeIfEmpty()V

    .line 178
    :cond_0
    return-void
.end method

.method public remove(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 214
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 215
    invoke-direct {p0}, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->disposeIfEmpty()V

    .line 216
    return-void
.end method

.method protected verifyDrawable(Lccsanandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 182
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->verifyDrawable(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/transition/ViewOverlayApi14$OverlayViewGroup;->mDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
