.class final Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$2;
.super Ljava/lang/Object;
.source "RewardSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;->install(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$2;->c:Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 33
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$2;->c:Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$2;->a:Ljava/lang/Object;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;->b(Lccsancom/mbridge/msdk/video/signal/communication/RewardSignal;Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    return-void
.end method
