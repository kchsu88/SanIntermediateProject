.class final Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$1;
.super Ljava/lang/Object;
.source "MBMoreOfferAdapter.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->onBindViewHolder(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;

.field final synthetic b:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$1;->b:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$1;->a:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 79
    return-void
.end method

.method public final onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 68
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$1;->a:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;

    iget-object p2, p2, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$b;->a:Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/video/dynview/widget/MBridgeImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 69
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$1;->b:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->access$008(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;)I

    .line 70
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$1;->b:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->access$100(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$1;->b:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->access$000(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;)I

    move-result p1

    const/4 p2, 0x5

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$1;->b:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->access$200(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;)Lccsancom/mbridge/msdk/video/dynview/endcard/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$1;->b:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->access$102(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;Z)Z

    .line 72
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter$1;->b:Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;->access$200(Lccsancom/mbridge/msdk/video/dynview/endcard/adapter/MBMoreOfferAdapter;)Lccsancom/mbridge/msdk/video/dynview/endcard/b;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/video/dynview/endcard/b;->a()V

    .line 74
    :cond_0
    return-void
.end method
