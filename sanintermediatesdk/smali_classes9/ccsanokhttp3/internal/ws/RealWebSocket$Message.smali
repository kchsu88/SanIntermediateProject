.class final Lccsanokhttp3/internal/ws/RealWebSocket$Message;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field final data:Lccsanokio/ByteString;

.field final formatOpcode:I


# direct methods
.method constructor <init>(ILccsanokio/ByteString;)V
    .locals 0
    .param p1, "formatOpcode"    # I
    .param p2, "data"    # Lccsanokio/ByteString;

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput p1, p0, Lccsanokhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 582
    iput-object p2, p0, Lccsanokhttp3/internal/ws/RealWebSocket$Message;->data:Lccsanokio/ByteString;

    .line 583
    return-void
.end method
