.class public final Lccsancom/google/android/exoplayer2/database/DatabaseIOException;
.super Ljava/io/IOException;
.source "DatabaseIOException.java"


# direct methods
.method public constructor <init>(Lccsanandroid/database/SQLException;)V
    .locals 0
    .param p1, "cause"    # Lccsanandroid/database/SQLException;

    .line 25
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lccsanandroid/database/SQLException;Ljava/lang/String;)V
    .locals 0
    .param p1, "cause"    # Lccsanandroid/database/SQLException;
    .param p2, "message"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method
