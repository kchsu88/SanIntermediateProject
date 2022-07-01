.class final Lccsancom/mbridge/msdk/mbbanner/common/c/c$3;
.super Lccsancom/mbridge/msdk/mbsignalcommon/b/b;
.source "BannerShowManager.java"


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

    .line 762
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 778
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1, p3}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Ljava/lang/String;)V

    .line 779
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    const/4 p2, 0x2

    invoke-static {p1, p3, p2}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Ljava/lang/String;I)V

    .line 780
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 765
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->b(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Z)Z

    .line 767
    nop

    .line 1022
    const-string p2, "BannerCallJS"

    const-string v1, "fireOnSignalCommunication"

    invoke-static {p2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;)V

    .line 768
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->c(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Z)Z

    .line 770
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isHasMBTplMark()Z

    move-result p1

    if-nez p1, :cond_0

    .line 771
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->e(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)V

    .line 772
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$3;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    const-string p2, ""

    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/c;Ljava/lang/String;I)V

    .line 774
    :cond_0
    return-void
.end method
