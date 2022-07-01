.class final Lccsancom/mbridge/msdk/videocommon/download/g$3;
.super Ljava/lang/Object;
.source "H5DownLoadManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/videocommon/download/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/videocommon/download/g$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/mbridge/msdk/videocommon/download/g;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/videocommon/download/g;Lccsancom/mbridge/msdk/videocommon/download/g$a;Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$3;->c:Lccsancom/mbridge/msdk/videocommon/download/g;

    iput-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/g$3;->a:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    iput-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/g$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadComplete(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 1

    .line 335
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$3;->a:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$3;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method public final onDownloadError(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V
    .locals 1

    .line 342
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/g$3;->a:Lccsancom/mbridge/msdk/videocommon/download/g$a;

    if-eqz p1, :cond_0

    .line 343
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/g$3;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadError;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lccsancom/mbridge/msdk/videocommon/download/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    return-void
.end method

.method public final onDownloadStart(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 0

    .line 331
    return-void
.end method
