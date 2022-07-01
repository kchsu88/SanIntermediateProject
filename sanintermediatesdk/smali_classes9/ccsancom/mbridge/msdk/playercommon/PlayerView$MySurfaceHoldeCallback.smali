.class Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;
.super Ljava/lang/Object;
.source "PlayerView.java"

# interfaces
.implements Lccsanandroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySurfaceHoldeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/PlayerView;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/PlayerView;Lccsancom/mbridge/msdk/playercommon/PlayerView$1;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;-><init>(Lccsancom/mbridge/msdk/playercommon/PlayerView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Lccsanandroid/view/SurfaceHolder;III)V
    .locals 0

    .line 351
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$400(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$600(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isComplete()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$700(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 352
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$100(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hasPrepare()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 353
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->resumeStart()V

    goto :goto_0

    .line 355
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->playVideo(I)Z

    .line 357
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$700(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 358
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$800(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 359
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$100(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hasPrepare()Z

    move-result p1

    if-nez p1, :cond_1

    .line 360
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$100(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->prepare()V

    .line 362
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$100(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->start(Z)V

    goto :goto_1

    .line 364
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->pause()V

    .line 368
    :cond_3
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$402(Lccsancom/mbridge/msdk/playercommon/PlayerView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_2

    .line 369
    :catch_0
    move-exception p1

    .line 370
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlayerView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_2
    return-void
.end method

.method public surfaceCreated(Lccsanandroid/view/SurfaceHolder;)V
    .locals 1

    .line 326
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$100(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 327
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$202(Lccsancom/mbridge/msdk/playercommon/PlayerView;Lccsanandroid/view/SurfaceHolder;)Lccsanandroid/view/SurfaceHolder;

    .line 328
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$100(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setDisplay(Lccsanandroid/view/SurfaceHolder;)V

    .line 330
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$302(Lccsancom/mbridge/msdk/playercommon/PlayerView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 331
    :catch_0
    move-exception p1

    .line 332
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Lccsanandroid/view/SurfaceHolder;)V
    .locals 1

    .line 340
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$402(Lccsancom/mbridge/msdk/playercommon/PlayerView;Z)Z

    .line 341
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$502(Lccsancom/mbridge/msdk/playercommon/PlayerView;Z)Z

    .line 342
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/PlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->access$100(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    goto :goto_0

    .line 343
    :catch_0
    move-exception p1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_0
    return-void
.end method
