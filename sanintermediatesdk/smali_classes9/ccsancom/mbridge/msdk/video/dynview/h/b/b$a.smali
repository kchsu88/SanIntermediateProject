.class final Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;
.super Lccsanandroid/os/CountDownTimer;
.source "MBCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/dynview/h/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/dynview/h/b/a;


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/os/CountDownTimer;-><init>(JJ)V

    .line 95
    return-void
.end method


# virtual methods
.method final a(Lccsancom/mbridge/msdk/video/dynview/h/b/a;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;->a:Lccsancom/mbridge/msdk/video/dynview/h/b/a;

    .line 113
    return-void
.end method

.method public final onFinish()V
    .locals 1

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;->a:Lccsancom/mbridge/msdk/video/dynview/h/b/a;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/dynview/h/b/a;->a()V

    .line 109
    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 1

    .line 99
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;->a:Lccsancom/mbridge/msdk/video/dynview/h/b/a;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/dynview/h/b/a;->a(J)V

    .line 102
    :cond_0
    return-void
.end method
