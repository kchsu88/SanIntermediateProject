.class public Lccsancom/google/android/exoplayer2/source/UnrecognizedInputFormatException;
.super Lccsancom/google/android/exoplayer2/ParserException;
.source "UnrecognizedInputFormatException.java"


# instance fields
.field public final uri:Lccsanandroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "uri"    # Lccsanandroid/net/Uri;

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lccsancom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 34
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/source/UnrecognizedInputFormatException;->uri:Lccsanandroid/net/Uri;

    .line 35
    return-void
.end method
