.class public interface abstract Lccsancom/vungle/warren/network/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract enqueue(Lccsancom/vungle/warren/network/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/network/Callback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract execute()Lccsancom/vungle/warren/network/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
