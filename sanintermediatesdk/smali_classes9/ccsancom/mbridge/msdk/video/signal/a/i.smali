.class public final Lccsancom/mbridge/msdk/video/signal/a/i;
.super Lccsancom/mbridge/msdk/video/signal/a/b;
.source "JSBTModule.java"


# instance fields
.field private a:Lccsanandroid/app/Activity;

.field private b:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;


# direct methods
.method public constructor <init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/b;-><init>()V

    .line 12
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/i;->a:Lccsanandroid/app/Activity;

    .line 13
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/signal/a/i;->b:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 14
    return-void
.end method


# virtual methods
.method public final click(ILjava/lang/String;)V
    .locals 1

    .line 34
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/b;->click(ILjava/lang/String;)V

    .line 35
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/i;->b:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->click(ILjava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public final handlerH5Exception(ILjava/lang/String;)V
    .locals 1

    .line 26
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/b;->handlerH5Exception(ILjava/lang/String;)V

    .line 27
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/i;->b:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->handlerH5Exception(ILjava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method

.method public final reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/b;->reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/i;->b:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method
