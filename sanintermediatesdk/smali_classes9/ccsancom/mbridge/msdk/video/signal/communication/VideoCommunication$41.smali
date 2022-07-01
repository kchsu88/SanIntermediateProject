.class final Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$41;
.super Ljava/lang/Object;
.source "VideoCommunication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->webviewGoBack(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$41;->c:Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$41;->a:Ljava/lang/Object;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$41;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 652
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$41;->c:Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$41;->a:Ljava/lang/Object;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$41;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->T(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    return-void
.end method
