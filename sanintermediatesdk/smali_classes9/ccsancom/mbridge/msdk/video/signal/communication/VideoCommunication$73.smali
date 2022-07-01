.class final Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$73;
.super Ljava/lang/Object;
.source "VideoCommunication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->getRewardUnitSetting(Ljava/lang/Object;Ljava/lang/String;)V
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

    .line 1056
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$73;->c:Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$73;->a:Ljava/lang/Object;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$73;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1059
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$73;->c:Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$73;->a:Ljava/lang/Object;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication$73;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;->aw(Lccsancom/mbridge/msdk/video/signal/communication/VideoCommunication;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    return-void
.end method
