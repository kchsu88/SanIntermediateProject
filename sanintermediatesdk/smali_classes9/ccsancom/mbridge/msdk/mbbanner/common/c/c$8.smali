.class final Lccsancom/mbridge/msdk/mbbanner/common/c/c$8;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


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

    .line 306
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$8;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 1

    .line 309
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$8;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    .line 310
    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->j(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)F

    move-result p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$8;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->k(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)F

    move-result v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(FF)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$8;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->h(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    .line 309
    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/util/BannerUtils;->managerCampaignEX(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    .line 311
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$8;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 313
    return-void
.end method
