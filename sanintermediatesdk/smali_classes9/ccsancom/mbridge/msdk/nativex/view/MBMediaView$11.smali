.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;
.super Ljava/lang/Object;
.source "MBMediaView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 765
    return-void
.end method

.method public final onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .line 769
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->k(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->l(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    move-result-object v0

    sget-object v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v0, v1, :cond_1

    .line 771
    if-eqz p1, :cond_0

    .line 772
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;I)I

    .line 773
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;I)I

    .line 774
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->k(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setImageUrl(Ljava/lang/String;)V

    .line 775
    iget-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->k(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 778
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->k(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    move-result-object p1

    new-instance p2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11$1;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11$1;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView$11;)V

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 789
    :cond_1
    return-void
.end method
