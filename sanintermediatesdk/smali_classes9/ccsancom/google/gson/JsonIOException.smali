.class public final Lccsancom/google/gson/JsonIOException;
.super Lccsancom/google/gson/JsonParseException;
.source "JsonIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lccsancom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 33
    invoke-direct {p0, p1, p2}, Lccsancom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 43
    invoke-direct {p0, p1}, Lccsancom/google/gson/JsonParseException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method
