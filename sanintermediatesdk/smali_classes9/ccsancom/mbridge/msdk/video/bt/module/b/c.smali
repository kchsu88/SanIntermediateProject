.class public final Lccsancom/mbridge/msdk/video/bt/module/b/c;
.super Lccsancom/mbridge/msdk/video/bt/module/b/b;
.source "H5ShowRewardListener.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/a/b;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/module/b/b;-><init>()V

    .line 13
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    .line 14
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->b:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 19
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "H5ShowRewardListener"

    const-string v1, "onAdShow"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/a/b;->a(Ljava/lang/String;)V

    .line 23
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "H5ShowRewardListener"

    const-string v1, "onAutoLoad"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lccsancom/mbridge/msdk/video/bt/module/a/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "H5ShowRewardListener"

    const-string v1, "onShowFail"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lccsancom/mbridge/msdk/video/bt/module/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "H5ShowRewardListener"

    const-string v1, "onVideoComplete"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public final a(ZLccsancom/mbridge/msdk/videocommon/b/c;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "H5ShowRewardListener"

    const-string v1, "onAdClose"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/a/b;->a(Ljava/lang/String;ZLccsancom/mbridge/msdk/videocommon/b/c;)V

    .line 31
    :cond_0
    return-void
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    if-eqz p1, :cond_0

    .line 44
    const-string p1, "H5ShowRewardListener"

    const-string v0, "onVideoAdClicked"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->b:Ljava/lang/String;

    invoke-interface {p1, v0, p2, p3}, Lccsancom/mbridge/msdk/video/bt/module/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "H5ShowRewardListener"

    const-string v1, "onEndcardShow"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->a:Lccsancom/mbridge/msdk/video/bt/module/a/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method
