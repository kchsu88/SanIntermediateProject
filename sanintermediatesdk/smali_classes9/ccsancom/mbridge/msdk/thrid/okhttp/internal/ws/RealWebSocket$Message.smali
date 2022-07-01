.class final Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Message;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field final data:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

.field final formatOpcode:I


# direct methods
.method constructor <init>(ILccsancom/mbridge/msdk/thrid/okio/ByteString;)V
    .locals 0
    .param p1, "formatOpcode"    # I
    .param p2, "data"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 583
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Message;->data:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 584
    return-void
.end method
