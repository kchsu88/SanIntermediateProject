.class public interface abstract Lccsancom/mbridge/msdk/thrid/okhttp/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/Call$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clone()Lccsancom/mbridge/msdk/thrid/okhttp/Call;
.end method

.method public abstract enqueue(Lccsancom/mbridge/msdk/thrid/okhttp/Callback;)V
.end method

.method public abstract execute()Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isExecuted()Z
.end method

.method public abstract request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;
.end method

.method public abstract timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
.end method
