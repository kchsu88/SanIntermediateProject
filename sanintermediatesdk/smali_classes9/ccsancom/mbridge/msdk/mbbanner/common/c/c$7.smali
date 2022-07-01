.class final Lccsancom/mbridge/msdk/mbbanner/common/c/c$7;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


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

    .line 296
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$7;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 1

    .line 299
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$7;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;F)F

    .line 300
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$7;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b(Lccsancom/mbridge/msdk/mbbanner/common/c/c;F)F

    .line 301
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$7;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->j(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$7;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->k(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 p1, 0x0

    return p1
.end method
