.class final Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$2;
.super Ljava/lang/Object;
.source "MBTempContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 221
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->getActivityProxy()Lccsancom/mbridge/msdk/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/a;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    const/4 v1, -0x3

    const-string v2, "Signal Communication connect timeout"

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->defaultLoad(ILjava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    const/4 v1, -0x4

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;I)I

    .line 226
    :goto_0
    return-void
.end method
