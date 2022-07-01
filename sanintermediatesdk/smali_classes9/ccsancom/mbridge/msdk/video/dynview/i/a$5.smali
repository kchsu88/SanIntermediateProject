.class final Lccsancom/mbridge/msdk/video/dynview/i/a$5;
.super Ljava/lang/Object;
.source "DataEnergizeWrapper.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/i/a;->a(Ljava/lang/String;Lccsanandroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/widget/ImageView;

.field final synthetic b:Lccsancom/mbridge/msdk/video/dynview/i/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/i/a;Lccsanandroid/widget/ImageView;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$5;->b:Lccsancom/mbridge/msdk/video/dynview/i/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$5;->a:Lccsanandroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 229
    const-string p1, "NATVIEW"

    const-string p2, ""

    invoke-static {p1, p2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public final onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 222
    if-eqz p1, :cond_0

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/i/a$5;->a:Lccsanandroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 223
    invoke-virtual {p2, p1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 225
    :cond_0
    return-void
.end method
