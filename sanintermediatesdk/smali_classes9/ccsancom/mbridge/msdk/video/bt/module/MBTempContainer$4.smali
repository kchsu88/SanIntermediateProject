.class final Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$4;
.super Ljava/lang/Object;
.source "MBTempContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->onDestroy()V
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

    .line 545
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 548
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsanandroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;->c(Lccsancom/mbridge/msdk/video/bt/module/MBTempContainer;)Lccsanandroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->finish()V

    .line 551
    :cond_0
    return-void
.end method
