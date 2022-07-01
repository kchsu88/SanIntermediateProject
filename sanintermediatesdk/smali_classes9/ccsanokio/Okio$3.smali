.class final Lccsanokio/Okio$3;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lccsanokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokio/Okio;->blackhole()Lccsanokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    return-void
.end method

.method public timeout()Lccsanokio/Timeout;
    .locals 1

    .line 208
    sget-object v0, Lccsanokio/Timeout;->NONE:Lccsanokio/Timeout;

    return-object v0
.end method

.method public write(Lccsanokio/Buffer;J)V
    .locals 0
    .param p1, "source"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-virtual {p1, p2, p3}, Lccsanokio/Buffer;->skip(J)V

    .line 202
    return-void
.end method
