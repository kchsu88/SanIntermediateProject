.class Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$4;
.super Ljava/util/TimerTask;
.source "VideoNativePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->startBufferingTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

.field final synthetic val$bufferMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$4;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$4;->val$bufferMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 219
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$4;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$4;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$600(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$4;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$4;->val$bufferMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1100(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_1
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void
.end method
