.class final Lccsancom/mbridge/msdk/mbbanner/common/c/c$5;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbbanner/common/c/c;
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

    .line 114
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$5;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$5;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$5;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    .line 120
    :cond_0
    return-void
.end method
