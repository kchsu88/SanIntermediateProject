.class final Lccsancom/mbridge/msdk/widget/MBImageView$1;
.super Ljava/lang/Object;
.source "MBImageView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/widget/MBImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/widget/MBImageView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/widget/MBImageView;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lccsancom/mbridge/msdk/widget/MBImageView$1;->a:Lccsancom/mbridge/msdk/widget/MBImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    return-void
.end method

.method public final onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 49
    iget-object p2, p0, Lccsancom/mbridge/msdk/widget/MBImageView$1;->a:Lccsancom/mbridge/msdk/widget/MBImageView;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/widget/MBImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 50
    return-void
.end method
