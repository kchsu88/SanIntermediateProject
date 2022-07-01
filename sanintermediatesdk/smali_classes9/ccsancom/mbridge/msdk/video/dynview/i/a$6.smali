.class final Lccsancom/mbridge/msdk/video/dynview/i/a$6;
.super Ljava/lang/Object;
.source "DataEnergizeWrapper.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;Lccsanandroid/widget/ImageView;Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/mbridge/msdk/video/dynview/b;

.field final synthetic d:Lccsanandroid/view/View;

.field final synthetic e:Lccsancom/mbridge/msdk/video/dynview/i/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/i/a;Lccsanandroid/widget/ImageView;Ljava/lang/String;Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->e:Lccsancom/mbridge/msdk/video/dynview/i/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->a:Lccsanandroid/widget/ImageView;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->c:Lccsancom/mbridge/msdk/video/dynview/b;

    iput-object p5, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->d:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 249
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->e:Lccsancom/mbridge/msdk/video/dynview/i/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/i/a;->b(Lccsancom/mbridge/msdk/video/dynview/i/a;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->b:Ljava/lang/String;

    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->e:Lccsancom/mbridge/msdk/video/dynview/i/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->c(Lccsancom/mbridge/msdk/video/dynview/i/a;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->e:Lccsancom/mbridge/msdk/video/dynview/i/a;

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->c:Lccsancom/mbridge/msdk/video/dynview/b;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->d:Lccsanandroid/view/View;

    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Lccsancom/mbridge/msdk/video/dynview/i/a;Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;)V

    .line 251
    return-void
.end method

.method public final onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 238
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->a:Lccsanandroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 239
    invoke-virtual {p2, p1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 240
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->e:Lccsancom/mbridge/msdk/video/dynview/i/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/dynview/i/a;->b(Lccsancom/mbridge/msdk/video/dynview/i/a;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 241
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->e:Lccsancom/mbridge/msdk/video/dynview/i/a;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/dynview/i/a;->b(Lccsancom/mbridge/msdk/video/dynview/i/a;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->b:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->e:Lccsancom/mbridge/msdk/video/dynview/i/a;

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->c:Lccsancom/mbridge/msdk/video/dynview/b;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$6;->d:Lccsanandroid/view/View;

    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Lccsancom/mbridge/msdk/video/dynview/i/a;Lccsancom/mbridge/msdk/video/dynview/b;Lccsanandroid/view/View;)V

    .line 245
    :cond_0
    return-void
.end method
