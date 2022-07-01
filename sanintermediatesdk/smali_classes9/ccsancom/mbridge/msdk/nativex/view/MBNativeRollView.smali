.class public Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView;
.super Lccsanandroid/widget/LinearLayout;
.source "MBNativeRollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView$a;
    }
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/nativex/view/RollingBCView;

.field private b:Lccsanandroid/content/Context;

.field private c:Lccsancom/mbridge/msdk/out/NativeListener$FilpListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 4

    .line 36
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 37
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView;->b:Lccsanandroid/content/Context;

    .line 38
    new-instance p2, Lccsancom/mbridge/msdk/nativex/view/RollingBCView;

    invoke-direct {p2, p1}, Lccsancom/mbridge/msdk/nativex/view/RollingBCView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView;->a:Lccsancom/mbridge/msdk/nativex/view/RollingBCView;

    .line 39
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView;->addView(Lccsanandroid/view/View;)V

    .line 40
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Lccsanandroid/content/Context;)F

    move-result p1

    .line 41
    new-instance p2, Lccsanandroid/widget/LinearLayout$LayoutParams;

    float-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p1, v0

    const/4 v0, -0x2

    invoke-direct {p2, p1, v0}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 42
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView;->a:Lccsancom/mbridge/msdk/nativex/view/RollingBCView;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/nativex/view/RollingBCView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 43
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView;->setClipChildren(Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView;->a:Lccsancom/mbridge/msdk/nativex/view/RollingBCView;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/nativex/view/RollingBCView;->dispatchTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setData(Ljava/util/List;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView$a;",
            ")V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView;->a:Lccsancom/mbridge/msdk/nativex/view/RollingBCView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/nativex/view/RollingBCView;->setData(Ljava/util/List;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView$a;)V

    .line 55
    return-void
.end method

.method public setFilpListening(Lccsancom/mbridge/msdk/out/NativeListener$FilpListener;)V
    .locals 1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView;->c:Lccsancom/mbridge/msdk/out/NativeListener$FilpListener;

    .line 25
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView;->a:Lccsancom/mbridge/msdk/nativex/view/RollingBCView;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/nativex/view/RollingBCView;->setFilpListening(Lccsancom/mbridge/msdk/out/NativeListener$FilpListener;)V

    .line 27
    :cond_0
    return-void
.end method

.method public setFrameWidth(I)V
    .locals 2

    .line 58
    new-instance v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView;->a:Lccsancom/mbridge/msdk/nativex/view/RollingBCView;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/nativex/view/RollingBCView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 60
    return-void
.end method
