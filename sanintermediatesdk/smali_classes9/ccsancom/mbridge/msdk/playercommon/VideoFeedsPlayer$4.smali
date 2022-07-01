.class Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$4;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$4;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 307
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$4;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$900(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsanandroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$4;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->access$900(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsanandroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 310
    :cond_0
    return-void
.end method
