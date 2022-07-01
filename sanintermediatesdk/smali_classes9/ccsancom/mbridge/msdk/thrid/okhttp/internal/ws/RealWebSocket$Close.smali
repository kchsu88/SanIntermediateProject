.class final Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field final cancelAfterCloseMillis:J

.field final code:I

.field final reason:Lccsancom/mbridge/msdk/thrid/okio/ByteString;


# direct methods
.method constructor <init>(ILccsancom/mbridge/msdk/thrid/okio/ByteString;J)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "reason"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .param p3, "cancelAfterCloseMillis"    # J

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;->code:I

    .line 594
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;->reason:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 595
    iput-wide p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    .line 596
    return-void
.end method
