.class public interface abstract Lccsancom/mbridge/msdk/thrid/okio/Source;
.super Ljava/lang/Object;
.source "Source.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
.end method
