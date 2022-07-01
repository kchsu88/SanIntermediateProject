.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;
.super Ljava/lang/Object;
.source "MBMediaView.java"

# interfaces
.implements Lccsanandroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 2287
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/nativex/view/MBMediaView$1;)V
    .locals 0

    .line 2287
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Lccsanandroid/hardware/Sensor;I)V
    .locals 0

    .line 2293
    return-void
.end method

.method public final onSensorChanged(Lccsanandroid/hardware/SensorEvent;)V
    .locals 12

    .line 2297
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->A(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2298
    return-void

    .line 2302
    :cond_0
    :try_start_0
    iget-object p1, p1, Lccsanandroid/hardware/SensorEvent;->values:[F

    .line 2303
    nop

    .line 2304
    const/4 v0, 0x0

    aget v1, p1, v0

    neg-float v1, v1

    .line 2305
    const/4 v2, 0x1

    aget v3, p1, v2

    neg-float v3, v3

    .line 2306
    const/4 v4, 0x2

    aget p1, p1, v4

    neg-float p1, p1

    .line 2307
    mul-float v4, v1, v1

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    .line 2309
    const/high16 v5, 0x40800000    # 4.0f

    mul-float v4, v4, v5

    mul-float p1, p1, p1

    const/4 v5, -0x1

    const/16 v6, 0x168

    cmpl-float p1, v4, p1

    if-ltz p1, :cond_2

    .line 2310
    const p1, 0x42652ee1

    .line 2311
    neg-float v3, v3

    float-to-double v3, v3

    float-to-double v7, v1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float v1, v1, p1

    .line 2312
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x5a

    .line 2313
    :goto_0
    if-lt p1, v6, :cond_1

    .line 2314
    add-int/lit16 p1, p1, -0x168

    goto :goto_0

    .line 2316
    :cond_1
    :goto_1
    if-gez p1, :cond_3

    .line 2317
    add-int/lit16 p1, p1, 0x168

    goto :goto_1

    .line 2309
    :cond_2
    const/4 p1, -0x1

    .line 2321
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->B(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)F

    move-result v1

    .line 2322
    iget-object v3, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->j(Lccsanandroid/content/Context;)I

    move-result v3

    .line 2323
    const-wide/16 v7, 0xc8

    const/16 v4, 0x87

    const/16 v9, 0x2d

    if-le p1, v9, :cond_4

    if-lt p1, v4, :cond_5

    :cond_4
    const/16 v10, 0x13b

    const/16 v11, 0xe1

    if-le p1, v11, :cond_6

    if-ge p1, v10, :cond_6

    .line 2325
    :cond_5
    int-to-float p1, v3

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_b

    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 2326
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Z)Z

    .line 2327
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Z)Z

    .line 2329
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->H(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/os/Handler;

    move-result-object p1

    new-instance v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$1;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;)V

    invoke-virtual {p1, v0, v7, v8}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 2350
    :cond_6
    if-le p1, v4, :cond_7

    if-lt p1, v11, :cond_a

    :cond_7
    if-le p1, v10, :cond_8

    if-lt p1, v6, :cond_a

    :cond_8
    if-ltz p1, :cond_9

    if-le p1, v9, :cond_a

    :cond_9
    if-ne p1, v5, :cond_b

    .line 2353
    :cond_a
    int-to-float p1, v3

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_b

    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->C(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2354
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Z)Z

    .line 2355
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Z)Z

    .line 2357
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->H(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/os/Handler;

    move-result-object p1

    new-instance v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;)V

    invoke-virtual {p1, v0, v7, v8}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2379
    :cond_b
    :goto_2
    goto :goto_3

    .line 2377
    :catchall_0
    move-exception p1

    .line 2378
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2380
    :goto_3
    return-void
.end method
