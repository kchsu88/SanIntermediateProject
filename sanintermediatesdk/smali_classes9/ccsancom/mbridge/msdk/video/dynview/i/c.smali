.class public final Lccsancom/mbridge/msdk/video/dynview/i/c;
.super Ljava/lang/Object;
.source "ViewOptionWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/view/View;Ljava/lang/String;ILjava/lang/String;)Lccsancom/mbridge/msdk/video/dynview/b;
    .locals 3

    .line 79
    nop

    .line 80
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p4

    .line 81
    if-eqz p4, :cond_0

    .line 82
    invoke-virtual {p4}, Lccsancom/mbridge/msdk/videocommon/d/c;->g()I

    move-result v2

    .line 1149
    :cond_0
    new-instance p4, Lccsancom/mbridge/msdk/video/dynview/b$a;

    invoke-direct {p4}, Lccsancom/mbridge/msdk/video/dynview/b$a;-><init>()V

    .line 84
    nop

    .line 85
    invoke-virtual {p4, p2}, Lccsancom/mbridge/msdk/video/dynview/b$a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p2

    .line 86
    invoke-interface {p2, p3}, Lccsancom/mbridge/msdk/video/dynview/b$b;->a(I)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p2

    .line 87
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p3

    invoke-interface {p2, p3}, Lccsancom/mbridge/msdk/video/dynview/b$b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p2

    .line 88
    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/video/dynview/b$b;->a(Lccsanandroid/view/View;)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p2

    .line 89
    invoke-interface {p2, v2}, Lccsancom/mbridge/msdk/video/dynview/b$b;->c(I)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p2

    .line 90
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->d(Lccsanandroid/content/Context;)I

    move-result p1

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/video/dynview/b$b;->b(I)Lccsancom/mbridge/msdk/video/dynview/b$b;

    move-result-object p1

    .line 91
    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/dynview/b$b;->a()Lccsancom/mbridge/msdk/video/dynview/b;

    move-result-object p1

    .line 92
    return-object p1
.end method
