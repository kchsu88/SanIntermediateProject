.class Lccsancom/mbridge/msdk/out/LoadingActivity$1;
.super Ljava/lang/Object;
.source "LoadingActivity.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/out/LoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/out/LoadingActivity;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/out/LoadingActivity;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity$1;->this$0:Lccsancom/mbridge/msdk/out/LoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    return-void
.end method

.method public onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity$1;->this$0:Lccsancom/mbridge/msdk/out/LoadingActivity;

    invoke-static {v0}, Lccsancom/mbridge/msdk/out/LoadingActivity;->access$000(Lccsancom/mbridge/msdk/out/LoadingActivity;)Lccsanandroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity$1;->this$0:Lccsancom/mbridge/msdk/out/LoadingActivity;

    invoke-static {v0}, Lccsancom/mbridge/msdk/out/LoadingActivity;->access$000(Lccsancom/mbridge/msdk/out/LoadingActivity;)Lccsanandroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 36
    iget-object p2, p0, Lccsancom/mbridge/msdk/out/LoadingActivity$1;->this$0:Lccsancom/mbridge/msdk/out/LoadingActivity;

    invoke-static {p2}, Lccsancom/mbridge/msdk/out/LoadingActivity;->access$000(Lccsancom/mbridge/msdk/out/LoadingActivity;)Lccsanandroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 37
    iget-object p2, p0, Lccsancom/mbridge/msdk/out/LoadingActivity$1;->this$0:Lccsancom/mbridge/msdk/out/LoadingActivity;

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/out/LoadingActivity;->access$102(Lccsancom/mbridge/msdk/out/LoadingActivity;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;

    .line 40
    :cond_0
    return-void
.end method
