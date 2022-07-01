.class Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$5;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$5;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 272
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$5;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1200(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsanandroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$5;->this$0:Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->access$1200(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsanandroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 275
    :cond_0
    return-void
.end method
