.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;
.super Ljava/lang/Object;
.source "MBMediaView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;
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

    .line 841
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissLoading(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 0

    .line 895
    return-void
.end method

.method public final onDownloadFinish(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 0

    .line 892
    return-void
.end method

.method public final onDownloadProgress(I)V
    .locals 0

    .line 889
    return-void
.end method

.method public final onDownloadStart(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 0

    .line 886
    return-void
.end method

.method public final onFinishRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    .line 876
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 877
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->p(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 878
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0, p1, p2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    goto :goto_0

    .line 880
    :catch_0
    move-exception p1

    .line 881
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBMediaView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :goto_0
    return-void
.end method

.method public final onInterceptDefaultLoadingDialog()Z
    .locals 1

    .line 870
    const/4 v0, 0x1

    return v0
.end method

.method public final onRedirectionFailed(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    .line 860
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->o(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 861
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->p(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 862
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0, p1, p2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    goto :goto_0

    .line 863
    :catch_0
    move-exception p1

    .line 864
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBMediaView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :goto_0
    return-void
.end method

.method public final onShowLoading(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 0

    .line 855
    return-void
.end method

.method public final onStartRedirection(Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 1

    .line 845
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->m(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 846
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->n(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 847
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$13;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0, p1, p2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    goto :goto_0

    .line 848
    :catch_0
    move-exception p1

    .line 849
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBMediaView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :goto_0
    return-void
.end method
