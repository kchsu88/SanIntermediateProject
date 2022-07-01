.class final Lccsancom/mbridge/msdk/mbbanner/common/c/c$2;
.super Ljava/lang/Object;
.source "BannerShowManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/out/NativeListener$TrackingExListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbbanner/common/c/c;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
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

    .line 683
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissLoading(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 0

    .line 697
    return-void
.end method

.method public final onDownloadFinish(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 0

    .line 722
    return-void
.end method

.method public final onDownloadProgress(I)V
    .locals 0

    .line 727
    return-void
.end method

.method public final onDownloadStart(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 0

    .line 717
    return-void
.end method

.method public final onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    .line 707
    return-void
.end method

.method public final onInterceptDefaultLoadingDialog()Z
    .locals 1

    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public final onLeaveApp()V
    .locals 1

    .line 731
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/c$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/c;->g(Lccsancom/mbridge/msdk/mbbanner/common/c/c;)Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->b()V

    .line 734
    :cond_0
    return-void
.end method

.method public final onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    .line 712
    return-void
.end method

.method public final onShowLoading(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 0

    .line 692
    return-void
.end method

.method public final onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    .line 702
    return-void
.end method
