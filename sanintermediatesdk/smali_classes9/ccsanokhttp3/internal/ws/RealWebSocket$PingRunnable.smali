.class final Lccsanokhttp3/internal/ws/RealWebSocket$PingRunnable;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanokhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/ws/RealWebSocket;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lccsanokhttp3/internal/ws/RealWebSocket$PingRunnable;->this$0:Lccsanokhttp3/internal/ws/RealWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 529
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket$PingRunnable;->this$0:Lccsanokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lccsanokhttp3/internal/ws/RealWebSocket;->writePingFrame()V

    .line 530
    return-void
.end method
