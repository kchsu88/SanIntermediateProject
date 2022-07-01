.class public interface abstract Lccsanokhttp3/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanokhttp3/Call$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clone()Lccsanokhttp3/Call;
.end method

.method public abstract enqueue(Lccsanokhttp3/Callback;)V
.end method

.method public abstract execute()Lccsanokhttp3/Response;
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

.method public abstract request()Lccsanokhttp3/Request;
.end method

.method public abstract timeout()Lccsanokio/Timeout;
.end method
