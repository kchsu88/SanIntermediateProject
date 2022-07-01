.class public Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;,
        Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:I

.field private final c:I

.field private final d:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;

.field private e:J

.field private f:Lccsanandroid/graphics/PointF;

.field private g:Z

.field private final h:Lccsanandroid/content/Context;

.field private final i:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;Lccsanandroid/content/Context;Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aI:Lccsancom/applovin/impl/sdk/c/b;

    invoke-direct {p0, p1, v0, p2, p3}, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/c/b;Lccsanandroid/content/Context;Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/c/b;Lccsanandroid/content/Context;Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/k;",
            "Lccsancom/applovin/impl/sdk/c/b<",
            "Ljava/lang/Integer;",
            ">;",
            "Lccsanandroid/content/Context;",
            "Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aG:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->a:J

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aH:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->b:I

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aK:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p3, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->c:I

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;->values()[Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;

    move-result-object p2

    aget-object p1, p2, p1

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->d:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;

    iput-object p3, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->h:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->i:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;

    return-void
.end method

.method private a(F)F
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->h:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    return p1
.end method

.method private a(Lccsanandroid/graphics/PointF;Lccsanandroid/graphics/PointF;)F
    .locals 2

    iget v0, p1, Lccsanandroid/graphics/PointF;->x:F

    iget v1, p2, Lccsanandroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget p1, p1, Lccsanandroid/graphics/PointF;->y:F

    iget p2, p2, Lccsanandroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->a(F)F

    move-result p1

    return p1
.end method

.method private a(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)V
    .locals 2

    new-instance v0, Lccsanandroid/graphics/PointF;

    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-direct {v0, v1, p2}, Lccsanandroid/graphics/PointF;-><init>(FF)V

    iget-object p2, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->i:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;

    invoke-interface {p2, p1, v0}, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;->onClick(Lccsanandroid/view/View;Lccsanandroid/graphics/PointF;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->g:Z

    return-void
.end method

.method private a(Lccsanandroid/view/MotionEvent;)Z
    .locals 5

    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->c:I

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->h:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/f;->a(Lccsanandroid/content/Context;)Lccsanandroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v3, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->c:I

    int-to-float v4, v3

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_2

    iget v3, v0, Lccsanandroid/graphics/Point;->x:I

    iget v4, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->c:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v0, v0, Lccsanandroid/graphics/Point;->y:I

    iget v2, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->c:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->g:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->d:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;

    sget-object v1, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;->ACTION_POINTER_UP:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;

    if-ne v0, v1, :cond_4

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->d:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;

    sget-object v1, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;->ACTION_UP:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->d:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;

    sget-object v1, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;->DISABLED:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->e:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->f:Lccsanandroid/graphics/PointF;

    new-instance v3, Lccsanandroid/graphics/PointF;

    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Lccsanandroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v2, v3}, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->a(Lccsanandroid/graphics/PointF;Lccsanandroid/graphics/PointF;)F

    move-result v2

    iget-boolean v3, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->g:Z

    if-nez v3, :cond_4

    iget-wide v3, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->a:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    cmp-long v5, v0, v3

    if-gez v5, :cond_4

    :cond_1
    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->b:I

    if-ltz v0, :cond_2

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->d:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;

    sget-object v1, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;->ACTION_DOWN:Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$ClickRecognitionState;

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p2}, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->a(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->a(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->e:J

    new-instance p1, Lccsanandroid/graphics/PointF;

    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p1, v0, p2}, Lccsanandroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->f:Lccsanandroid/graphics/PointF;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener;->g:Z

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
