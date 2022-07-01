.class final Lccsanokhttp3/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field final cancelAfterCloseMillis:J

.field final code:I

.field final reason:Lccsanokio/ByteString;


# direct methods
.method constructor <init>(ILccsanokio/ByteString;J)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "reason"    # Lccsanokio/ByteString;
    .param p3, "cancelAfterCloseMillis"    # J

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput p1, p0, Lccsanokhttp3/internal/ws/RealWebSocket$Close;->code:I

    .line 593
    iput-object p2, p0, Lccsanokhttp3/internal/ws/RealWebSocket$Close;->reason:Lccsanokio/ByteString;

    .line 594
    iput-wide p3, p0, Lccsanokhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    .line 595
    return-void
.end method
