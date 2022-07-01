.class final Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$4;
.super Ljava/lang/Object;
.source "BannerExpandDialog.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$4;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 229
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$4;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->dismiss()V

    .line 230
    return-void
.end method

.method public final expand(Ljava/lang/String;Z)V
    .locals 0

    .line 252
    return-void
.end method

.method public final open(Ljava/lang/String;)V
    .locals 6

    .line 210
    const-string v0, "BannerExpandDialog"

    :try_start_0
    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x0

    .line 212
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$4;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-static {v2}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 213
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    new-instance v4, Lccsanandroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    .line 214
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    invoke-virtual {v2, v4}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    move-object p1, v1

    goto :goto_0

    .line 216
    :cond_0
    nop

    .line 219
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$4;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->b(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$4;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->b(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    move-result-object v1

    invoke-interface {v1, v3, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/a;->a(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_1
    goto :goto_1

    .line 222
    :catchall_0
    move-exception p1

    .line 223
    const-string v1, "open"

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :goto_1
    return-void
.end method

.method public final unload()V
    .locals 0

    .line 234
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$4;->close()V

    .line 235
    return-void
.end method

.method public final useCustomClose(Z)V
    .locals 2

    .line 245
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$4;->a:Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->f(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsanandroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    goto :goto_1

    .line 246
    :catchall_0
    move-exception p1

    .line 247
    const-string v0, "BannerExpandDialog"

    const-string v1, "useCustomClose"

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    :goto_1
    return-void
.end method
