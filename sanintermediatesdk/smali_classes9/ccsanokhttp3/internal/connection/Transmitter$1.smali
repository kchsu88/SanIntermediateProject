.class Lccsanokhttp3/internal/connection/Transmitter$1;
.super Lccsanokio/AsyncTimeout;
.source "Transmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/connection/Transmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanokhttp3/internal/connection/Transmitter;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/connection/Transmitter;)V
    .locals 0
    .param p1, "this$0"    # Lccsanokhttp3/internal/connection/Transmitter;

    .line 59
    iput-object p1, p0, Lccsanokhttp3/internal/connection/Transmitter$1;->this$0:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-direct {p0}, Lccsanokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected timedOut()V
    .locals 1

    .line 61
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Transmitter$1;->this$0:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/Transmitter;->cancel()V

    .line 62
    return-void
.end method
