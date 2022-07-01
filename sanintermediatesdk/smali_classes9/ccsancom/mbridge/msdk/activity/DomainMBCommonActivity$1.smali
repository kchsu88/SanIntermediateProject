.class final Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity$1;
.super Ljava/lang/Object;
.source "DomainMBCommonActivity.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity$1;->a:Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 71
    iget-object v0, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity$1;->a:Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->finish()V

    .line 72
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 0

    .line 75
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBCommonActivity"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity$1;->a:Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity$1;->a:Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->finish()V

    .line 85
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity$1;->a:Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;

    invoke-static {v0, p1, p2}, Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;->a(Lccsancom/mbridge/msdk/activity/DomainMBCommonActivity;Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
