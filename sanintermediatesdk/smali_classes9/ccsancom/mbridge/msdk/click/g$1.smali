.class final Lccsancom/mbridge/msdk/click/g$1;
.super Ljava/lang/Object;
.source "WebViewSpiderLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/click/g;->a(Lccsancom/mbridge/msdk/foundation/same/e/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/click/g;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/click/g;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/g$1;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 363
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$1;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->e(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$1;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$1;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->e(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/d;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/g$1;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v1}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/click/d;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$1;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v0}, Lccsancom/mbridge/msdk/click/g;->e(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/d;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/click/g$1;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v1}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/click/g$1;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v2}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/click/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    :cond_1
    :goto_0
    return-void
.end method
