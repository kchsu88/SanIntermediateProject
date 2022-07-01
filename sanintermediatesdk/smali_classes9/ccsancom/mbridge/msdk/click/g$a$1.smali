.class final Lccsancom/mbridge/msdk/click/g$a$1;
.super Ljava/lang/Object;
.source "WebViewSpiderLoader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/click/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/click/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/click/g$a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/click/g$a;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/g$a$1;->a:Lccsancom/mbridge/msdk/click/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 232
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a$1;->a:Lccsancom/mbridge/msdk/click/g$a;

    iget-object v0, v0, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/g$a$1;->a:Lccsancom/mbridge/msdk/click/g$a;

    iget-object v1, v1, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {v1}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setSuccess(Z)V

    .line 234
    iget-object v1, p0, Lccsancom/mbridge/msdk/click/g$a$1;->a:Lccsancom/mbridge/msdk/click/g$a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/click/g$a;->a(Lccsancom/mbridge/msdk/click/g$a;)V

    .line 235
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 240
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 241
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/g$a$1;->a:Lccsancom/mbridge/msdk/click/g$a;

    iget-object p1, p1, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object p1

    invoke-virtual {p1, p3}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    .line 243
    :cond_0
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 244
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/g$a$1;->a:Lccsancom/mbridge/msdk/click/g$a;

    iget-object p1, p1, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object p1

    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setContent(Ljava/lang/String;)V

    .line 246
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/g$a$1;->a:Lccsancom/mbridge/msdk/click/g$a;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/click/g$a;->a(Lccsancom/mbridge/msdk/click/g$a;Ljava/lang/String;)Z

    .line 247
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/g$a$1;->a()V

    .line 248
    return-void
.end method

.method public final a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 226
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/g$a$1;->a:Lccsancom/mbridge/msdk/click/g$a;

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/click/g$a;->a(Lccsancom/mbridge/msdk/click/g$a;Ljava/lang/String;)Z

    .line 227
    iget-object p1, p0, Lccsancom/mbridge/msdk/click/g$a$1;->a:Lccsancom/mbridge/msdk/click/g$a;

    iget-object p1, p1, Lccsancom/mbridge/msdk/click/g$a;->a:Lccsancom/mbridge/msdk/click/g;

    invoke-static {p1}, Lccsancom/mbridge/msdk/click/g;->d(Lccsancom/mbridge/msdk/click/g;)Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object p1

    invoke-virtual {p1, p3}, Lccsancom/mbridge/msdk/click/CommonJumpLoader$JumpLoaderResult;->setContent(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/g$a$1;->a()V

    .line 229
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 201
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a$1;->a:Lccsancom/mbridge/msdk/click/g$a;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/click/g$a;->a(Lccsancom/mbridge/msdk/click/g$a;Ljava/lang/String;)Z

    move-result p1

    .line 203
    if-eqz p1, :cond_0

    .line 205
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/g$a$1;->a()V

    .line 207
    :cond_0
    return p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 212
    iget-object v0, p0, Lccsancom/mbridge/msdk/click/g$a$1;->a:Lccsancom/mbridge/msdk/click/g$a;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/click/g$a;->a(Lccsancom/mbridge/msdk/click/g$a;Ljava/lang/String;)Z

    move-result p1

    .line 213
    if-eqz p1, :cond_0

    .line 214
    invoke-direct {p0}, Lccsancom/mbridge/msdk/click/g$a$1;->a()V

    .line 216
    :cond_0
    return p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 0

    .line 221
    const/4 p1, 0x0

    return p1
.end method
