.class final Lccsancom/mbridge/msdk/video/module/a/a/m$1;
.super Ljava/util/TimerTask;
.source "VideoViewDefaultListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/a/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/a/a/m;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/a/a/m;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m$1;->a:Lccsancom/mbridge/msdk/video/module/a/a/m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 184
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m$1;->a:Lccsancom/mbridge/msdk/video/module/a/a/m;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/a/a/m;->c(Lccsancom/mbridge/msdk/video/module/a/a/m;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/video/module/a/a/m$1$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/video/module/a/a/m$1$1;-><init>(Lccsancom/mbridge/msdk/video/module/a/a/m$1;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    :cond_0
    :goto_0
    return-void
.end method
