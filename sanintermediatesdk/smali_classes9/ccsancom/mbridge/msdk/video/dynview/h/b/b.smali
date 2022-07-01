.class public final Lccsancom/mbridge/msdk/video/dynview/h/b/b;
.super Ljava/lang/Object;
.source "MBCountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Lccsancom/mbridge/msdk/video/dynview/h/b/a;

.field private d:Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->a:J

    return-void
.end method


# virtual methods
.method public final a(J)Lccsancom/mbridge/msdk/video/dynview/h/b/b;
    .locals 3

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 31
    const-wide/16 p1, 0x3e8

    .line 33
    :cond_0
    iput-wide p1, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->b:J

    .line 34
    return-object p0
.end method

.method public final a(Lccsancom/mbridge/msdk/video/dynview/h/b/a;)Lccsancom/mbridge/msdk/video/dynview/h/b/b;
    .locals 0

    .line 43
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->c:Lccsancom/mbridge/msdk/video/dynview/h/b/a;

    .line 44
    return-object p0
.end method

.method public final a()V
    .locals 5

    .line 74
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->d:Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;

    if-nez v0, :cond_2

    .line 75
    nop

    .line 1059
    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;->cancel()V

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->d:Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;

    .line 1063
    :cond_0
    iget-wide v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 1064
    iget-wide v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->a:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->b:J

    .line 1066
    :cond_1
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->a:J

    iget-wide v3, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->b:J

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;-><init>(JJ)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->d:Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;

    .line 1067
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->c:Lccsancom/mbridge/msdk/video/dynview/h/b/a;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;->a(Lccsancom/mbridge/msdk/video/dynview/h/b/a;)V

    .line 77
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->d:Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;->start()Lccsanandroid/os/CountDownTimer;

    .line 78
    return-void
.end method

.method public final b(J)Lccsancom/mbridge/msdk/video/dynview/h/b/b;
    .locals 0

    .line 54
    iput-wide p1, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->a:J

    .line 55
    return-object p0
.end method

.method public final b()V
    .locals 1

    .line 84
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->d:Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;->cancel()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/h/b/b;->d:Lccsancom/mbridge/msdk/video/dynview/h/b/b$a;

    .line 88
    :cond_0
    return-void
.end method
