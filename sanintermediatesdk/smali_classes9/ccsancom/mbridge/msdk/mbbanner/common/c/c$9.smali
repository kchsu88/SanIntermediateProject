.class final Lccsancom/mbridge/msdk/mbbanner/common/c/c$9;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$9;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 334
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$9;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    const-string p2, "banner show failed because banner default view is exception"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public final onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 323
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$9;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p2}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->l(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsanandroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 324
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$9;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p2}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->l(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsanandroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 326
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$9;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Z)Z

    .line 327
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$9;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->m(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    .line 328
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$9;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->d(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    .line 329
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$9;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    .line 330
    return-void
.end method
