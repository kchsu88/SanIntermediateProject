.class final Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$a;
.super Ljava/lang/Object;
.source "MBridgeH5EndCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

.field private b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$a;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$a;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 191
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 196
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloseRunnable"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$a;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->s:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$a;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->s:Lccsanandroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendEmptyMessage(I)Z

    .line 203
    :cond_0
    return-void
.end method
