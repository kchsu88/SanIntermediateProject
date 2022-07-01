.class final Lccsancom/mbridge/msdk/video/bt/a/c$1;
.super Ljava/lang/Object;
.source "OperateViews.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lccsanandroid/graphics/Rect;

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Lccsancom/mbridge/msdk/video/bt/a/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/a/c;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/graphics/Rect;II)V
    .locals 0

    .line 257
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->i:Lccsancom/mbridge/msdk/video/bt/a/c;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->f:Lccsanandroid/graphics/Rect;

    iput p8, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->g:I

    iput p9, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 260
    nop

    .line 261
    nop

    .line 262
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->a:Ljava/lang/Object;

    check-cast v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 263
    iget-object v1, v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_0

    .line 264
    iget-object v0, v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 265
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 263
    :cond_0
    const-string v1, ""

    const/4 v0, 0x0

    .line 267
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->i:Lccsancom/mbridge/msdk/video/bt/a/c;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 268
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->i:Lccsancom/mbridge/msdk/video/bt/a/c;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->c()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v4, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;-><init>(Lccsanandroid/content/Context;)V

    .line 271
    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual {v4, v3}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setInstanceId(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setUnitId(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setFileURL(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->d:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setFilePath(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->e:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setHtml(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->f:Lccsanandroid/graphics/Rect;

    invoke-virtual {v4, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setRect(Lccsanandroid/graphics/Rect;)V

    .line 278
    invoke-virtual {v4, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setWebViewRid(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v4, v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setCreateWebView(Lccsanandroid/webkit/WebView;)V

    .line 280
    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->g:I

    if-gtz v0, :cond_1

    iget v1, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->h:I

    if-lez v1, :cond_2

    .line 281
    :cond_1
    iget v1, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->h:I

    invoke-virtual {v4, v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setLayout(II)V

    .line 284
    :cond_2
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->preload()V

    .line 285
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->i:Lccsancom/mbridge/msdk/video/bt/a/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/a/c$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWebview instanceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperateViews"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method
