.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$1;
.super Ljava/lang/Object;
.source "MBridgeBTContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 191
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 193
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 196
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/a/a;->c(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove campaign failed"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    :goto_0
    return-void
.end method
