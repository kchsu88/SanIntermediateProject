.class public final Lccsancom/mbridge/msdk/video/signal/a/c$b;
.super Ljava/lang/Object;
.source "DefaultJSCommon.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/signal/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/signal/c;

.field private b:Lccsancom/mbridge/msdk/video/signal/c$a;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/signal/c;Lccsancom/mbridge/msdk/video/signal/c$a;)V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->a:Lccsancom/mbridge/msdk/video/signal/c;

    .line 236
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    .line 237
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 308
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c$a;->a()V

    .line 311
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/c$a;->a(ILjava/lang/String;)V

    .line 325
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 315
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/signal/c$a;->a(Z)V

    .line 318
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 329
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c$a;->b()V

    .line 332
    :cond_0
    return-void
.end method

.method public final onDismissLoading(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/signal/c$a;->onDismissLoading(Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 256
    :cond_0
    return-void
.end method

.method public final onDownloadFinish(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/signal/c$a;->onDownloadFinish(Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 297
    :cond_0
    return-void
.end method

.method public final onDownloadProgress(I)V
    .locals 1

    .line 301
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/signal/c$a;->onDownloadProgress(I)V

    .line 304
    :cond_0
    return-void
.end method

.method public final onDownloadStart(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/signal/c$a;->onDownloadStart(Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 290
    :cond_0
    return-void
.end method

.method public final onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/c$a;->onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->a:Lccsancom/mbridge/msdk/video/signal/c;

    if-eqz p1, :cond_1

    .line 271
    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/signal/c;->d()V

    .line 273
    :cond_1
    return-void
.end method

.method public final onInterceptDefaultLoadingDialog()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c$a;->onInterceptDefaultLoadingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/c$a;->onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 280
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->a:Lccsancom/mbridge/msdk/video/signal/c;

    if-eqz p1, :cond_1

    .line 281
    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/signal/c;->d()V

    .line 283
    :cond_1
    return-void
.end method

.method public final onShowLoading(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/signal/c$a;->onShowLoading(Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 249
    :cond_0
    return-void
.end method

.method public final onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/c$b;->b:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/c$a;->onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void
.end method
