.class public Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;
.super Lccsanandroid/view/View;
.source "ProgressBar.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/webview/a;


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Lccsanandroid/graphics/Rect;

.field private c:F

.field private d:F

.field private e:J

.field private f:F

.field private g:Z

.field private h:F

.field private i:F

.field private j:F

.field private k:J

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:J

.field private q:Lccsanandroid/graphics/drawable/Drawable;

.field private r:Lccsanandroid/graphics/drawable/Drawable;

.field private s:Lccsanandroid/graphics/drawable/Drawable;

.field private t:Lccsanandroid/graphics/drawable/Drawable;

.field private u:Z

.field private v:Lccsancom/mbridge/msdk/foundation/webview/a$a;

.field private w:Lccsanandroid/os/Handler;

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    .line 21
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->b:Lccsanandroid/graphics/Rect;

    .line 23
    const p1, 0x3f733333    # 0.95f

    iput p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->d:F

    .line 45
    const-wide/16 v0, 0x19

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->p:J

    .line 52
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->u:Z

    .line 56
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->w:Lccsanandroid/os/Handler;

    .line 57
    new-instance v0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar$1;-><init>(Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->a:Ljava/lang/Runnable;

    .line 68
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->y:Z

    .line 72
    nop

    .line 1081
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->setWillNotDraw(Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Lccsanandroid/graphics/Rect;

    invoke-direct {p1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->b:Lccsanandroid/graphics/Rect;

    .line 23
    const p1, 0x3f733333    # 0.95f

    iput p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->d:F

    .line 45
    const-wide/16 p1, 0x19

    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->p:J

    .line 52
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->u:Z

    .line 56
    new-instance p2, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->w:Lccsanandroid/os/Handler;

    .line 57
    new-instance p2, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar$1;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar$1;-><init>(Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->a:Ljava/lang/Runnable;

    .line 68
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->y:Z

    .line 77
    nop

    .line 2081
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->setWillNotDraw(Z)V

    .line 78
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 12

    .line 90
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->u:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 91
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->u:Z

    .line 94
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->y:Z

    if-eqz v0, :cond_1

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->e:J

    sub-long v4, v2, v4

    .line 96
    :goto_0
    long-to-float v0, v4

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->f:F

    .line 97
    iput-wide v2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->e:J

    .line 98
    iget-wide v2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->k:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->k:J

    .line 100
    nop

    .line 2118
    iget-boolean v4, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->g:Z

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3d4ccccd    # 0.05f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    if-nez v4, :cond_7

    .line 2119
    const-wide/16 v9, 0x7d0

    cmp-long v11, v2, v9

    if-gez v11, :cond_6

    .line 2120
    iget v2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->n:I

    if-ne v2, v1, :cond_2

    .line 2121
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->x:Z

    if-eqz v1, :cond_8

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1

    .line 2122
    :cond_2
    iget v2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->m:I

    if-ne v2, v1, :cond_4

    .line 2123
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->x:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const v8, 0x3e4ccccd    # 0.2f

    goto :goto_1

    .line 2125
    :cond_4
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->x:Z

    if-eqz v1, :cond_5

    const v8, 0x3e4ccccd    # 0.2f

    goto :goto_1

    :cond_5
    const v8, 0x3d4ccccd    # 0.05f

    goto :goto_1

    .line 2128
    :cond_6
    const v8, 0x3d4ccccd    # 0.05f

    goto :goto_1

    .line 2131
    :cond_7
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->x:Z

    if-eqz v1, :cond_8

    const/high16 v8, 0x3f800000    # 1.0f

    .line 100
    :cond_8
    :goto_1
    iput v8, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->j:F

    .line 102
    iget v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->i:F

    mul-float v8, v8, v0

    add-float/2addr v1, v8

    iput v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->i:F

    .line 104
    if-nez v4, :cond_9

    iget v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->d:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_9

    .line 105
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->i:F

    .line 108
    :cond_9
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->b:Lccsanandroid/graphics/Rect;

    iget v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->i:F

    iget v2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->c:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Lccsanandroid/graphics/Rect;->right:I

    .line 110
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->w:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->w:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->a:Ljava/lang/Runnable;

    iget-wide v2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->p:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    invoke-super {p0, p1}, Lccsanandroid/view/View;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 114
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->f:F

    .line 2207
    nop

    .line 2208
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->g:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    .line 2209
    iget v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->h:F

    iget v4, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->c:F

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v9, v4, v8

    div-float v9, v1, v9

    sub-float/2addr v7, v9

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v7, v7, v9

    float-to-int v7, v7

    .line 2211
    if-gez v7, :cond_a

    .line 2212
    const/4 v7, 0x0

    .line 2214
    :cond_a
    mul-float v4, v4, v8

    cmpl-float v1, v1, v4

    if-lez v1, :cond_b

    .line 2215
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->setVisible(Z)V

    .line 2218
    :cond_b
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->r:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 2219
    invoke-virtual {v1, v7}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2221
    :cond_c
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->s:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 2222
    invoke-virtual {v1, v7}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2224
    :cond_d
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->q:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    .line 2225
    invoke-virtual {v1, v7}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2227
    :cond_e
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 2228
    iget v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->h:F

    invoke-virtual {p1, v1, v2}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 2231
    :cond_f
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->r:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->q:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 2232
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->b:Lccsanandroid/graphics/Rect;

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->q:Lccsanandroid/graphics/drawable/Drawable;

    .line 2233
    invoke-virtual {v4}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v6

    sub-float/2addr v1, v4

    float-to-int v1, v1

    .line 2234
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->r:Lccsanandroid/graphics/drawable/Drawable;

    .line 2235
    invoke-virtual {v4}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 2234
    invoke-virtual {v4, v3, v3, v1, v6}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2236
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->r:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 2239
    :cond_10
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->g:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->s:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->q:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_11

    .line 2241
    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2242
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->s:Lccsanandroid/graphics/drawable/Drawable;

    .line 2243
    invoke-virtual {v4}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 2242
    invoke-virtual {v4, v3, v3, v1, v6}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2244
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 2245
    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 2246
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->s:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 2247
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 2250
    :cond_11
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->q:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    .line 2251
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 2252
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->b:Lccsanandroid/graphics/Rect;

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 2253
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->q:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 2254
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 2257
    :cond_12
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->g:Z

    if-nez v1, :cond_14

    iget v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->i:F

    iget v3, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->d:F

    sub-float/2addr v1, v3

    .line 2258
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_14

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->t:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_14

    .line 2260
    iget v3, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->l:I

    int-to-float v3, v3

    mul-float v0, v0, v5

    iget v4, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->c:F

    mul-float v0, v0, v4

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->l:I

    .line 2262
    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->b:Lccsanandroid/graphics/Rect;

    .line 2263
    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v1

    if-lt v0, v1, :cond_13

    .line 2264
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->t:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->l:I

    .line 2267
    :cond_13
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 2268
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->l:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 2269
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->t:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 2270
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 2273
    :cond_14
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->g:Z

    if-eqz v0, :cond_15

    .line 2274
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 115
    :cond_15
    return-void
.end method

.method public getDrawingCache(Z)Lccsanandroid/graphics/Bitmap;
    .locals 0

    .line 85
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProgress()F
    .locals 1

    .line 340
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->i:F

    return v0
.end method

.method public initResource(Z)V
    .locals 5

    .line 144
    if-nez p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->t:Lccsanandroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->q:Lccsanandroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->r:Lccsanandroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->s:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 147
    :cond_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    .line 151
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 153
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 151
    const-string v2, "mbridge_cm_highlight"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 150
    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->t:Lccsanandroid/graphics/drawable/Drawable;

    .line 154
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 155
    nop

    .line 156
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->t:Lccsanandroid/graphics/drawable/Drawable;

    .line 157
    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 155
    invoke-virtual {p1, v0, v0, v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    .line 161
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    .line 162
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 161
    const-string v4, "mbridge_cm_head"

    invoke-virtual {v1, v4, v3, v2}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 160
    invoke-virtual {p1, v1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->q:Lccsanandroid/graphics/drawable/Drawable;

    .line 163
    if-eqz p1, :cond_3

    .line 164
    nop

    .line 165
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->q:Lccsanandroid/graphics/drawable/Drawable;

    .line 166
    invoke-virtual {v2}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 164
    invoke-virtual {p1, v0, v0, v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    :cond_3
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    .line 170
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 171
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v2, "mbridge_cm_tail"

    invoke-virtual {v0, v2, v3, v1}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 169
    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->r:Lccsanandroid/graphics/drawable/Drawable;

    .line 172
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    .line 173
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 175
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 173
    const-string v2, "mbridge_cm_end_animation"

    invoke-virtual {v0, v2, v3, v1}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 172
    invoke-virtual {p1, v0}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->s:Lccsanandroid/graphics/drawable/Drawable;

    .line 176
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 202
    invoke-super/range {p0 .. p5}, Lccsanandroid/view/View;->onLayout(ZIIII)V

    .line 204
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Lccsanandroid/view/View;->onMeasure(II)V

    .line 182
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 399
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/view/View;->onSizeChanged(IIII)V

    .line 401
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->c:F

    .line 402
    return-void
.end method

.method public onThemeChange()V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->u:Z

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->initResource(Z)V

    .line 140
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .line 186
    invoke-super {p0, p1}, Lccsanandroid/view/View;->onWindowFocusChanged(Z)V

    .line 188
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->t:Lccsanandroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 189
    nop

    .line 190
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 191
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getHeight()I

    move-result v2

    .line 189
    invoke-virtual {p1, v0, v0, v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->q:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 197
    :cond_1
    return-void
.end method

.method public setPaused(Z)V
    .locals 2

    .line 406
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->y:Z

    .line 407
    if-nez p1, :cond_0

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->e:J

    .line 410
    :cond_0
    return-void
.end method

.method public setProgress(FZ)V
    .locals 0

    .line 288
    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    .line 289
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->startEndAnimation()V

    .line 291
    :cond_0
    return-void
.end method

.method public setProgressBarListener(Lccsancom/mbridge/msdk/foundation/webview/a$a;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->v:Lccsancom/mbridge/msdk/foundation/webview/a$a;

    .line 346
    return-void
.end method

.method public setProgressState(I)V
    .locals 3

    .line 365
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 386
    :pswitch_0
    iput v2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->o:I

    .line 387
    iget p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->n:I

    if-ne p1, v2, :cond_1

    .line 388
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->startEndAnimation()V

    goto :goto_0

    .line 382
    :pswitch_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->startEndAnimation()V

    .line 383
    goto :goto_0

    .line 374
    :pswitch_2
    iput v2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->n:I

    .line 375
    iget p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->o:I

    if-ne p1, v2, :cond_0

    .line 376
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->startEndAnimation()V

    .line 378
    :cond_0
    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->k:J

    .line 379
    goto :goto_0

    .line 367
    :pswitch_3
    iput v2, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->m:I

    .line 368
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->n:I

    .line 369
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->o:I

    .line 370
    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->k:J

    .line 371
    nop

    .line 395
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 1

    .line 350
    invoke-super {p0, p1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 352
    if-nez p1, :cond_0

    .line 353
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->v:Lccsancom/mbridge/msdk/foundation/webview/a$a;

    if-eqz p1, :cond_1

    .line 354
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/foundation/webview/a$a;->a(Z)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->v:Lccsancom/mbridge/msdk/foundation/webview/a$a;

    if-eqz p1, :cond_1

    .line 358
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/foundation/webview/a$a;->a(Z)V

    .line 361
    :cond_1
    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .line 295
    if-eqz p1, :cond_4

    .line 296
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->x:Z

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->e:J

    .line 299
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->f:F

    .line 300
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->k:J

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->g:Z

    .line 303
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->h:F

    .line 304
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->i:F

    .line 305
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->c:F

    .line 307
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->y:Z

    .line 309
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->m:I

    .line 310
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->n:I

    .line 311
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->o:I

    .line 313
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->t:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->l:I

    goto :goto_0

    .line 316
    :cond_0
    iput v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->l:I

    .line 319
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->r:Lccsanandroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {p1, v1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 323
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->s:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 324
    invoke-virtual {p1, v1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 327
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->q:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 328
    invoke-virtual {p1, v1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 331
    :cond_3
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->setVisibility(I)V

    .line 332
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->invalidate()V

    goto :goto_1

    .line 334
    :cond_4
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->setVisibility(I)V

    .line 336
    :goto_1
    return-void
.end method

.method public startEndAnimation()V
    .locals 1

    .line 280
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->g:Z

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->g:Z

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->h:F

    .line 284
    :cond_0
    return-void
.end method
