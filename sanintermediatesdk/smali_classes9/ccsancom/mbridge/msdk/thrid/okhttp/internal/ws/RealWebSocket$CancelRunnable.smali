.class final Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$CancelRunnable;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CancelRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    .line 611
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$CancelRunnable;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 613
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$CancelRunnable;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->cancel()V

    .line 614
    return-void
.end method
